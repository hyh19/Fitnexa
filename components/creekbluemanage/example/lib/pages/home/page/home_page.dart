import 'dart:convert';

import 'package:creek_blue_manage/creek_blue_manage_method_channel.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/db/dbModel/creek_goals_model.dart';
import 'package:creek_blue_manage/interface/creek_out_interface.dart';
import 'package:creek_blue_manage/model/heart_rate.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/model/sleep_model.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';
import 'package:creek_blue_manage/proto/message.pb.dart';
import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/userinfo.pb.dart';
import 'package:creek_blue_manage/scanBind/creek_scan_bind.dart';
import 'package:creek_blue_manage_example/base/creek_scaffold.dart';
import 'package:creek_blue_manage_example/base/routes.dart';
import 'package:creek_blue_manage_example/pages/home/page/alexa_page.dart';
import 'package:creek_blue_manage_example/pages/home/page/log_tran_page.dart';
import 'package:creek_blue_manage_example/pages/home/page/strava_page.dart';
import 'package:creek_blue_manage_example/pages/home/page/sync_page.dart';
import 'package:creek_blue_manage_example/pages/home/view/home_widget.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creektool/creek_tool.dart';
import 'package:creekwidgets/creekwidgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../widgets/ZBmerchanscountdownWidget.dart';
import 'home_logic.dart';



