import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/health.pb.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';

abstract class CreekSyncProtocol{

  ///*****************************************
  ///获取健康支持的类型
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  getHealthType({Function(protocol_health_get_data_size_inquire_reply)? callBack,Function(String)? errCallBack});


  ///*****************************************
  ///根据类型获取大小
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  getHealthSize({required List<sync_type> listType,Function(int)? callBack,Function(String)? errCallBack});

  ///*****************************************
  ///同步数据
  ///syncOperate 是否开始同步
  ///healthType 类型
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  syncHealth({required sync_operate syncOperate,required sync_type syncType,Function(dynamic)? callBack, Function(String p1)? errCallBack});

}

CreekSyncProtocol _initSyncProtocol() {
   return SyncCommand();
}

final CreekSyncProtocol syncCommand = _initSyncProtocol();