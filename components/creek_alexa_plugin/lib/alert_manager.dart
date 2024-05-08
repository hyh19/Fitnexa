import 'dart:convert';

import 'package:creek_alexa_plugin/authorization_manager.dart';
import 'package:creek_alexa_plugin/directive_handler.dart';
import 'package:creek_alexa_plugin/event_data_handler.dart';
import 'package:creek_alexa_plugin/device_info_handler.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:creek_blue_manage/alexa/creek_alexa_protocol.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlertDataModel {
  int? index;
  dynamic item;
  String? token;
  String? type;
  String? scheduledTime;

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'item': itemToJsonString(),
      'token': token,
      'type': type,
      'scheduledTime': scheduledTime,
    };
  }

  fromString(String string) {
    Map<String, dynamic> map = json.decode(string);
    index = map['index'];
    token = map['token'];
    type = map['type'];
    scheduledTime = map['scheduledTime'];
    item = itemFromString(map);
  }

  String itemToJsonString() {
    if (type == 'ALARM') {
      alexa_alarm_item target = item as alexa_alarm_item;
      return json.encode({
        'year': target.year,
        'month': target.month,
        'day': target.day,
        'hour': target.hour,
        'minute': target.minute,
        'switchFlag': target.switchFlag,
        'repeat': target.repeat,
      });
    } else if (type == 'REMINDER') {
      alexa_reminder_item target = item as alexa_reminder_item;
      return json.encode({
        'year': target.year,
        'month': target.month,
        'day': target.day,
        'hour': target.hour,
        'minute': target.minute,
        'content': target.content,
      });
    } else if (type == 'TIMER') {
      alexa_timer_item target = item as alexa_timer_item;
      return json.encode({
        'index': target.index,
        'timerSec': target.timerSec,
      });
    } else {
      return '';
    }
  }

  dynamic itemFromString(Map<String, dynamic> map) {
    if (type == 'ALARM') {
      alexa_alarm_item target = alexa_alarm_item();
      target.year = map['item']['year'];
      target.month = map['item']['month'];
      target.day = map['item']['day'];
      target.hour = map['item']['hour'];
      target.minute = map['item']['minute'];
      target.switchFlag = map['item']['switchFlag'];
      target.repeat.addAll(map['item']['repeat']);
      return target;
    } else if (type == 'REMINDER') {
      alexa_reminder_item target = alexa_reminder_item();
      target.year = map['item']['year'];
      target.month = map['item']['month'];
      target.day = map['item']['day'];
      target.hour = map['item']['hour'];
      target.minute = map['item']['minute'];
      target.content = map['item']['content'];
      return target;
    } else if (type == 'TIMER') {
      alexa_timer_item target = alexa_timer_item();
      target.index = map['item']['index'];
      target.timerSec = map['item']['timerSec'];
      return target;
    } else {
      return null;
    }
  }
}

class AlertManager {
  static List<AlertDataModel> alarmList = [];
  static List<AlertDataModel> timerList = [];
  static List<AlertDataModel> reminderList = [];
  static Map<String, AlertDataModel> alertsMap = {};

  static void reportTimeZone() {
    DeviceInfoHandler.getTimeZoneName((timeZone) {
      Map<String, dynamic> reqData = {
        'timeZone': timeZone,
      };
      AuthorizationManager().model.timeZone = timeZone;
      DirectiveHandler.processEvent(EventType.timeZoneReport, reqData: reqData,
          (data) {
        if (data.$1 == 204) {
          LoggerHandler.log(LogType.info, '时区上报成功');
        } else {
          LoggerHandler.log(LogType.info, '时区上报失败');
        }
      });
    });
  }

  static void changeTimeZone() {
    DeviceInfoHandler.getTimeZoneName((timeZone) {
      Map<String, dynamic> reqData = {
        'timeZone': timeZone,
      };
      AuthorizationManager().model.timeZone = timeZone;
      DirectiveHandler.processEvent(EventType.timeZoneChanged, reqData: reqData,
          (data) {
        if (data.$1 == 204) {
          LoggerHandler.log(LogType.info, '时区修改成功');
        } else {
          LoggerHandler.log(LogType.info, '时区修改失败');
        }
      });
    });
  }

