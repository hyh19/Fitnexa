
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

///普通数据返回监听
abstract class CreekListen{
   ///蓝牙监听返回的数据
  void blueWriteListener(List<int> list);
}

///文件相关数据的返回监听
abstract class CreekFileListen{
  ///蓝牙监听返回的数据
  void blueWriteListener(List<int> list);
}

///文件接收返回监听
abstract class CreekDownListen{
  ///蓝牙监听返回的数据
  void blueWriteListener(List<int> list);
}

///同步返回监听
abstract class CreekSyncListen{
  ///蓝牙监听返回的数据
  void blueWriteListener(List<int> list);
}

///心率表带数据的返回监听
abstract class CreekHeartListen{
  ///蓝牙监听返回的数据
  void blueWriteListener(List<int> list);
}

///同步监听类型数据
abstract class CreekSyncTypeListen{
  void creekSyncTypeListen(sync_type type);
}

///获取服务器数据
abstract class CreekSyncServerListen{
  void creekSyncServerListen(SyncServerUpDownloadType downloadType,SyncServerType type,Uint8List data);
}

///监听蓝牙连接状态
abstract class CreekBlueConnectionStatusListen{
  void creekBlueConnectionStatusListen(ConnectionStatus status,String? deviceName,int progress);
}


