import 'dart:io';
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creekdial/byte_array/byte_array.dart';
import 'package:creekdial/ephemeris/ephemeris_model.dart';
import 'package:creektool/creek_tool.dart';

/// 星历
class Ephemeris {
  Ephemeris._();

  /// 生成在线星历文件
  static Future<List<int>?> _encodeOnlineFile(EphemerisModel model) async {
    if (model.filePath.isNotEmpty) {
      final file = File(model.filePath);
      final fileData = await file.readAsBytes();
      final data = ByteArray.char(model.socName, length: 20).toList() +
          ByteArray.u32(model.startUtcTime!).toList() +
          ByteArray.u32(model.endUtcTime!).toList() +
          ByteArray.bool(model.isVaild).toList() +
          ByteArray.u32(model.latitude).toList() +
          ByteArray.char(model.latitudeDire).toList() +
          ByteArray.u32(model.longitude).toList() +
          ByteArray.char(model.longitudeDire).toList() +
          ByteArray.u32(model.altitude).toList() +
          ByteArray.u32(model.fileSize).toList() +
          ByteData(120).buffer.asUint8List() +
          fileData;
      return data;
    }
    return null;
  }

  static Future<List<int>?> _encodeOfflineFile(EphemerisModel model,{ Function(int)? startUtcTimeCallBack}) async {
    if (model.filePath.isNotEmpty) {
      final file = File(model.filePath);
      final fileData = await file.readAsBytes();

      ///获取文件前四个字节
      List<int> list = fileData.getRange(0, 4).toList();
      CreekLog.info('range=bytesToInt--utc=${Bytes2int.bytesToInt(list)}');
      int utc_time = Bytes2int.bytesToInt(list);
      model.startUtcTime = utc_time;
      startUtcTimeCallBack?.call(utc_time);
      ///结束时间为未来未三天
      model.endUtcTime = utc_time + (3 * 24 * 60 * 60);
      CreekLog.info('range=bytesToInt--endUtcTime=${model.endUtcTime}');
      final data = ByteArray.char(model.socName, length: 20).toList() +
          ByteArray.u32(model.startUtcTime!).toList() +
          ByteArray.u32(model.endUtcTime!).toList() +
          ByteArray.bool(model.isVaild).toList() +
          ByteArray.u32(model.latitude).toList() +
          ByteArray.char(model.latitudeDire).toList() +
          ByteArray.u32(model.longitude).toList() +
          ByteArray.char(model.longitudeDire).toList() +
          ByteArray.u32(model.altitude).toList() +
          ByteArray.u32(model.fileSize).toList() +
          ByteData(120).buffer.asUint8List();
      // final data1 = ByteArray.u32(utc_time).toList() +
      //     ByteArray.u32(model.fileSize).toList() +
      //     fileData;
      return data + fileData;
    }
    return null;
  }

  /// 上传在线星历文件
  static uploadOnlineFile(
    EphemerisModel model, {
    Function? success,
    Function(int, String)? failure,
  }) async {
    final data = await _encodeOnlineFile(model);
    if (data != null) {
      CreekLog.info('lxk______上传在线星历文件');
      CreekBackGroundTask.instance.addTask(TaskModel(
          type: TaskType.upload,
          level: TaskLevel.background,
          model: UploadModel(
              fileName: 'ephemeris.gnss',
              fileData: data,
              success: () {
                CreekLog.info("lxk_____encodeOnlineFile执行完成");
                success?.call();
              },
              failure: (code, msg) {
                CreekLog.info("lxk______encodeOnlineFile执行完成failure");
                failure?.call(code, msg);
              },)));

      // CreekUpload.instance.upLoadFile(
      //   fileName: 'ephemeris.gnss',
      //   fileData: data,
      //   success: () {
      //     CreekLog.info("lxk_____encodeOnlineFile执行完成");
      //     success?.call();
      //   },
      //   failure: (code, msg) {
      //     CreekLog.info("lxk______encodeOnlineFile执行完成failure");
      //     failure?.call(code, msg);
      //   },
      // );
    }
  }

  /// 上传离线星历文件
  static uploadOfflineFile(
    EphemerisModel model, {
   // Function? success,
    Function(int, String)? failure,
        Function(int?)? success
  }) async {
    int?startUtcTime;
    final data = await _encodeOfflineFile(model,startUtcTimeCallBack:(int utc){
      startUtcTime=utc;
    });
    CreekLog.info("model数据${model.toString()}");
    CreekLog.info("当前蓝牙连接上离线星历发送固件数据_encode");
    if (data != null) {
      CreekLog.info('lxk______上传离线星历文件');

      CreekBackGroundTask.instance.addTask(TaskModel(
          type: TaskType.upload,
          level: TaskLevel.background,
          model: UploadModel(
            fileName: 'offlineEphemeris.agnss',
            fileData: data,
            success: () {
              CreekLog.info("lxk_____encodeOnlineFile执行完成");
              success?.call(startUtcTime);
            },
            failure: (code, msg) {
              CreekLog.info("lxk______encodeOnlineFile执行完成failure");
              failure?.call(code, msg);
            },)));

    }
  }
}

class Bytes2int {
  static int bytesToInt(List bytes) {
    int i;
    i = ((bytes[0] & 0xff) |
        ((bytes[1] & 0xff) << 8) |
        ((bytes[2] & 0xff) << 16) |
        ((bytes[3] & 0xff) << 24));
    return i;
  }
}