  static void getAllAlertsList(Function(List<dynamic>) callBack) async {
    LoggerHandler.log(LogType.info, '获取本地所有AlertData');
    List<AlertDataModel> alarmData = await getAlertLocalData('ALARM') ?? [];
    List<AlertDataModel> timerData = await getAlertLocalData('TIMER') ?? [];
    List<AlertDataModel> reminderData =
        await getAlertLocalData('REMINDER') ?? [];

    List<Map<String, String>> allAlerts = [];
    List<Map<String, String>> activeAlerts = [];
    final list = [];

    if (alarmData.isNotEmpty) {
      getAlarmList((data) {
        if (data.isNotEmpty) {
          alertDataCompare(alarmData, data, 'ALARM', false,
              (allAlarm, activeAlarm, resAlarm, tokens) {
            allAlerts.addAll(allAlarm);
            activeAlerts.addAll(activeAlarm);
            alertsMapDataConfig(resAlarm);
            alarmList = resAlarm;
            setAlarmList(null, (isDel) {});
          });
        } else {
          for (AlertDataModel model in alarmData) {
            final alertMap = getAlertMap(model);
            allAlerts.add(alertMap);
          }
          LoggerHandler.log(LogType.info, '本地闹钟为空  删除远端闹钟');
        }
      });
    } else {
      alarmList = [];
      alertsMapDataConfig(alarmList);
      setAlarmList(null, (isDel) {});
      LoggerHandler.log(LogType.info, '远端闹钟为空  删除本地闹钟');
    }

    for (AlertDataModel model in timerData) {
      final alertMap = getAlertMap(model);
      allAlerts.add(alertMap);
    }
    timerList = [];
    alertsMapDataConfig(timerList);
    deleteAllTimer((isSucceed) {});
    LoggerHandler.log(LogType.info, '清空远端计时器  删除本地计时器');

    if (reminderData.isNotEmpty) {
      getReminderList((data) {
        if (data.isNotEmpty) {
          alertDataCompare(reminderData, data, 'REMINDER', false,
              (allReminder, activeReminder, resReminder, tokens) {
            allAlerts.addAll(allReminder);
            activeAlerts.addAll(activeReminder);
            reminderList = resReminder;
            alertsMapDataConfig(resReminder);
            setReminderList(null, (isDel) {});
          });
        } else {
          for (AlertDataModel model in reminderData) {
            final alertMap = getAlertMap(model);
            allAlerts.add(alertMap);
          }
          LoggerHandler.log(LogType.info, '本地提醒为空  删除远端提醒');
        }
      });
    } else {
      reminderList = [];
      alertsMapDataConfig(reminderList);
      setReminderList(null, (isDel) {});
      LoggerHandler.log(LogType.info, '远端提醒为空  删除本地提醒');
    }
    list.add(allAlerts);
    list.add(activeAlerts);
    LoggerHandler.log(LogType.info,
        '获取本地所有AlertData成功  $allAlerts  activeAlerts  $activeAlerts');
    callBack(list);
  }

  static void setOneAlarm(AlertDataModel dataModel) {
    alarmList.add(dataModel);
    alertsMapDataConfig(alarmList);
    //存本地
    setAlertLocalData('ALARM');
    LoggerHandler.log(LogType.info, 'ALARM保存本地成功');
    setAlarmList(dataModel, (isDel) {});
  }

  static void setAlarmList(AlertDataModel? dataModel, Function(bool) callback,
      {List<AlertDataModel>? tempList}) {
    //获取本地数组
    List<alexa_alarm_item> items = [];

    //tempList 为空时
    if (tempList == null) {
      for (final data in alarmList) {
        alexa_alarm_item item = data.item ?? alexa_alarm_item();
        items.add(item);
      }
    } else {
      for (final data in tempList) {
        alexa_alarm_item item = data.item ?? alexa_alarm_item();
        items.add(item);
      }
    }

    protocol_alexa_alarm_operate operate = protocol_alexa_alarm_operate();
    operate.alarmItem.addAll(items);
    LoggerHandler.log(LogType.info, 'ALARM调用固件接口');
    alexaProtocol.setAlexaAlarm(
        operate: operate,
        callBack: () {
          LoggerHandler.log(LogType.info, '固件设置闹钟成功');
          if (dataModel != null) {
            AlertManager.setAlertSucceeded(dataModel.token ?? '', (data) {
              LoggerHandler.log(LogType.info, 'setAlertSucceeded 上报');
            });
          }
          callback(true);
          print('固件设置闹钟成功');
        },
        errCallBack: (error) {
          LoggerHandler.log(LogType.error, '固件设置闹钟失败 $error');
          if (dataModel != null) {
            AlertManager.setAlertFailed(dataModel.token ?? '', (data) {
              LoggerHandler.log(LogType.info, 'setAlertFailed 上报');
            });
          }
          callback(false);
          print('固件设置闹钟失败');
        });
  }

