

import 'dart:io';
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage_example/base/creek_scaffold.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creektool/creek_tool.dart';
import 'package:creekwidgets/creekwidgets.dart';
import 'package:flutter/material.dart';
import 'package:creek_alexa_plugin/audio_player_manager.dart';
import 'package:flutter_sound_platform_interface/flutter_sound_platform_interface.dart';





class LogTranPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LogTranPageState();
  }
  
}
class LogTranPageState extends State<LogTranPage>{

  List<String> listData = [];
  ScrollController scrollController = ScrollController();
  int a = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CreekDown.instance?.listenData = (e){
     listData.add(BlueTool.list10Tolist16(e).toString());
     listData.add("\n");
     try{
       scrollController.jumpTo(scrollController.position.maxScrollExtent);
     }catch(e){
       CreekLog.info(e.toString());
     }
     setState(() {

     });
    };

    CreekDown.instance.listenPcmData = (e){

      AudioPlayerManager().playData(e,Codec.pcm16);

    };

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CreekScaffold(
      backgroundColor: Colors.white,
      appBarBackgroundColor: Colors.white,
      title: "日志传输",
      body: Column(
        children: [
          CreekTextButton(
            title: "开始日志传输",
            defaultColor: Colors.blue,
            tapColor: Colors.blue.shade300,
            onPressed: () {
               CreekDown.instance?.startLog(success: (){
                 listData.add("完成");
                 setState(() {

                 });
               },failure: (){
                 listData.add("失败");
                 setState(() {

                 });
               });
            },
          ),
          CreekTextButton(
            title: "pcm1",
            defaultColor: Colors.blue,
            tapColor: Colors.blue.shade300,
            onPressed: () {
              CreekDown.instance?.ceShiPcm1();
            },
          ),
          CreekTextButton(
            title: "pcm2",
            defaultColor: Colors.blue,
            tapColor: Colors.blue.shade300,
            onPressed: () {
              CreekDown.instance?.ceShiPcm2();
            },
          ),
          CreekTextButton(
            title: "end",
            defaultColor: Colors.blue,
            tapColor: Colors.blue.shade300,
            onPressed: () {
              CreekDown.instance?.ceShiPcmEnd();
            },
          ),
          CreekTextButton(
            title: "play",
            defaultColor: Colors.blue,
            tapColor: Colors.blue.shade300,
            onPressed: () async{

              FileManage.instance?.getDirectoryList(fileType: ".pcm").then((value) async {
                List<String> d = value;
                if(d.isNotEmpty){
                  d.sort((a,b){
                    int v = int.parse(a.replaceAll("-cw01.pcm", "")) ;
                    int v2 = int.parse(b.replaceAll("-cw01.pcm", "")) ;
                    return v2.compareTo(v);
                  });
                  File? file =  await FileManage3.instance?.getLocalFile(d.first);
                  Uint8List? a =  await file?.readAsBytes();
                  AudioPlayerManager().playData(a,Codec.pcm16);

                }

              });

            },
          ),
          Expanded(child: Container(color: Colors.black12,child: ListView.builder(
              controller: scrollController,
              itemCount: listData.length,
              itemBuilder: (c,i){
                return Text(listData[i]);
              })),),
          SizedBox(height: CreekScreen.getInstance().bottomBarHeight,)
        ],
      ),
    );

  }
  
}