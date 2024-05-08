import 'dart:convert';
import 'dart:developer';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/creek_listen.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';
import 'package:creek_blue_manage/proto/sensor.pb.dart';
import 'package:creek_blue_manage/sensor/creek_sensor_protocol.dart';
import 'package:creek_blue_manage_example/base/routes.dart';
import 'package:creek_blue_manage_example/pages/file/page/file_page.dart';
import 'package:creek_blue_manage_example/pages/home/page/details_page.dart';
import 'package:creek_blue_manage_example/pages/home/page/sync_page.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creekbase/http/log_utils.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController with CreekBlueConnectionStatusListen {

  CreekVersionInfo? creekVersionInfo;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getVersion();
    CreekPermission.isLocation();
    ///注册状态监听
    CreekDeviceManger.instance.setConnectionStatusNotify(this);
    Future.delayed(const Duration(milliseconds: 500),(){
      update();
    });

    UpdateNotice.instance.updateNotice = (operate){
      print("id=$operate");

    };
    var a = BlueTool.hexToMinus([64, 112, 95, 1]);
    print(a);
  }
  ///文件上传页面
  toUpPage() async{
    // dynamic a = await interfaceProtocol.setGoals(exercise: 100);
    // dynamic b = await interfaceProtocol.setGoals(stand: 20);
    // dynamic c = await interfaceProtocol.setGoals(steps: 79);
    // dynamic d = await interfaceProtocol.setGoals(sleepTotal: 4);
    // dynamic e = await interfaceProtocol.setGoals(calories: 200);
    // dynamic json = await interfaceProtocol.getGoals();
    // print(json);
    //  dynamic json2 = await interfaceProtocol.getSyncTypeData(syncType: sync_type.SYNC_SLEEP, timeType: TimeType.day, startTime: "2023-02-03", endTime: "2023-02-05");
    // //  // CreekInterface().getLastHeartRateValue("2023-02-04");
    // //  // dynamic json2 = await interfaceProtocol.getHomeValue();
    // print(json2);
    //  dynamic json2 = await interfaceProtocol.getHomeValue();
    //  print(jsonEncode(json2));
    // CreekProcedure.getSportRecord();

    Get.toNamed(Routes.filePage);
  }

  getVersion() async{
    creekVersionInfo = await CreekVersionInfo.versionInfo;
    update();
  }

  ///蓝牙
  toBlue(){
    Get.toNamed(Routes.devicePage);
  }

  ///去详情页面
  toDetails(String title,String cmd){
    // Get.toNamed(Routes.devicePage);
    // Navigator.push(Get.context!, route)
    // Navigator.push(Get.context!, MaterialPageRoute(builder: (context) =>  DeviceInfoPage(title: title,cmd: cmd,)));
    Get.to(DetailsPage(title: title,cmd: cmd,));
  }

  sync(){
    Get.to(const SyncPage());
  }

  @override
  void creekBlueConnectionStatusListen(ConnectionStatus status, String? deviceName, int progress) {
    // TODO: implement creekBlueConnectionStatusListen
    print("status:${status.toString()} deviceName:$deviceName progress:$progress");

  }








}
