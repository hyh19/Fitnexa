
import 'dart:async';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreekMapTask {
  factory CreekMapTask() => _getInstance();

  static CreekMapTask get instance => _getInstance();
  static CreekMapTask? _instance;

  ///地图返回回调
  Map<int, Function(Widget)?> callBackMap = {};

  ///任务队列
  List<Map<AmapController, List<LatLng>>> queueTask = [];

  ///默认是开始状态
  MapTaskState taskState = MapTaskState.start;

  CreekMapTask._internal() {
    ///注册通知
  }

  static CreekMapTask _getInstance() {
    _instance ??= CreekMapTask._internal();
    return _instance!;
  }

  ///添加任务
  void addTask(AmapController controller, List<LatLng> list) async {
    queueTask.add({controller: list});
    if (taskState == MapTaskState.start) {
      taskState = MapTaskState.inProcess;
      doTask();
    }
  }

  ///执行队列任务
  doTask() async {
    await MapCompleterExt.awaitFor<bool>((run) async {
      try {
        await queueTask.first.keys.first.addPolyline(PolylineOption(
          coordinateList: queueTask.first.values.first,
          strokeColor: Colors.red,
          width: 10,
        ));
      } catch (e) {
        print(e.toString());
      }
      run(true);
    });
    queueTask.remove(queueTask.first);
    if (queueTask.isEmpty) {
      taskState = MapTaskState.start;
    } else {
      ///还有任务进行递归操作
      doTask();
    }
  }
}

///任务队列
class MapCompleterExt {
  static Future<T> awaitFor<T>(Function(Function(T)) run) {
    var c = Completer<T>();
    run((r) => c.complete(r));
    return c.future;
  }

}

///任务队列状态
enum MapTaskState{
  start,       //开始
  inProcess    //处理中
}


