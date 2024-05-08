import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:creek_alexa_plugin/alert_manager.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:creek_blue_manage/alexa/creek_alexa_protocol.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';
import 'package:creek_blue_manage/proto/disturb.pb.dart';
import 'event_data_handler.dart';
import 'authorization_manager.dart';
import 'authorization_request.dart';

class EventRequestData {
  late EventType name;
  late EventNamespaceType namespace;
  String accessToken = '';
  String token = '';
  Map<String, dynamic>? reqData;
}

class DirectiveHandler {
  static process(Map<String, dynamic> map, Function((int, dynamic)) callBack) {
    LoggerHandler.log(LogType.directive, map.toString());
    print('收到指令  ${map.toString()}');
    Map<String, dynamic> targetMap = map['content'];
    Map<String, dynamic> payload = targetMap['directive']['payload'];
    Map<String, dynamic> header = targetMap['directive']['header'];
    String name = header['name'];

    final reqModel = EventRequestData();
    reqModel.accessToken = AuthorizationManager().accessToken;
    if (name == DirectiveType.setAlert.title) {
      String type = payload['type'];
      String scheduledTime = payload['scheduledTime'];
      String alertToken = payload['token'];

      // 获取当前时间
      DateTime currentDateTime = DateTime.now();
      // 获取当前时区与零时区的时间差
      Duration timeZoneOffset = currentDateTime.timeZoneOffset;
      // 时区差
      int hourOffset = timeZoneOffset.inHours;

      DateTime oldDateTime = DateTime.parse(scheduledTime);
      DateTime dateTime = oldDateTime.add(Duration(hours: hourOffset));
      // 提取年、月、日、时、分和秒的信息
      int year = dateTime.year;
      int month = dateTime.month;
      int day = dateTime.day;
      int hour = dateTime.hour;
      int minute = dateTime.minute;
      String label = '';

      //是否有标题
      if (payload.containsKey('label')) {
        label = payload['label'];
      }

      if (type == 'TIMER') {
        LoggerHandler.log(LogType.info, '开始设置 $type');
        AlertDataModel alertDataModel = AlertDataModel();
        alertDataModel.token = alertToken;
        alertDataModel.type = type;
        alertDataModel.scheduledTime = scheduledTime;

        AlertManager.setOneTimer(alertDataModel, currentDateTime, oldDateTime);
      } else if (type == 'ALARM') {
        LoggerHandler.log(LogType.info, '开始设置 $type');
        alexa_alarm_item item = alexa_alarm_item();
        item.year = year;
        item.month = month;
        item.day = day;
        item.hour = hour;
        item.minute = minute;
        item.switchFlag = true;

        for (int i = 0; i < 7; i++) {
          item.repeat.add(false);
        }

        AlertDataModel alertDataModel = AlertDataModel();
        alertDataModel.token = alertToken;
        alertDataModel.item = item;
        alertDataModel.type = type;
        alertDataModel.scheduledTime = scheduledTime;

        AlertManager.setOneAlarm(alertDataModel);
      } else if (type == 'REMINDER') {
        LoggerHandler.log(LogType.info, '开始设置 $type');
        alexa_reminder_item item = alexa_reminder_item();
        item.year = year;
        item.month = month;
        item.day = day;
        item.hour = hour;
        item.minute = minute;
        if (label.isNotEmpty) {
          item.content = utf8.encode(label);
        }
        AlertDataModel alertDataModel = AlertDataModel();
        alertDataModel.token = alertToken;
        alertDataModel.item = item;
        alertDataModel.type = type;
        alertDataModel.scheduledTime = scheduledTime;

        AlertManager.setOneReminder(alertDataModel);
      } else {
        LoggerHandler.log(LogType.error, '设置错误 类型有误 $type');
      }
    } else if (name == DirectiveType.deleteAlert.title) {
      String alertToken = payload['token'];
      AlertManager.deleteAlert([alertToken]);
    } else if (name == DirectiveType.deleteAlerts.title) {
      LoggerHandler.log(LogType.info, '删除多个Alert');
      List<String> alertTokens = payload['tokens'];
      AlertManager.deleteAlert(alertTokens);
    } else if (name == DirectiveType.expectSpeech.title) {
      int timeoutInMilliseconds = payload['timeoutInMilliseconds'];
      //收到ExpectSpeech时开始计时
      AuthorizationManager().model.expectSpeechTimer =
          Timer.periodic(Duration(seconds: timeoutInMilliseconds), (timer) {
        timer.cancel();
        //倒计时结束 发送超时事件
        processEvent(EventType.expectSpeechTimedOut, callBack);
      });
    } else if (name == DirectiveType.reportSoftwareInfo.title) {
      //收到事件时需要上报固件和软件版本信息
      Map<String, dynamic> reqData = {
        'firmwareVersion': '1.0.0',
        'softwareVersion': '1.0.0',
      };
      processEvent(EventType.softwareInfo, reqData: reqData, callBack);
    } else if (name == DirectiveType.setVolume.title ||
        name == DirectiveType.adjustVolume.title) {
      //0 - 100 表示音量的百分比
      int volume = payload['volume'];
      //通知固件调整音量  完成后调 VolumeChange
      AuthorizationManager.volumeChanged(volume);

    } else if (name == DirectiveType.clearIndicator.title) {
      protocol_alexa_notify_status_operate operate =
          protocol_alexa_notify_status_operate();
      operate.notifyStatus = false;
      alexaProtocol.setAlexaNotify(
          operate: operate,
          callBack: () {
            print('清除通知成功');
            LoggerHandler.log(LogType.info, '清除通知成功');
          },
          errCallBack: (error) {
            print('清除通知失败');
            LoggerHandler.log(LogType.error, '清除通知失败 $error');
          });
    } else if (name == DirectiveType.setIndicator.title) {
      protocol_alexa_notify_status_operate operate =
          protocol_alexa_notify_status_operate();
      operate.notifyStatus = true;
      alexaProtocol.setAlexaNotify(
          operate: operate,
          callBack: () {
            print('设置通知成功');
            LoggerHandler.log(LogType.info, '设置通知成功');
          },
          errCallBack: (error) {
            print('设置通知失败');
            LoggerHandler.log(LogType.error, '设置通知失败 $error');
          });
    } else if (name == DirectiveType.setDoNotDisturb.title) {
      bool enabled = payload['enabled'];

      foundationCommand.getNewDisturb(callBack: (reply) {
        print('获取勿扰成功');
        LoggerHandler.log(LogType.error, '获取勿扰成功 reply $reply');

        reply.disturbOnOff = true;
        protocol_disturb_operate operate = protocol_disturb_operate();
        protocol_set_disturb_item item = protocol_set_disturb_item();
        item.endHour = 23;
        item.endMinute = 59;
        item.startHour = 0;
        item.startMinute = 0;
        item.switchFlag = enabled;
        final list = reply.disturbItem;

        if (list.isNotEmpty) {
          list.removeAt(0);
          list.insert(0, item);
        } else {
          list.add(item);
        }

        operate.disturbItem.addAll(list);
        foundationCommand.setNewDisturb(
            disturb: operate,
            callBack: () {
              print('设置勿扰成功');
              LoggerHandler.log(LogType.error, '设置勿扰成功 enabled $enabled');
            },
            errCallBack: (error) {
              print('设置勿扰失败');
              LoggerHandler.log(LogType.error, '设置勿扰失败 $error');
            });
      }, errCallBack: (error) {
        print('获取勿扰失败');
        LoggerHandler.log(LogType.error, '获取勿扰失败 $error');
      });
    }
  }

