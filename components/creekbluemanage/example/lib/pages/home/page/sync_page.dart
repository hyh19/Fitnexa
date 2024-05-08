import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/creek_listen.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/model/activity_model.dart';
import 'package:creek_blue_manage/model/heart_rate.dart';
import 'package:creek_blue_manage/model/noise_model.dart';
import 'package:creek_blue_manage/model/sleep_model.dart';
import 'package:creek_blue_manage/model/spo_model.dart';
import 'package:creek_blue_manage/model/sport_model.dart';
import 'package:creek_blue_manage/model/stress_model.dart';
import 'package:creek_blue_manage/proto/healthhead.pbenum.dart';
import 'package:creek_blue_manage_example/base/creek_scaffold.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creekwidgets/creekwidgets.dart';
import 'package:flutter/material.dart';

class SyncPage extends StatefulWidget {
  const SyncPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SyncPageState();
  }
}

class SyncPageState extends State<SyncPage> with CreekSyncTypeListen {
  List<String> dataLiat = [];

  ScrollController scrollController = ScrollController();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CreekScaffold(
      backgroundColor: Colors.white,
      appBarBackgroundColor: Colors.white,
      iconColor: Colors.black,
      title: "同步",
      action: [
        Row(
          children: [
            InkWell(
              child: const Text("其他指令",style: TextStyle(color: Colors.red),),
              onTap: (){
                foundationCommand.setTime(callBack: (){
                  print("设置时间成功");

                });
                foundationCommand.getDeviceInfo(callBack: (e){
                  print("获取设备成功");
                },errCallBack: (e){

                });
              },
            ),
            const SizedBox(width: 20,)
          ],
        )
      ],
      body: Column(
        children: [
          CreekTextButton(
            title: "开始同步",
            defaultColor: Colors.blue,
            tapColor: Colors.blue.shade300,
            onPressed: () {
              dataLiat = [];
              scrollController.jumpTo(scrollController.position.maxScrollExtent);
              setState(() {
                dataLiat.add("开始同步");
              });

              CreekBackGroundTask.instance.addTask(TaskModel(level: TaskLevel.front,type: TaskType.sync,model: SyncModel(this,progress: (e){
                if(scrollController.positions.isNotEmpty){
                  scrollController.jumpTo(scrollController.position.maxScrollExtent);
                  setState(() {
                    dataLiat.add("进度：${e.toString()}");
                  });
                }

              },success: (){
                if(scrollController.positions.isNotEmpty){
                  scrollController.jumpTo(scrollController.position.maxScrollExtent);
                  setState(() {
                    dataLiat.add("全部同步成功");
                  });
                }

              },failure: (){
                if(scrollController.positions.isNotEmpty){
                  scrollController.jumpTo(scrollController.position.maxScrollExtent);
                  setState(() {
                    dataLiat.add("同步失败");
                  });
                }

              })));

              // CreekSync.instance.sync(this,progress: (e) {
              //   scrollController.jumpTo(scrollController.position.maxScrollExtent);
              //   setState(() {
              //     dataLiat.add("进度：${e.toString()}");
              //   });
              // }, success: () {
              //   scrollController.jumpTo(scrollController.position.maxScrollExtent);
              //   setState(() {
              //     dataLiat.add("全部同步成功");
              //   });
              // }, failure: () {
              //   scrollController.jumpTo(scrollController.position.maxScrollExtent);
              //   setState(() {
              //     dataLiat.add("同步失败");
              //   });
              // });
            },
          ),
          Expanded(child: Container(color: Colors.black12,child: ListView.builder(
            controller: scrollController,
              itemCount: dataLiat.length,
              itemBuilder: (c,i){
                return Text(dataLiat[i]);
              })),),
          SizedBox(height: CreekScreen.getInstance().bottomBarHeight,)

        ],
      ),
    );
  }


  @override
  void creekSyncTypeListen(sync_type type) {
    // TODO: implement creekSyncTypeListen
    dataLiat.add("同步${type.toString()}完成");
    if (type == sync_type.SYNC_HEART_RATE) {

    } else if (type == sync_type.SYNC_STRESS) {

    } else if (type == sync_type.SYNC_SPO2) {
    
    } else if (type == sync_type.SYNC_SLEEP) {

    } else if (type == sync_type.SYNC_WORKOUT) {

    } else if (type == sync_type.SYNC_ACTIVITY) {

    } else if (type == sync_type.SYNC_SWIMMING) {
    } else if (type == sync_type.SYNC_HRV) {
    } else if (type == sync_type.SYNC_NOISE) {

    } else if (type == sync_type.SYNC_BODY_ENERGY) {
    } else if (type == sync_type.SYNC_RESPIRATORY_RATE) {
    } else if (type == sync_type.SYNC_SKIN_TEMPERATURE) {}
  }
}
