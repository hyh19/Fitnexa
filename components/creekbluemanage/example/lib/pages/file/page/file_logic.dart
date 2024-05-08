import 'dart:io';
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/sensor.pb.dart';
import 'package:creek_blue_manage/sensor/creek_sensor_protocol.dart';
import 'package:creek_blue_manage/upload/creek_upload.dart';
import 'package:creektool/creek_tool.dart';
import 'package:creekwidgets/creekwidgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class FileLogic extends GetxController {
  int progress = 0;
  Uint8List? datas;
  String fileName = "";
  CreekUpload? creekUpload;
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    textEditingController.text = "${CreekUpload.instance.size}";
    textEditingController2.text = "$mtu";
    getFileName();

  }
  getFileName() async{
   var name = await CreekSharedPref.get("uploadFileName");
   var path = await CreekSharedPref.get("uploadFilePath");
   if(name != null && path != null){
     if(name is String && path is String){
       fileName = name;
       File file = File(path ?? "");
       datas = await file.readAsBytes();
       update();
     }
   }
  }

  selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      fileName = result.files.first.name;
      String? path = result.files.first.path;
      File file = File(path ?? "");
      datas = await file.readAsBytes();
      await CreekSharedPref.save(fileName, "uploadFileName");
      await CreekSharedPref.save(path ?? "", "uploadFilePath");
      update();
    }
  }

  startUp() {
    if (datas != null) {
      CreekBackGroundTask.instance.addTask(TaskModel(
          type: TaskType.upload,
          level: TaskLevel.front,
          model: UploadModel(
              fileName: fileName,
              fileData: datas!.buffer.asUint8List(),
              success: () {
                progress = 100;
                update();
                CreekShowAlert().showCenterTipsAlter(Get.context!, (e) {
                  Get.back();
                }, "固件升级", "升级成功","取消","确定");
              },
              failure: (code, value) {
                CreekShowAlert().showCenterTipsAlter(Get.context!, (e) {
                  // Get.back();
                }, "固件升级", "升级失败","取消","确定");
              },
              progress: (e) {
                if (e < 1) {
                  progress = 1;
                } else {
                  progress = e;
                }
                update();
              })));

      // CreekUpload.instance.upLoadFile(fileName: fileName, fileData: datas!.buffer.asUint8List(),success: (){
      //   progress = 100;
      //   update();
      //   CreekShowAlert().showCenterTipsAlter(Get.context!, (e){
      //     Get.back();
      //   }, "固件升级", "升级成功");
      //   // Fluttertoast.showToast(msg: "上传成功",gravity: ToastGravity.CENTER);
      // },failure: (code,value){
      //   CreekShowAlert().showCenterTipsAlter(Get.context!, (e){
      //     // Get.back();
      //   }, "固件升级", "升级失败");
      //   // Fluttertoast.showToast(msg: "上传失败",gravity: ToastGravity.CENTER);
      // },progress: (e){
      //   if(e < 1){
      //     progress = 1;
      //   }else{
      //     progress = e;
      //   }
      //   update();
      // });
      print("object");
    } else {
      Fluttertoast.showToast(msg: "请选择文件", gravity: ToastGravity.CENTER);
    }
  }

  stop() {
    CreekUpload.instance?.stopUp();
  }
}
