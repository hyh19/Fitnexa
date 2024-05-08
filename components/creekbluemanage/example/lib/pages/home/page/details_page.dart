import 'package:creek_blue_manage/alexa/creek_alexa_protocol.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/model/alarm_model.dart';
import 'package:creek_blue_manage/model/disturb_model.dart';
import 'package:creek_blue_manage/model/monitor_model.dart';
import 'package:creek_blue_manage/model/screen_model.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';
import 'package:creek_blue_manage/proto/card.pb.dart';
import 'package:creek_blue_manage/proto/contacts.pb.dart';
import 'package:creek_blue_manage/proto/contactssos.pb.dart';
import 'package:creek_blue_manage/proto/focus.pb.dart';
import 'package:creek_blue_manage/proto/hotKey.pb.dart';
import 'package:creek_blue_manage/proto/menstrual.pb.dart';
import 'package:creek_blue_manage/proto/message.pb.dart';
import 'package:creek_blue_manage/proto/message.pbenum.dart';
import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/menstrual.pbenum.dart';
import 'package:creek_blue_manage/proto/screen.pb.dart';
import 'package:creek_blue_manage/proto/standing.pb.dart';
import 'package:creek_blue_manage/proto/weather.pb.dart';
import 'package:creek_blue_manage/proto/wordtime.pb.dart';
import 'package:creek_blue_manage_example/base/creek_scaffold.dart';
import 'package:creekwidgets/creekwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailsPage extends StatefulWidget {
  String title;
  String cmd;

  DetailsPage({super.key, required this.title, required this.cmd});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailsPageState();
  }
}