  static void processEvent(
      EventType eventType, Function((int, dynamic)) callBack,
      {Map<String, dynamic>? reqData}) {
    final reqModel = EventRequestData();
    reqModel.accessToken = AuthorizationManager().accessToken;
    reqModel.name = eventType;
    bool isNeedReq = true;
    switch (eventType) {
      case EventType.speechStarted:
      case EventType.speechFinished:
        reqModel.namespace = EventNamespaceType.speechSynthesizer;
        reqModel.reqData = {'token': AuthorizationManager().model.speakToken};
        break;

      case EventType.expectSpeechTimedOut:
        reqModel.namespace = EventNamespaceType.speechSynthesizer;
        break;

      case EventType.deleteReport:
        reqModel.token = AuthorizationManager().accessToken;
        reqModel.namespace = EventNamespaceType.alexaDiscovery;
        break;

      case EventType.verifyGateway:
        reqModel.namespace = EventNamespaceType.alexaApiGateway;
        break;

      case EventType.localesChanged:
      case EventType.userInactivityReport:
      case EventType.softwareInfo:
      case EventType.timeZoneChanged:
      case EventType.timeZoneReport:
        reqModel.namespace = EventNamespaceType.system;
        reqModel.reqData = reqData;
        break;

      case EventType.addOrUpdateReport:
        reqModel.namespace = EventNamespaceType.alexaDiscovery;
        reqModel.token = AuthorizationManager().accessToken;
        reqModel.reqData = reqData;
        break;

      case EventType.deleteAlertsFailed:
      case EventType.deleteAlertsSucceeded:
      case EventType.setAlertSucceeded:
      case EventType.setAlertFailed:
      case EventType.deleteAlertSucceeded:
      case EventType.deleteAlertFailed:
      case EventType.alertStarted:
      case EventType.alertStopped:
      case EventType.alertVolumeChanged:

        reqModel.namespace = EventNamespaceType.alerts;
        reqModel.reqData = reqData;
        break;

      case EventType.volumeChanged:
        reqModel.namespace = EventNamespaceType.speaker;
        reqModel.reqData = reqData;
        break;

      case EventType.speechInterrupted:
        reqModel.namespace = EventNamespaceType.speechSynthesizer;
        reqModel.reqData = reqData;
        break;

      case EventType.doNotDisturbChanged:
      case EventType.reportDoNotDisturb:
        reqModel.namespace = EventNamespaceType.alexaDoNotDisturb;
        reqModel.reqData = reqData;
        break;

      default:
        isNeedReq = false;
        break;
    }

    if (isNeedReq) {
      DirectiveHandler.sendEvent(reqModel, callBack);
    }
  }