  static void setOneReminder(AlertDataModel dataModel) {
    reminderList.add(dataModel);
    alertsMapDataConfig(reminderList);
    //存本地
    setAlertLocalData('REMINDER');
    LoggerHandler.log(LogType.info, 'REMINDER保存本地成功');
    setReminderList(dataModel, (isDel) {});
  }

  static void setReminderList(
      AlertDataModel? dataModel, Function(bool) callback,
      {List<AlertDataModel>? tempList}) {
    //获取本地数组
    List<alexa_reminder_item> items = [];
    if (tempList == null) {
      for (final data in reminderList) {
        alexa_reminder_item item = data.item ?? alexa_reminder_item();
        items.add(item);
      }
    } else {
      for (final data in tempList) {
        alexa_reminder_item item = data.item ?? alexa_reminder_item();
        items.add(item);
      }
    }

    LoggerHandler.log(LogType.info, 'REMINDER调用固件接口');
    protocol_alexa_reminder_operate operate = protocol_alexa_reminder_operate();
    operate.reminderItem.addAll(items);

    alexaProtocol.setAlexaReminder(
        operate: operate,
        callBack: () {
          LoggerHandler.log(LogType.info, '固件设置提醒成功');
          if (dataModel != null) {
            AlertManager.setAlertSucceeded(dataModel.token ?? '', (data) {
              LoggerHandler.log(LogType.info, 'setAlertSucceeded 上报');
            });
          }
          callback(true);
          print('固件设置提醒成功');
        },
        errCallBack: (error) {
          LoggerHandler.log(LogType.error, '固件设置提醒失败 $error');
          if (dataModel != null) {
            AlertManager.setAlertFailed(dataModel.token ?? '', (data) {
              LoggerHandler.log(LogType.info, 'setAlertFailed 上报');
            });
          }
          callback(false);
          print('固件设置提醒失败');
        });
  }

  static void deleteAllTimer(Function(bool) callBack) {
    protocol_alexa_timer_operate operate = protocol_alexa_timer_operate();
    operate.timerOperate = alexa_timer_operate.TIMER_DELETE_ALL;
    alexaProtocol.setAlexaTime(
        operate: operate,
        callBack: () {
          LoggerHandler.log(LogType.info, '固件清除所有计时器成功');
          print('固件清除所有计时器成功');
          callBack(true);
        },
        errCallBack: (error) {
          LoggerHandler.log(LogType.error, '固件清除所有计时器失败 $error');
          print('固件清除所有计时器失败');
          callBack(false);
        });
  }