class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeLogic>(builder: (logic){
      return CreekScaffold(
        backgroundColor: Colors.white,
        appBarBackgroundColor: Colors.white,
        leading: Container(),
        title: "操作平台",
        action: [
          Row(
            children: [
              CreekTextButton(title: '蓝牙',onPressed: (){
                logic.toBlue();
              },),
             const SizedBox(width: 5,),
            ],
          )
        ],
        body: ListView(
          children:  [
            Row(
              children: [
                const SizedBox(width: 40,),
                Text("版本：${logic.creekVersionInfo?.version ?? ""}"),
                SizedBox(
                  width: 15,
                  height: 15,
                  child: CustomPaint(
                    painter: CircleProgressPainter(value: 0.9, strokeWidth: 4),
                  ),
                ),
                // CircleProgressIndicatorWidget(
                //     width: 31.w,
                //     height: 31.w,
                //     value: 1,
                //     color: Colors.white,
                //     // gradient: SweepGradient(colors: [Colors.white, Colors.white, Colors.white,], stops: [1, 1, 1]),
                //     strokeWidth: 6.w,
                //     totalDuration: Duration(
                //       seconds: 11,
                //     ),
                //     timeend: (){
                //     },
                //     child: (context, c) => Center(
                //       child: Text(
                //         "${((1 - c.value) * 10).toInt()}",
                //         style: TextStyle(
                //             color: Colors.white
                //
                //         ),
                //       ),
                //     )
                // ),

                Expanded(child: Container()),
              ],
            ),

            HomeWidget(name: "获取设备信息",onPressed: (){
              logic.toDetails("获取设备信息","0x01");
              //  CreekDeviceManger.instance.bluetoothDevice?.dissPar();
              // CreekDeviceManger.instance?.getConnectedDevices()?.then((value) {
              //    print(value.toString());
              // });
            },),
            HomeWidget(name: "插入同步数据",onPressed: (){
              CreekTest.createAllData();
            },),
            HomeWidget(name: "清除同步数据",onPressed: (){
              CreekTest.delAllData();
            },),
            HomeWidget(name: "查询时间",onPressed: (){
              foundationCommand.getTime(callBack: (e){

              },errCallBack: (e){

              });
            },),
            HomeWidget(name: "设置时间",onPressed: (){
              foundationCommand.setTime(callBack: (){

              });
            },),
            HomeWidget(name: "扫码绑定设备",onPressed: (){
              CreekScanBind.instance?.scanBind("6B:D9:84:FD:4E:F4",scanBack: (e){
                  print(e.toString());
              });
            },),
            
            HomeWidget(name: "重新弹出配对",onPressed: (){
              foundationCommand.setMtuSize(true,callBack: (){
                Fluttertoast.showToast(msg: "重新弹出配对成功",gravity: ToastGravity.CENTER);
              },errCallBack: (e){
                Fluttertoast.showToast(msg: "重新弹出配对失败",gravity: ToastGravity.CENTER);
              });
            },),
            HomeWidget(name: "绑定设备",onPressed: (){
              foundationCommand.bindingDevice(bindMethod: 1,callBack: (){
                Fluttertoast.showToast(msg: "绑定成功",gravity: ToastGravity.CENTER);
              },errorCallBack: (){

              });
            },),
            HomeWidget(name: "关机",onPressed: (){
              foundationCommand.setSystem(type: 2,callBack: (){
                Fluttertoast.showToast(msg: "关机成功",gravity: ToastGravity.CENTER);
              },errCallBack: (e){

              });
            },),
            HomeWidget(name: "重启",onPressed: (){
              foundationCommand.setSystem(type: 1,callBack: (){
                Fluttertoast.showToast(msg: "重启成功",gravity: ToastGravity.CENTER);
              },errCallBack: (e){

              });
            },),
            HomeWidget(name: "解除绑定",onPressed: (){
              foundationCommand.bindingDevice(bindMethod:2,macAddress: CreekDeviceManger.instance!.bluetoothDevice!.id.id,callBack: (){
                Fluttertoast.showToast(msg: "解绑成功",gravity: ToastGravity.CENTER);
              },errorCallBack: (){
                Fluttertoast.showToast(msg: "解绑失败",gravity: ToastGravity.CENTER);
              });
            },),
            HomeWidget(name: "用户偏好查询",onPressed: (){
              logic.toDetails("用户偏好查询","0x03");
              // foundationCommand.getUserInfo(callBack: (e){
              //
              // });
            },),
            HomeWidget(name: "用户偏好设置(米)",onPressed: (){
              logic.toDetails("用户偏好设置(米)","0x03");
            },),
            HomeWidget(name: "用户偏好设置(码)",onPressed: (){
              logic.toDetails("用户偏好设置(码)","0x03");
            },),
            HomeWidget(name: "发送Youtube",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Youtube;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
             foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Uber",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Uber;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Uber_eats",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Uber_eats;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Door_Dash_missing",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Door_Dash_missing;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Banco_General",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Banco_General;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送BAC_Bank",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.BAC_Bank;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Google_Maps",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Google_Maps;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Amazon_shopping",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Amazon_shopping;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Spotify",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Spotify;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Discord",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Discord;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送remind_type_max",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.remind_type_max;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "发送Fitbeing",onPressed: (){
              protocol_message_notify_data operate = protocol_message_notify_data();
              operate.osPlatform = notify_os_platform.ANDROID;
              operate.notifyFlag = notify_type.ALLOW;
              operate.remindType = message_remind_type.Fitbeing;
              operate.contactText = "abc".codeUnits;
              operate.msgContent = "efg".codeUnits;
              foundationCommand.setMessageApp(operate: operate);
            },),
            HomeWidget(name: "消息开关设置(开)",onPressed: (){
              logic.toDetails("消息开关设置(开)","0x13");

            },),
            HomeWidget(name: "消息开关设置(关)",onPressed: (){
              logic.toDetails("消息开关设置(关)","0x13");

            },),
            HomeWidget(name: "消息开关获取",onPressed: (){
              logic.toDetails("消息开关获取","0x13");
            },),

            HomeWidget(name: "查询快捷键",onPressed: (){
              logic.toDetails("查询快捷键","0x23");

            },),

            HomeWidget(name: "设置sos2s进入",onPressed: (){
              logic.toDetails("设置sos2s进入","0x23");

            },),
            HomeWidget(name: "设置运动2s进入",onPressed: (){
              logic.toDetails("设置运动2s进入","0x23");

            },),
            HomeWidget(name: "取消2s进入",onPressed: (){
               logic.toDetails("取消2s进入","0x23");

            },),
            HomeWidget(name: "运动按键暂停",onPressed: (){
              logic.toDetails("运动按键暂停","0x23");

            },),
            HomeWidget(name: "运动按键开启",onPressed: (){
              logic.toDetails("运动按键开启","0x23");

            },),


            HomeWidget(name: "语言获取",onPressed: (){
              logic.toDetails("语言获取","0x04");

            },),
            HomeWidget(name: "语言设置",onPressed: (){
              logic.toDetails("语言设置","0x04");
            },),
            HomeWidget(name: "闹钟获取",onPressed: (){
              logic.toDetails("闹钟获取","0x07");

            },),
            HomeWidget(name: "闹钟设置",onPressed: (){
              logic.toDetails("闹钟设置","0x07");
            },),
            HomeWidget(name: "勿扰获取",onPressed: (){
              logic.toDetails("勿扰获取","0x08");

            },),
            HomeWidget(name: "勿扰设置",onPressed: (){
              logic.toDetails("勿扰设置","0x08");
            },),
            HomeWidget(name: "屏幕设置",onPressed: (){
              logic.toDetails("屏幕设置","0x09");
            },),
            HomeWidget(name: "屏幕获取",onPressed: (){
              logic.toDetails("屏幕获取","0x09");

            },),
            HomeWidget(name: "专注模式设置",onPressed: (){
              logic.toDetails("专注模式设置","0x25");
            },),
            HomeWidget(name: "专注模式获取",onPressed: (){
              logic.toDetails("专注模式获取","0x25");

            },),
            HomeWidget(name: "健康监测设置",onPressed: (){
              logic.toDetails("健康监测设置","0x0a");
            },),
            HomeWidget(name: "健康监测获取",onPressed: (){
              logic.toDetails("健康监测获取","0x0a");
            },),

            HomeWidget(name: "睡眠监测设置",onPressed: (){
              logic.toDetails("睡眠监测设置","0x0b");
            },),
            HomeWidget(name: "睡眠监测获取",onPressed: (){
              logic.toDetails("睡眠监测获取","0x0b");
            },),
            HomeWidget(name: "查询表盘",onPressed: (){
              logic.toDetails("查询表盘","0x16");
            },),
            HomeWidget(name: "设置表盘",onPressed: (){
              logic.toDetails("设置表盘","0x16");
            },),
            HomeWidget(name: "删除表盘",onPressed: (){
              logic.toDetails("删除表盘","0x16");
            },),
          HomeWidget(name: "寻找手表获取",onPressed: (){
            logic.toDetails("寻找手表获取","0x17");
          },),
          HomeWidget(name: "开始寻找手表",onPressed: (){
            logic.toDetails("开始寻找手表","0x17");
          },),
            HomeWidget(name: "结束寻找手表",onPressed: (){
              logic.toDetails("结束寻找手表","0x17");
            },),
            HomeWidget(name: "手势抬腕设置",onPressed: (){
              logic.toDetails("手势抬腕设置","0x18");
            },),
            HomeWidget(name: "手势抬腕获取",onPressed: (){
              logic.toDetails("手势抬腕获取","0x18");
            },),
            HomeWidget(name: "世界时钟设置",onPressed: (){
              logic.toDetails("世界时钟设置","0x1b");
            },),
            HomeWidget(name: "世界时钟获取",onPressed: (){
              logic.toDetails("世界时钟获取","0x1b");
            },),
            HomeWidget(name: "站立提醒设置",onPressed: (){
              logic.toDetails("站立提醒设置","0x1b");
            },),
            HomeWidget(name: "站立提醒获取",onPressed: (){
              logic.toDetails("站立提醒获取","0x1b");
            },),
            HomeWidget(name: "天气设置",onPressed: (){
              logic.toDetails("天气设置","0x12");
            },),
            HomeWidget(name: "联系人获取",onPressed: (){
              logic.toDetails("联系人获取","0x1c");
            },),
            HomeWidget(name: "联系人设置",onPressed: (){
              logic.toDetails("联系人设置","0x1c");
            },),
            HomeWidget(name: "紧急联系人获取",onPressed: (){
              logic.toDetails("紧急联系人获取","0x1f");
            },),
            HomeWidget(name: "紧急联系人设置",onPressed: (){
              logic.toDetails("紧急联系人设置","0x1f");
            },),
            HomeWidget(name: "快捷卡片获取",onPressed: (){
              logic.toDetails("快捷卡片获取","0x1a");
            },),
            HomeWidget(name: "快捷卡片设置",onPressed: (){
              logic.toDetails("快捷卡片设置","0x1a");
            },),
            HomeWidget(name: "快捷卡片设置2",onPressed: (){
              logic.toDetails("快捷卡片设置2","0x1a");
            },),

            HomeWidget(name: "女性健康获取",onPressed: (){
              logic.toDetails("女性健康获取","0x0f");
            },),
            HomeWidget(name: "女性健康设置",onPressed: (){
              logic.toDetails("女性健康设置","0x0f");
            },),
            HomeWidget(name: "功能表",onPressed: (){
              logic.toDetails("功能表","0x1e");
            },),
            HomeWidget(name: "alexa闹钟获取",onPressed: (){
              logic.toDetails("alexa闹钟获取","0x19");
            },),
            HomeWidget(name: "alexa闹钟设置",onPressed: (){
              logic.toDetails("alexa闹钟设置","0x19");
            },),
            HomeWidget(name: "alexa事件提醒获取",onPressed: (){
              logic.toDetails("alexa事件提醒获取","0x19");
            },),
            HomeWidget(name: "alexa事件提醒设置",onPressed: (){
              logic.toDetails("alexa事件提醒设置","0x19");
            },),
            HomeWidget(name: "alexa定时器获取",onPressed: (){
              logic.toDetails("alexa定时器获取","0x19");
            },),
            HomeWidget(name: "alexa定时器设置",onPressed: (){
              logic.toDetails("alexa定时器设置","0x19");
            },),
            HomeWidget(name: "alexa天气获取",onPressed: (){
              logic.toDetails("alexa天气获取","0x19");
            },),
            HomeWidget(name: "alexa天气设置",onPressed: (){
              logic.toDetails("alexa天气设置","0x19");
            },),
            HomeWidget(name: "alexa通知获取",onPressed: (){
              logic.toDetails("alexa通知获取","0x19");
            },),
            HomeWidget(name: "alexa通知设置",onPressed: (){
              logic.toDetails("alexa通知设置","0x19");
            },),
            HomeWidget(name: "数据同步",onPressed: () async{
              logic.sync();
            },),
            HomeWidget(name: "插入数据",onPressed: (){
              HeartRateData data  = HeartRateData();
              data.key = HeartRateKey.head;
              HeartRateHead head = HeartRateHead();
              head.year = 2023;
              head.month = 2;
              head.day = 7;
              head.silentHr = 60;
              RateHeadInterval rateHeadInterval = RateHeadInterval();
              rateHeadInterval.minute = 50;
              rateHeadInterval.threshold = 60;
              RateHeadInterval rateHeadInterval2 = RateHeadInterval();
              rateHeadInterval2.minute = 50;
              rateHeadInterval2.threshold = 60;
              RateHeadInterval rateHeadInterval3 = RateHeadInterval();
              rateHeadInterval3.minute = 50;
              rateHeadInterval3.threshold = 60;
              RateHeadInterval rateHeadInterval4 = RateHeadInterval();
              rateHeadInterval4.minute = 50;
              rateHeadInterval4.threshold = 60;
              RateHeadInterval rateHeadInterval5 = RateHeadInterval();
              rateHeadInterval5.minute = 50;
              rateHeadInterval5.threshold = 60;
              head.hrInterval = [rateHeadInterval,rateHeadInterval2,rateHeadInterval3,rateHeadInterval4,rateHeadInterval5];
              data.data = head;
              HeartRateData data2  = HeartRateData();
              data2.key = HeartRateKey.data;
              HeartRateItem head2 = HeartRateItem();
              head2.offset = 20;
              head2.hrValue = 30;
              HeartRateItem head3 = HeartRateItem();
              head3.offset = 20;
              head3.hrValue = 30;
              data2.data = [head2,head3];
              CreekProcedure.insertHeartRateData([data,data2]);
            },),
            HomeWidget(name: "读取数据",onPressed: () async{
              // CreekGoalsModel goalsModel = await interfaceProtocol.getGoals();
              // goalsModel.sportDay = 5;
              // await interfaceProtocol.setGoals(userGoalModel: goalsModel);

             // var a =  await CreekProcedure.getNewHomeValue();
             // print(a);

              // var a = await interfaceProtocol.getNewHomeValue();
              // print(a);
             // dynamic a = await interfaceProtocol.getSportRecord();
             // print(a);
             // dynamic a = await interfaceProtocol.getSleepNewTimeData("2023-05-21", "2023-05-24");
             // dynamic b = await interfaceProtocol.getHeartRateNewTimeData("2023-05-21", "2023-05-24");
             // dynamic c = await interfaceProtocol.getSpoNewTimeData("2023-05-21", "2023-05-24");
             // dynamic d = await interfaceProtocol.getStressNewTimeData("2023-05-21", "2023-05-24");
             // dynamic e = await interfaceProtocol.getNoiseNewTimeData("2023-05-21", "2023-05-24");

             // CreekDeviceManger.instance?.writeCharacteristic?.write([0x10,0x0F]);
             //  List<Map<String, dynamic>> maps = await CreekOutInterFace.getActivityNewTimeData(DateTime(2023,7,1), DateTime(2023,8,2));
             //
             //  List<Map<String, dynamic>> maps2 = [];
             // for (var e in maps) {
             //   Map<String, dynamic> c = Map.from(e);
             //   if (c["datas"] is String){
             //     c["datas"] = jsonDecode(c["datas"]);
             //   }
             //   maps2.add(c);
             // }

             // dynamic a = await interfaceProtocol.getDeviceInfo();
             // dynamic b = await interfaceProtocol.getDeviceInfoList();

             // dynamic c = await interfaceProtocol.getDials();
             //
             // print(c);

             // print(a);
              // foundationCommand.getMtuSize(callBack: (e){
              //
              // });
             // print(DateTime.now().toString().substring(0,10));
             // var a = await interfaceProtocol.getSyncTypeData(syncType: sync_type.SYNC_HEART_RATE,timeType: TimeType.year,startTime: "2023-02-27",endTime: "2023-03-05");
             // var b = await interfaceProtocol.getSyncTypeData(syncType: sync_type.SYNC_STRESS,timeType: TimeType.year,startTime: "2023-02-27",endTime: "2023-03-05");
             // var c = await interfaceProtocol.getSyncTypeData(syncType: sync_type.SYNC_SPO2,timeType: TimeType.year,startTime: "2023-02-27",endTime: "2023-03-05");
             // var f = await interfaceProtocol.getSyncTypeData(syncType: sync_type.SYNC_NOISE,timeType: TimeType.year,startTime: "2023-02-27",endTime: "2023-03-05");
             // var d = await interfaceProtocol.getSyncTypeData(syncType: sync_type.SYNC_SLEEP,timeType: TimeType.year,startTime: "2023-02-27",endTime: "2023-03-05");
             // var e = await interfaceProtocol.getSyncTypeData(syncType: sync_type.SYNC_ACTIVITY,timeType: TimeType.year,startTime: "2023-02-27",endTime: "2023-03-05");
             // print(jsonEncode(b));
             //  SleepData model = SleepData();
             //  model.key = SyncSleepKey.head;
             //  SleepHead head = SleepHead();
             //  SleepTime sleepTime = SleepTime();
             //  sleepTime.year = 2023;
             //  sleepTime.month = 8;
             //  sleepTime.day = 8;
             //  sleepTime.hour = 01;
             //  sleepTime.minute = 00;
             //  sleepTime.second = 00;
             //  SleepTime sleepTime2 = SleepTime();
             //  sleepTime2.year = 2023;
             //  sleepTime2.month = 8;
             //  sleepTime2.day = 8;
             //  sleepTime2.hour = 03;
             //  sleepTime2.minute = 00;
             //  sleepTime2.second = 00;
             //  head.fallAsleepTime = sleepTime;
             //  head.getUpTime = sleepTime2;
             //  model.data = head;
             //  SleepData model1 = SleepData();
             //  model1.key = SyncSleepKey.data;
             //
             //  SleepData model3 = SleepData();
             //  model3.key = SyncSleepKey.head;
             //  SleepHead head2 = SleepHead();
             //  SleepTime sleepTime3 = SleepTime();
             //  sleepTime3.year = 2023;
             //  sleepTime3.month = 8;
             //  sleepTime3.day = 7;
             //  sleepTime3.hour = 22;
             //  sleepTime3.minute = 00;
             //  sleepTime3.second = 00;
             //  SleepTime sleepTime4 = SleepTime();
             //  sleepTime4.year = 2023;
             //  sleepTime4.month = 8;
             //  sleepTime4.day = 8;
             //  sleepTime4.hour = 04;
             //  sleepTime4.minute = 00;
             //  sleepTime4.second = 00;
             //  head2.fallAsleepTime = sleepTime3;
             //  head2.getUpTime = sleepTime4;
             //  model3.data = head2;
             //  SleepData model4 = SleepData();
             //  model4.key = SyncSleepKey.data;
             //
             //
             // CreekProcedure.insertSleepData([model4,model3,model1,model]);

            // var b =  await CreekOutInterFace.getSportTimeData(DateTime.parse("2023-09-01"), DateTime.parse("2023-11-20"));
            //
            // var c =  await CreekProcedure.getHeartRateNewTimeData("2023-09-01", "2023-11-06");
            // print(b);
            // print(c);


           int? size = await FileManage2.instance?.calculateFolderSize();
           print(size ?? 0);



            // print(int.parse(version ?? "0"));
            // if(int.parse(version ?? "0") > 17){
            //   print("11111");
            // }else{
            //   print("22222");
            // }
            // print(version);
              


            },),
            HomeWidget(name: "上传文件",onPressed: (){
              // print(BlueTool.convert("4044B84189374BC1"));
              logic.toUpPage();
            },),
            HomeWidget(name: "日志传输",onPressed: (){
              Get.to(LogTranPage());
              // CreekDown.instance.startLog();

            },),
            HomeWidget(name: "alexa",onPressed: (){
              Get.to(AlexaPage());
            },),
            // HomeWidget(name: "结束日志传输",onPressed: (){
            //  CreekDown.instance.endLog();
            //
            // },),
            HomeWidget(name: "strava",onPressed: (){
              Get.to(const StravaPage());
            },),
            HomeWidget(name: "spp协议",onPressed: (){
            CreekDeviceManger.instance.bluetoothDevice?.createSocket();

            },),
            HomeWidget(name: "表盘预览工具",onPressed: (){
            Get.toNamed(Routes.watchFacePhoto);

            },),
          ],
        ),

      );
    });
  }
}


