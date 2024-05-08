import 'dart:typed_data';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/upload/creek_upload.dart';
import 'package:creek_blue_manage_example/base/creek_scaffold.dart';
import 'package:creek_blue_manage_example/pages/file/page/file_logic.dart';
import 'package:creek_blue_manage_example/pages/home/view/home_widget.dart';
import 'package:creekbase/creek_base.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class FilePage extends StatelessWidget {
  final logic = Get.put(FileLogic());
  FilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<FileLogic>(builder: (logic){
      return CreekScaffold(
        backgroundColor: Colors.white,
        appBarBackgroundColor: Colors.white,
        iconColor: Colors.black,
        title: "文件上传",
        body: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 20.w,),
                Text("mtu",style: TextStyle(fontSize: 30.sp),),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Container(
                    height: 40.w,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                        BorderRadius.all(Radius.circular(5.0))),
                    child: Center(child: Padding(
                      padding: EdgeInsets.only(
                          left: 10.w,
                          right: 30.w),
                      child: TextField(
                        controller: logic.textEditingController2 ,
                        keyboardType: TextInputType.number,
                        maxLength: 7,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(
                              color: const Color(0xFF101A2E),
                              fontSize: 20.sp),
                          hintStyle:  TextStyle(
                              color: const Color(0xFFC0C3CD),
                              fontSize: 20.sp),
                          contentPadding: const EdgeInsets.all(10.0),
                          counterText: "",
                        ),
                        onChanged:(e){
                          mtu = int.parse(e);
                        } ,
                      ),
                    ),) ,
                  ),
                ),
                SizedBox(width: 20.w,),
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 20.w,),
                Text("size",style: TextStyle(fontSize: 30.sp),),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Container(
                    height: 40.w,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                        BorderRadius.all(Radius.circular(5.0))),
                    child: Center(child: Padding(
                      padding: EdgeInsets.only(
                          left: 10.w,
                          right: 30.w),
                      child: TextField(
                        controller: logic.textEditingController ,
                        keyboardType: TextInputType.number,
                        maxLength: 7,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(
                              color: const Color(0xFF101A2E),
                              fontSize: 20.sp),
                          hintStyle:  TextStyle(
                              color: const Color(0xFFC0C3CD),
                              fontSize: 20.sp),
                          contentPadding: const EdgeInsets.all(10.0),
                          counterText: "",
                        ),
                        onChanged:(e){
                          CreekUpload.instance.size = int.parse(e);
                        } ,
                      ),
                    ),) ,
                  ),
                ),
                SizedBox(width: 20.w,),
              ],
            ),
            const SizedBox(height: 50,),
            TextButton(onPressed: () async{
              logic.selectFile();
            }, child: const Text("选择文件")),
            const  SizedBox(height: 10,),
            Text(logic.fileName),
            const  SizedBox(height: 10,),
            TextButton(onPressed: () async{
              logic.startUp();
            }, child: const Text("开始上传")),
            const  SizedBox(height: 10,),
            TextButton(onPressed: () async{
              logic.stop();
            }, child: const Text("暂停上传")),
            Row(
              children:  [
                const Expanded(child: SizedBox()),
                Text("上传进度:${logic.progress}%"),
                const Expanded(child: SizedBox()),
              ],
            ),
          ],
        ),

      );
    });
  }
}