  static void setOneTimer(
      AlertDataModel dataModel, DateTime currentDateTime, DateTime dateTime) {
    int dif = dateTime.millisecondsSinceEpoch ~/ 1000 -
        currentDateTime.millisecondsSinceEpoch ~/ 1000;
    String info =
        '设置时间 ${dateTime.millisecondsSinceEpoch ~/ 1000} 现在时间 ${currentDateTime.millisecondsSinceEpoch ~/ 1000}';
    print(info);
    LoggerHandler.log(LogType.info, info);

    protocol_alexa_timer_operate operate = protocol_alexa_timer_operate();

    LoggerHandler.log(LogType.info, 'TIMER轮询获取空闲状态的箱子');
    AlertManager.getTimerList((data) {
      LoggerHandler.log(LogType.info, 'TIMER 获取到固件的计时器');
      if (data.isNotEmpty) {
        for (int k = 0; k < data.length; k++) {
          alexa_timer_item item = data[k];
          print('item 的  timerSec ${item.timerSec} index  ${item.index}');
          if (item.timerSec == 0) {
            print('开始设置计时器参数');
            operate.timerSec = dif;
            operate.index = item.index;
            dataModel.index = item.index;

            dataModel.item = item;
            LoggerHandler.log(LogType.info, '固件计时器index  ${item.index}');

            break;
          }
        }
      }

      if (dataModel.index == null) {
        print('手表计时器满了 无法添加');
        LoggerHandler.log(LogType.info, '手表计时器满了 无法添加');
        return;
      }

      timerList.add(dataModel);
      alertsMapDataConfig(timerList);
      //存本地
      setAlertLocalData('TIMER');
      LoggerHandler.log(LogType.info, 'TIMER保存本地成功');

      LoggerHandler.log(LogType.info, 'TIMER调用固件接口');
      alexaProtocol.setAlexaTime(
          operate: operate,
          callBack: () {
            LoggerHandler.log(LogType.info, '固件设置计时器成功');
            print('固件设置计时器成功');
            AlertManager.setAlertSucceeded(dataModel.token ?? '', (data) {
              LoggerHandler.log(LogType.info, 'setAlertSucceeded 上报');
            });
          },
          errCallBack: (error) {
            LoggerHandler.log(LogType.error, '固件设置计时器失败 $error');
            AlertManager.setAlertFailed(dataModel.token ?? '', (data) {
              LoggerHandler.log(LogType.info, 'setAlertFailed 上报');
            });
            print('固件设置计时器失败');
          });
    });
  }

  static void deleteAlert(List<String> alertTokens) {
    bool isDeleted = false;
    List<AlertDataModel> tempList = [];
    List<AlertDataModel> delList = [];
    String type = '';
    for (final token in alertTokens) {
      AlertDataModel? model = alertsMap[token];
      if (model != null) {
        delList.add(model);
      }
    }

    if (delList.isNotEmpty) {
      type = delList.first.type ?? '';
      if (type == 'TIMER') {
        tempList = timerList;
      } else if (type == 'REMINDER') {
        tempList = reminderList;
      } else if (type == 'ALARM') {
        tempList = alarmList;
      }

      for (final target in delList) {
        tempList.remove(target);
      }

      if (type == 'TIMER') {
        if (alertTokens.length > 2) {
          deleteAllTimer((isSucceed) {
            if (isSucceed) {
              timerList = tempList;
              alertsMapDataConfig(tempList);
            }
          });
        } else {
          int count = 0;
          for (final alertToken in alertTokens) {
            for (AlertDataModel model in tempList) {
              if (model.token == alertToken) {
                tempList.remove(model);

                protocol_alexa_timer_operate operate =
                    protocol_alexa_timer_operate();
                operate.timerSec = 0;
                operate.index = model.index ?? 0;

                alexaProtocol.setAlexaTime(
                    operate: operate,
                    callBack: () {
                      count = count + 1;
                      print('删除计时器成功');
                      LoggerHandler.log(LogType.info, '删除计时器成功');
                    },
                    errCallBack: (error) {
                      print('删除计时器失败');
                      LoggerHandler.log(LogType.error, '删除计时器失败 $error');
                    });
              }
            }
          }

          if (count == alertTokens.length) {
            isDeleted = true;
            timerList = tempList;
            alertsMapDataConfig(tempList);
          }
        }
      } else if (type == 'REMINDER') {
        setReminderList(null, tempList: tempList, (isDel) {
          isDeleted = isDel;
          if (isDel) {
            reminderList = tempList;
            alertsMapDataConfig(tempList);
          }
        });
      } else if (type == 'ALARM') {
        setAlarmList(null, tempList: tempList, (isDel) {
          isDeleted = isDel;
          if (isDel) {
            alarmList = tempList;
            alertsMapDataConfig(tempList);
          }
        });
      }
    }

    if (isDeleted) {
      setAlertLocalData(type);
      if (alertTokens.length == 1) {
        AlertManager.deleteAlertSucceeded(alertTokens.first, (data) {
          LoggerHandler.log(LogType.info, 'deleteAlertSucceeded 上报');
        });
      } else if (alertTokens.length > 1) {
        AlertManager.deleteAlertsSucceeded(alertTokens, (data) {
          LoggerHandler.log(LogType.info, 'deleteAlertsSucceeded 上报');
        });
      }
    } else {
      if (alertTokens.length == 1) {
        AlertManager.deleteAlertFailed(alertTokens.first, (data) {
          LoggerHandler.log(LogType.info, 'deleteAlertFailed 上报');
        });
      } else if (alertTokens.length > 1) {
        AlertManager.deleteAlertsFailed(alertTokens, (data) {
          LoggerHandler.log(LogType.info, 'deleteAlertsFailed 上报');
        });
      }
    }
  }