  static void sendEvent(
      EventRequestData data, Function((int, dynamic)) callBack) async {
    ReceivePort receivePort = ReceivePort();
    SendPort sendPort = receivePort.sendPort;
    print('当前线程 ${Isolate.current.debugName} 当前事件  ${data.name}');

    Isolate newIsolate = await Isolate.spawn(_sendEventRequest, sendPort);

    receivePort.listen((message) {
      if (message is SendPort) {
        SendPort otherPort = message;
        otherPort.send(data);
      } else if (message is (int, dynamic)) {
        callBack(message);
        receivePort.close();
        newIsolate.kill(priority: Isolate.immediate);
      } else {
        print(message);
        LoggerHandler.log(LogType.error, '${data.name} 返回类型有误', error: message);
        receivePort.close();
        newIsolate.kill(priority: Isolate.immediate);
      }
    });
  }

  static void _sendEventRequest(SendPort sendPort) {
    ReceivePort otherReceivePort = ReceivePort();
    SendPort otherSendPort = otherReceivePort.sendPort;
    sendPort.send(otherSendPort);

    otherReceivePort.listen((data) async {
      if (data is EventRequestData) {
        final res = await AuthorizationRequest.sendEvent(
            data.name, data.namespace, data.token, data.accessToken,
            other: data.reqData);
        sendPort.send(res);
        otherReceivePort.close();
      }
    });
  }
}