class DetailsPageState extends State<DetailsPage> {
  String cmd = "";
  String rawData = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CreekScaffold(
      backgroundColor: Colors.white,
      appBarBackgroundColor: Colors.white,
      title: widget.title,
      iconColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(child: Text("")),
              Container(
                color: Colors.yellow,
                height: 40,
                width: 150,
                child: Center(
                  child: Text("命令id:${widget.cmd}"),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CreekTextButton(
                title: "发送指令",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () {
                  selectCmd(widget.title);
                },
              ),
              const Expanded(child: Text("")),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text("发送命令:"),
              const SizedBox(
                width: 2,
              ),
              Expanded(
                  child: Container(
                color: Colors.black12,
                height: 100,
                child: SingleChildScrollView(
                  child: SelectableText(cmd),
                ),
              )),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              const SelectableText("设备回复:"),
              const SizedBox(
                width: 2,
              ),
              Expanded(
                  child: Container(
                color: Colors.black12,
                height: 300,
                child: SingleChildScrollView(
                  child: Text(rawData),
                ),
              )),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
    );
  }

  void selectCmd(String cmdName) {
    switch (cmdName) {
      case "获取设备信息":
        // SmartDialog.showLoading();
        foundationCommand.getDeviceInfo(callBack: (e) {
          // SmartDialog.dismiss();
          setState(() {
            rawData = e.toString();
          });
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;

      case "用户偏好查询":
        SmartDialog.showLoading();
        foundationCommand.getUserInfo(callBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "用户偏好设置(米)":
        UserInfoModel usermodel = UserInfoModel();
        usermodel.year = 2023;
        usermodel.month = 2;
        usermodel.day = 7;
        UserUnitModel unitmodel = UserUnitModel();
        unitmodel.swimPoolUnit = 1;
        UserGoalModel goalModel = UserGoalModel();
        goalModel.steps = 200;

        UserModel model = UserModel();
        model.userUnitModel = unitmodel;
        model.userGoalModel = goalModel;
        model.userInfoModel = usermodel;
        foundationCommand.setUserInfo(usermodel, unitmodel, goalModel, callBack: () {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "用户偏好设置(码)":
        UserInfoModel usermodel = UserInfoModel();
        usermodel.year = 2023;
        usermodel.month = 2;
        usermodel.day = 7;
        UserUnitModel unitmodel = UserUnitModel();
        unitmodel.swimPoolUnit = 2;
        UserGoalModel goalModel = UserGoalModel();
        goalModel.steps = 200;

        UserModel model = UserModel();
        model.userUnitModel = unitmodel;
        model.userGoalModel = goalModel;
        model.userInfoModel = usermodel;
        foundationCommand.setUserInfo(usermodel, unitmodel, goalModel, callBack: () {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "语言获取":
        SmartDialog.showLoading();
        foundationCommand.getLanguage(callBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "语言设置":
        foundationCommand.setLanguage(LanguageType.chinese, callBack: () {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "闹钟获取":
        foundationCommand.getAlarm(callBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "闹钟设置":
        AlarmItemModel model = AlarmItemModel();
        model.alarmId = 2;
        model.disStatus = DisStatus.disOn;
        model.alarmType = AlarmType.getUp;
        model.hour = 8;
        model.minute = 30;
        model.repeat = [true, true, true, true, true, true, true];
        model.repeatTimes = 3;
        model.repeatMin = 10;
        model.onOff = true;
        model.name = "bean";

        foundationCommand.setAlarm([model], callBack: () {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "勿扰设置":
        DisturbItem item = DisturbItem();
        item.disturbId = 0;
        item.startHour = 8;
        item.startMinute = 30;
        item.endHour = 9;
        item.endMinute = 0;
        // item.repeat = [true,true,true,true,true,true,true];
        item.switchFlag = true;
        foundationCommand.setDisturb(
            disturbNum: 1,
            disturbOnOff: true,
            items: [item],
            callBack: () {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            },
            errCallBack: (e) {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
            },
            seedCmd: (e) {
              setState(() {
                cmd = e;
              });
            },
            rawData: (e) {
              setState(() {
                rawData = e;
              });
            });
        break;
      case "勿扰获取":
        foundationCommand.getDisturb(callBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "屏幕获取":
        foundationCommand.getNewScreen(callBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "屏幕设置":
        protocol_screen_brightness_operate screenAutoModel = protocol_screen_brightness_operate();
        screenAutoModel.level = 50;
        screenAutoModel.showInterval = 4;
        protocol_screen_night_auto_adjust item = protocol_screen_night_auto_adjust();
        item.switchFlag = true;
        item.startHour = 8;
        item.startMinute = 30;
        item.endHour = 9;
        item.endMinute = 0;
        item.nightLevel = 80;
        screenAutoModel.nightAutoAdjust = item;
        screenAutoModel.aodSwitchFlag = true;
        screenAutoModel.raiseWristSwitchFlag = true;

        foundationCommand.setNewScreen(
            screenOperate: screenAutoModel,
            callBack: () {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            },
            errCallBack: (e) {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
            },
            seedCmd: (e) {
              setState(() {
                cmd = e;
              });
            },
            rawData: (e) {
              setState(() {
                rawData = e;
              });
            });
        break;
      case "专注模式获取":
        foundationCommand.getFocus(callBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
        }, errCallBack: (e) {
          SmartDialog.dismiss();
          Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
        }, seedCmd: (e) {
          setState(() {
            cmd = e;
          });
        }, rawData: (e) {
          setState(() {
            rawData = e;
          });
        });
        break;
      case "专注模式设置":
        protocol_focus_mode_operate operate = protocol_focus_mode_operate();
        protocol_focus_sleep_mode model = protocol_focus_sleep_mode();
        model.switchFlag = true;
        model.startHour = 22;
        model.startMinute = 0;
        model.endHour = 8;
        model.endMinute = 0;
        operate.sleepMode = model;
        foundationCommand.setFocus(
            operate: operate,
            callBack: () {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            },
            errCallBack: (e) {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
            },
            seedCmd: (e) {
              setState(() {
                cmd = e;
              });
            },
            rawData: (e) {
              setState(() {
                rawData = e;
              });
            });
        break;
      case "健康监测设置":
        protocol_health_monitor_auto_adjust adjust = protocol_health_monitor_auto_adjust();
        adjust.switchFlag = true;
        adjust.adjustMode = health_monitor_mode.AUTO;
        adjust.startHour = 8;
        adjust.startMinute = 30;
        adjust.endHour = 9;
        adjust.endMinute = 0;

        protocol_heart_monitor_notify notify = protocol_heart_monitor_notify();
        notify.notifyFlag = notify_type.ALLOW;
        notify.highRemindSwitch = true;
        notify.lowRemindSwitch = true;
        notify.lowThresholdValue = 10;
        notify.highThresholdValue = 10;
        notify.interval = 6;
        notify.repeat.addAll([true, true, true, true, true, true, true]);
        notify.startHour = 8;
        notify.startMinute = 30;
        notify.endHour = 9;
        notify.endMinute = 0;
        foundationCommand.setMonitor(
            callBack: () {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            },
            errCallBack: (e) {
              SmartDialog.dismiss();
              Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
            },
            seedCmd: (e) {
              setState(() {
                cmd = e;
              });
            },
            rawData: (e) {
              setState(() {
                rawData = e;
              });
            },
            adjust: adjust,
            notify: notify);
        break;
      case "健康监测获取":
        foundationCommand.getMonitor(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "睡眠监测获取":
        foundationCommand.getSleepMonitor(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "睡眠监测设置":
        foundationCommand.setSleepMonitor(
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "开始寻找手表":
        foundationCommand.setFindPhoneWatch(
          watchSwitch: true,
          findWatchFlag: true,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "结束寻找手表":
        foundationCommand.setFindPhoneWatch(
          watchSwitch: true,
          findWatchFlag: false,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "寻找手表获取":
        foundationCommand.getFindPhoneWatch(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "手势抬腕设置":
        foundationCommand.setVoice(
          awakenSwitchFlag: true,
          wristSwitchFlag: true,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "手势抬腕获取":
        foundationCommand.getVoice(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "世界时钟设置":
        protocol_world_time_item item = protocol_world_time_item();
        item.offestMin = 20;
        item.cityName = "深圳".codeUnits;
        foundationCommand.setWorldTime(
          items: [item],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "世界时钟获取":
        foundationCommand.getWorldTime(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "站立提醒设置":
        protocol_standing_remind_set item = protocol_standing_remind_set();
        item.switchFlag = true;
        item.notifyFlag = notify_type.ALLOW;
        item.startHour = 8;
        item.startMinute = 30;
        item.endHour = 9;
        item.endMinute = 30;
        item.repeat.addAll([true, true, true, true, true, true, true]);
        foundationCommand.setStanding(
          standingRemind: item,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "站立提醒获取":
        foundationCommand.getStanding(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "天气设置":
        protocol_weather_detail_data_item item = protocol_weather_detail_data_item();
        item.month = 11;
        item.day = 9;
        item.hour = 10;
        item.min = 8;
        item.week = 4;
        item.weatherType = weather_type.TORNADO;
        item.curTemp = 20;
        item.curMaxTemp = 30;
        item.cityName = "haha".codeUnits;
        foundationCommand.setWeather(
          switchFlag: true,
          items: [item],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "联系人设置":
        protocol_frequent_contacts_item item = protocol_frequent_contacts_item();
        item.phoneNumber = "13420902894".codeUnits;
        item.contactName = "bean".codeUnits;

        foundationCommand.setContacts(
          items: [item],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "联系人获取":
        foundationCommand.getContacts(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "紧急联系人设置":
        protocol_emergency_contacts_item item = protocol_emergency_contacts_item();
        item.phoneNumber = "13420902894".codeUnits;
        item.contactName = "bean".codeUnits;

        foundationCommand.setContactsSOS(
          items: [item],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "紧急联系人获取":
        foundationCommand.getContactsSOS(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "快捷卡片设置":
        foundationCommand.setCard(
          types: [
            quick_card_type.CARD_TYPE_ACTIVITY,
            quick_card_type.CARD_TYPE_SLEEP,
            quick_card_type.CARD_TYPE_EXERCISE,
            quick_card_type.CARD_TYPE_DIAL,
            quick_card_type.CARD_TYPE_SPO2,
            quick_card_type.CARD_TYPE_HEARTRATE,
          ],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "快捷卡片设置2":
        foundationCommand.setCard(
          types: [
            quick_card_type.CARD_TYPE_ACTIVITY,
            quick_card_type.CARD_TYPE_SLEEP,
            quick_card_type.CARD_TYPE_EXERCISE,
            quick_card_type.CARD_TYPE_DIAL,
          ],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "快捷卡片获取":
        foundationCommand.getCard(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "查询表盘":
        foundationCommand.getWatchDial(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "设置表盘":
        foundationCommand.setWatchDial(
          dialNames: ["creek"],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "删除表盘":
        foundationCommand.delWatchDial(
          dialNames: ["creek"],
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "女性健康设置":
        protocol_menstrual_period_set per = protocol_menstrual_period_set();
        per.lastDay = 1;
        per.lastMonth = 8;
        per.lastYear = 2023;
        per.periodLength = 5;
        per.cycleLength = 28;
        List<protocol_menstrual_record> list = [];
        protocol_menstrual_record re2 = protocol_menstrual_record();
        re2.year = 2023;
        re2.month = 8;
        re2.day = 1;
        re2.log = period_log.PERIOD_LOG_NULL;
        list.add(re2);

        protocol_menstrual_record re = protocol_menstrual_record();
        re.year = 2023;
        re.month = 8;
        re.day = 4;
        re.log = period_log.PERIOD_LOG_NULL;
        list.add(re);

        protocol_menstrual_record re1 = protocol_menstrual_record();
        re1.year = 2023;
        re1.month = 8;
        re1.day = 3;
        re1.log = period_log.PERIOD_LOG_NULL;
        list.add(re1);

        foundationCommand.setMenstrual(
          periodSet: per,
          records: list,
          utcTime: DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "女性健康获取":
        foundationCommand.getMenstrual(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "功能表":
        foundationCommand.getTable(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "消息开关设置(开)":
        // protocol_message_notify_switch_item item = protocol_message_notify_switch_item();
        // item.remindType = message_remind_type.Wechat;
        // item.notifyFlag = notify_type.ALLOW;
        foundationCommand.setMessageOnOff(
          items: [],
          notifySwitch: true,
          directSwitch: true,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "消息开关设置(关)":
        foundationCommand.setMessageOnOff(
          items: [],
          notifySwitch: true,
          directSwitch: false,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "消息开关获取":
        foundationCommand.getMessageOnOff(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;

      case "查询快捷键":
        foundationCommand.getHotKey(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "设置sos2s进入":
        protocol_button_crown_operate operate = protocol_button_crown_operate();
        operate.longType = long_2s_press_type.PRESS_TYPE_SOS;
        foundationCommand.setHotKey(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "设置运动2s进入":
        protocol_button_crown_operate operate = protocol_button_crown_operate();
        operate.longType = long_2s_press_type.PRESS_TYPE_WORKOUT;
        foundationCommand.setHotKey(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "取消2s进入":
        protocol_button_crown_operate operate = protocol_button_crown_operate();
        operate.longType = long_2s_press_type.PRESS_TYPE_NULL;
        foundationCommand.setHotKey(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;

      case "运动按键暂停":
        protocol_button_crown_operate operate = protocol_button_crown_operate();
        operate.pauseWorkout = false;
        foundationCommand.setHotKey(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;

      case "运动按键开启":
        protocol_button_crown_operate operate = protocol_button_crown_operate();
        operate.pauseWorkout = true;
        foundationCommand.setHotKey(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "alexa闹钟获取":
        alexaProtocol.getAlexaAlarm(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            setState(() {
              rawData = e.toString();
            });
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "alexa闹钟设置":
        protocol_alexa_alarm_operate operate = protocol_alexa_alarm_operate();
        alexa_alarm_item item = alexa_alarm_item();
        item.year = 2023;
        item.month = 11;
        item.day = 30;
        item.hour = 8;
        item.minute = 30;
        item.repeat.addAll([true,true,true,true,true,true,true]);
        operate.alarmItem.add(item);
        alexaProtocol.setAlexaAlarm(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
      case "alexa事件提醒获取":
        alexaProtocol.getAlexaReminder(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            setState(() {
              rawData = e.toString();
            });
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );
        break;
      case "alexa事件提醒设置":
        protocol_alexa_reminder_operate operate = protocol_alexa_reminder_operate();
        alexa_reminder_item item = alexa_reminder_item();
        item.year = 2023;
        item.month = 11;
        item.day = 30;
        item.hour = 8;
        item.minute = 30;
        item.content.addAll("abc".codeUnits);
        operate.reminderItem.add(item);
        alexaProtocol.setAlexaReminder(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
      case "alexa定时器获取":
        alexaProtocol.getAlexaTime(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            setState(() {
              rawData = e.toString();
            });
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
      case "alexa定时器设置":
        protocol_alexa_timer_operate operate = protocol_alexa_timer_operate();
        operate.timerOperate = alexa_timer_operate.TIMER_INSERT;
        operate.index = 1;
        operate.timerSec = 60;

        alexaProtocol.setAlexaTime(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
      case "alexa天气获取":
        alexaProtocol.getAlexaWeather(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            setState(() {
              rawData = e.toString();
            });
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
      case "alexa天气设置":
        protocol_alexa_weather_operate operate = protocol_alexa_weather_operate();
        alexa_weather_detail_data_item item = alexa_weather_detail_data_item();
        item.month = 11;
        item.day = 9;
        item.hour = 10;
        item.min = 8;
        item.week = 4;
        item.weatherType = "雨天".codeUnits;
        item.curTemp = 20;
        item.curMaxTemp = 30;
        item.cityName = "haha".codeUnits;
        operate.detailDataItem = item;
        alexaProtocol.setAlexaWeather(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
      case "alexa通知获取":
        alexaProtocol.getAlexaNotify(
          callBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
            setState(() {
              rawData = e.toString();
            });
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
      case "alexa通知设置":
        protocol_alexa_notify_status_operate operate = protocol_alexa_notify_status_operate();
        operate.notifyStatus = true;
        alexaProtocol.setAlexaNotify(
          operate: operate,
          callBack: () {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: "成功", gravity: ToastGravity.CENTER);
          },
          errCallBack: (e) {
            SmartDialog.dismiss();
            Fluttertoast.showToast(msg: e, gravity: ToastGravity.CENTER);
          },
          seedCmd: (e) {
            setState(() {
              cmd = e;
            });
          },
          rawData: (e) {
            setState(() {
              rawData = e;
            });
          },
        );

        break;
    }
  }
}
