import 'dart:io';
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LogPage extends StatefulWidget{
  const LogPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LogPageState();
  }
  
}
class LogPageState extends State<LogPage>{
  List<String> allLogs = [];
  List<String> files = [];
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
     // getAllLogsByFilter();
    // getDirectoryList();
  }
  // getDirectoryList() async{
  //   FileManage2.instance?.getDirectoryList(fileType: "txt").then((value) {
  //     files.addAll(value);
  //     FileManage2.instance?.getDirectoryList(fileType: ".log").then((value) {
  //       files.addAll(value);
  //     });
  //   });
  // }


  // getAllLogsByFilter() async{
  //   CreekLog.getLogs().then((list){
  //     for(var a in list ?? []){
  //       allLogs?.insert(0, a);
  //     }
  //     setState(() {
  //
  //     });
  //   });
  // }

  void onShare() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'creek.db');
    FileManage2.instance?.compressFolder(path).then((value) {
      Share.shareXFiles([XFile(value ?? "")], subject: "log").then((value) {
        SmartDialog.dismiss();
      }, onError: (e) {
        SmartDialog.dismiss();
      });
    });


  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Container();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("日志"),
        actions: [ Row(
          children: [
            InkWell(
              child: const Text("分享日志"),
              onTap: (){
                onShare();
              },
            ),
            const SizedBox(width: 20,)
          ],
        )],
      ),
      body: ListView.builder(
        itemCount: allLogs?.length ?? 0,
          itemBuilder: (c,i){
          String log = allLogs![i];

        return Card(
          child: Row(
            children: [
             const SizedBox(width: 10,),
              Expanded(child: Container(
                constraints: const BoxConstraints(
                  minHeight: 20,
                  maxHeight: 200,
                ),
                child: TextField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: log,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                        color: Color(0xFF101A2E),
                        fontSize: 16),
                    hintStyle: TextStyle(
                        color: Color(0xFFC0C3CD),
                        fontSize: 16),
                    contentPadding: EdgeInsets.all(10.0),
                    counterText: "",
                  ),
                ),
              )),
              const SizedBox(width: 10,),

            ],
          ),
        );
      }),
    );
  }
  
}