  static void setAlertLocalData(String type) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String jsonString = '';
      if (type == 'ALARM') {
        jsonString = json.encode(alarmList);
      } else if (type == 'REMINDER') {
        jsonString = json.encode(reminderList);
      } else if (type == 'TIMER') {
        jsonString = json.encode(timerList);
      }
      String info = 'SET JSONstring $jsonString';
      print(info);
      LoggerHandler.log(LogType.info, 'SET JSONstring $jsonString');
      String key = 'Alexa${type}List';
      prefs.setString(key, jsonString);
      print('$type List 存本地');
      LoggerHandler.log(LogType.info, '$type List 存本地');
    } catch (error, stackTrace) {
      print('$type List 存本地错误');
      LoggerHandler.log(LogType.error, 'List 存本地错误',
          error: error, stackTrace: stackTrace);
      print('${error.toString()}, stack: $stackTrace');
    }
  }

  static Future<List<AlertDataModel>?> getAlertLocalData(String type) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String key = 'Alexa${type}List';
    String jsonString = prefs.getString(key) ?? '';
    if (jsonString.isEmpty) {
      LoggerHandler.log(LogType.info, '$type List 读取本地 本地为空');
      return null;
    }
    print('GET JSONstring $jsonString');
    LoggerHandler.log(LogType.info, 'GET JSONstring $jsonString');
    try {
      List<dynamic> dataList = json.decode(jsonString);
      print('dataList == ${dataList.toString()}');
      if (dataList.isNotEmpty) {
        List<AlertDataModel> list = [];
        for (final data in dataList) {
          AlertDataModel model = AlertDataModel();
          Map<String, dynamic> map = data;
          model.itemFromString(map);
          list.add(model);
          if (model.token != null && (model.token ?? '').isNotEmpty) {
            map[model.token ?? ''] = model;
          }
        }
        print('$type List 读取本地成功');
        LoggerHandler.log(LogType.info, '$type List 读取本地成功');
        return list;
      } else {
        print('$type List 读取本地 本地为空');
        LoggerHandler.log(LogType.info, '$type List 读取本地 本地为空');
        return null;
      }
    } catch (error) {
      print('$type List 读取本地失败 ${error.toString()}');
      LoggerHandler.log(LogType.error, '$type List 读取本地失败', error: error);
      return null;
    }
  }

  static deleteAlarmFromNotify() async {
    print('开始删除闹钟');
    getAlarmList((data) async {
      if (alarmList.isEmpty) {
        LoggerHandler.log(LogType.info, '本地无缓存闹钟数据 无法删除远端');
      } else {
        alertDataCompare(alarmList, data, 'ALARM', true,
            (allAlarm, activeAlarm, resAlarm, tokens) {
              print('开始删除闹钟 $tokens, res: $resAlarm');
          if (tokens.isNotEmpty) {

            List<Map<String, String>> allAlerts =
                AuthorizationManager().model.allAlerts;
            List<Map<String, String>> activeAlerts =
                AuthorizationManager().model.activeAlerts;

            alarmList.remove(resAlarm.first);
            if (activeAlerts.isNotEmpty) {
              for (Map<String, String> map in activeAlerts) {
                String targetToken = map['token'] ?? '';
                if (targetToken == tokens.first) {
                  activeAlerts.remove(map);
                }
              }
            }

            if (allAlerts.isNotEmpty) {
              for (Map<String, String> map in allAlerts) {
                String targetToken = map['token'] ?? '';
                if (targetToken == tokens.first) {
                  allAlerts.remove(map);
                }
              }
            }

            AuthorizationManager().model.allAlerts = allAlerts;
            AuthorizationManager().model.activeAlerts = activeAlerts;

            setAlertLocalData('ALARM');
            AlertManager.deleteAlertSucceeded(tokens.first, (data) {
              LoggerHandler.log(LogType.info, 'deleteAlertSucceeded 上报');
            });
            // final res = await AuthorizationRequest.deleteOneAlarm(AuthorizationManager().accessToken, alertTokens.first);
            // final error = res.$2;
            // print('删除闹钟 结果 ${res.toString()}');
            // if(error == null){
            //   print('删除alexa 闹钟成功');
            //   LoggerHandler.log(LogType.info, '删除alexa 闹钟成功 ${res.$1}');
            // }else{
            //   print('删除alexa 闹钟失败');
            //   LoggerHandler.log(LogType.info, '删除alexa 闹钟失败 ${res.$1} error: $error');
            // }
            // String eventTime = DeviceInfoHandler.getISOTimestamp();
            // AlertManager.stoppedAlert( (target?.token ?? ''), (target?.scheduledTime ?? ''), eventTime, (data){
            //   LoggerHandler.log(LogType.info, '删除alexa 上报');
            //   if(data.$1 == 204){
            //     print('删除alexa 上报');
            //     AlertManager.deleteAlertSucceeded(target?.token ?? '', (data) {
            //       print('deleteAlertSucceeded 上报');
            //       LoggerHandler.log(LogType.info, 'deleteAlertSucceeded 上报');
            //     });
            //   }
            // });
          }
        });
      }
    });
  }

  static deleteReminderFromNotify() {
    getReminderList((data) {
      if (reminderList.isEmpty) {
        LoggerHandler.log(LogType.info, '本地无缓存提醒数据 无法删除远端');
      } else {
        alertDataCompare(reminderList, data, 'REMINDER', true,
            (allReminder, activeReminder, resReminder, tokens) {
          reminderList.remove(resReminder.first);
          setAlertLocalData('REMINDER');
          if (tokens.isNotEmpty) {
            AlertManager.deleteAlertsSucceeded(tokens, (data) {
              LoggerHandler.log(LogType.info, 'deleteAlertSucceeded 上报');
            });
          }
        });
      }
    });
  }

  static Map<String, String> getAlertMap(AlertDataModel model) {
    Map<String, String> alertMap = {
      "token": model.token ?? '',
      "type": model.type ?? '',
      "scheduledTime": model.scheduledTime ?? '',
    };
    return alertMap;
  }

  static alertDataCompare(
      List<AlertDataModel> localModelList,
      List<dynamic> itemList,
      String type,
      bool isDel,
      Function(List<Map<String, String>>, List<Map<String, String>>,
              List<AlertDataModel>, List<String>)
          callback) {
    List<Map<String, String>> allAlerts = [];
    List<Map<String, String>> activeAlerts = [];
    List<AlertDataModel> resList = [];
    List<String> alertTokens = [];

    final tempItemList = itemList;

    for (AlertDataModel model in localModelList) {
      final alertMap = getAlertMap(model);
      allAlerts.add(alertMap);
      bool isHasSameItem = false;
      for (final item in tempItemList) {
        final target = model.item;
        if (target.year == item.year &&
            target.month == item.month &&
            target.day == item.day &&
            target.hour == item.hour &&
            target.minute == item.minute) {
          LoggerHandler.log(LogType.info, '比对$type时间字符串 匹配');
          activeAlerts.add(alertMap);
          resList.add(model);
          tempItemList.remove(item);
          isHasSameItem = true;
          break;
        } else {
          LoggerHandler.log(LogType.info, '比对$type时间字符串 不匹配');
        }
      }

      if (isHasSameItem == false && isDel) {
        LoggerHandler.log(LogType.info, '需要删除 token ${model.token}');
        alertTokens.add(model.token ?? '');
      }
    }

    callback(allAlerts, activeAlerts, resList, alertTokens);
  }

  static void alertsMapDataConfig(List<AlertDataModel> alerts) {
    LoggerHandler.log(LogType.info, '开始 alertsMapDataConfig $alertsMap');
    try {
      String type = alerts.first.type ?? '';
      final tempMap = alertsMap;
      alertsMap.forEach((key, value) {
        if (value.type == type) {
          tempMap.remove(key);
        }
      });
      for (final model in alerts) {
        final key = model.token ?? '';
        if (key.isNotEmpty) {
          tempMap[key] = model;
        }
      }
      alertsMap = tempMap;
      LoggerHandler.log(LogType.info, '结束 alertsMapDataConfig $alertsMap');
    } catch (error) {
      LoggerHandler.log(LogType.error, 'alertsMapDataConfig 错误', error: error);
    }
  }

  static void getAlarmList(Function(List<alexa_alarm_item>) callBack) {
    alexaProtocol.getAlexaAlarm(callBack: (reply) {
      LoggerHandler.log(
          LogType.info, '获取固件alexa闹钟成功 ${reply.alarmItem.toString()}');

      callBack(reply.alarmItem);
    }, errCallBack: (error) {
      LoggerHandler.log(LogType.error, '获取固件alexa闹钟失败', error: error);
    });
  }

  static void getTimerList(Function(List<alexa_timer_item>) callBack) {
    alexaProtocol.getAlexaTime(callBack: (reply) {
      callBack(reply.items);
      LoggerHandler.log(LogType.info, '获取固件alexa计时器成功 ${reply.toString()}');
    }, errCallBack: (error) {
      LoggerHandler.log(LogType.error, '获取固件alexa计时器失败', error: error);
    });
  }

  static void getReminderList(Function(List<alexa_reminder_item>) callBack) {
    alexaProtocol.getAlexaReminder(callBack: (reply) {
      callBack(reply.reminderItem);
      LoggerHandler.log(LogType.info, '获取固件alexa计时器成功 ${reply.toString()}');
    }, errCallBack: (error) {
      LoggerHandler.log(LogType.error, '获取固件alexa计时器失败', error: error);
    });
  }

  //设置闹钟或计时器成功
  static void setAlertSucceeded(
      String alertToken, Function((int, dynamic)) callBack) {
    Map<String, dynamic> reqData = {
      'token': alertToken,
    };
    DirectiveHandler.processEvent(
        EventType.setAlertSucceeded, reqData: reqData, callBack);
  }

  //设置闹钟或计时器失败
  static void setAlertFailed(
      String alertToken, Function((int, dynamic)) callBack) {
    Map<String, dynamic> reqData = {
      'token': alertToken,
    };
    DirectiveHandler.processEvent(
        EventType.setAlertFailed, reqData: reqData, callBack);
  }

  //闹钟或计时器唤起
  static void startAlert(String alertToken, String scheduledTime,
      String eventTime, Function((int, dynamic)) callBack) {
    // String eventTime = DeviceInfoHandler.getISOTimestamp();
    Map<String, dynamic> reqData = {
      'token': alertToken,
      'scheduledTime': scheduledTime,
      'eventTime': eventTime,
    };
    DirectiveHandler.processEvent(
        EventType.alertStarted, reqData: reqData, callBack);
  }

  //停止闹钟或计时器
  static void stoppedAlert(String alertToken, String scheduledTime,
      String eventTime, Function((int, dynamic)) callBack) {
    Map<String, dynamic> reqData = {
      'token': alertToken,
      'scheduledTime': scheduledTime,
      'eventTime': eventTime,
    };
    DirectiveHandler.processEvent(
        EventType.alertStopped, reqData: reqData, callBack);
  }

  //删除闹钟或计时器成功
  static void deleteAlertSucceeded(
      String alertToken, Function((int, dynamic)) callBack) {
    Map<String, dynamic> reqData = {
      'token': alertToken,
    };
    DirectiveHandler.processEvent(
        EventType.deleteAlertSucceeded, reqData: reqData, callBack);
  }

  static void deleteAlertFailed(
      String alertToken, Function((int, dynamic)) callBack) {
    Map<String, dynamic> reqData = {
      'token': alertToken,
    };
    DirectiveHandler.processEvent(
        EventType.deleteAlertFailed, reqData: reqData, callBack);
  }

  static void deleteAlertsSucceeded(
      List<String> alertTokens, Function((int, dynamic)) callBack) {
    Map<String, dynamic> reqData = {
      'tokens': alertTokens,
    };
    DirectiveHandler.processEvent(
        EventType.deleteAlertsSucceeded, reqData: reqData, callBack);
  }

  static void deleteAlertsFailed(
      List<String> alertTokens, Function((int, dynamic)) callBack) {
    Map<String, dynamic> reqData = {
      'tokens': alertTokens,
    };
    DirectiveHandler.processEvent(
        EventType.deleteAlertsFailed, reqData: reqData, callBack);
  }
}
