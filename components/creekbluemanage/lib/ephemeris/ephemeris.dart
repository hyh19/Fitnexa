import 'dart:io';
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';

import '../byte_array/byte_array.dart';
import 'ephemeris_model.dart';

/// 星历
class CreekEphemeris {
  CreekEphemeris._();

  /// 生成在线星历文件
  static Future<List<int>?> encodeOnlineFile(CreekEphemerisModel model) async {

    DateTime currentTime = DateTime.now();
    int startTime = currentTime.millisecondsSinceEpoch ~/ 1000;
    CreekLog.info('在线星历开始时间:$startTime');
    ///todo:目前相差四个小时
    int endTime = (startTime).round() + (3 * 60 * 60) + (4 * 60); //毫秒
    CreekLog.info('在线星历结束时间:$endTime');
    CreekLog.info("在线星历model数据：${model.toString()}");
    if (model.filePath.isNotEmpty) {
      final file = File(model.filePath);
      final fileData = await file.readAsBytes();
      final data = CreekByteArray.char(model.socName, length: 20).toList() +
          CreekByteArray.u32(startTime).toList() +
          CreekByteArray.u32(endTime).toList() +
          CreekByteArray.bool(model.isVaild).toList() +
          CreekByteArray.u32(model.latitude).toList() +
          CreekByteArray.char(model.latitudeDire).toList() +
          CreekByteArray.u32(model.longitude).toList() +
          CreekByteArray.char(model.longitudeDire).toList() +
          CreekByteArray.u32(model.altitude).toList() +
          CreekByteArray.u32(model.fileSize).toList() +
          ByteData(120).buffer.asUint8List() +
          fileData;
      return data;
    }
    return null;
  }


  /// 生成离线线星历文件
  static Future<List<int>?> encodeOfflineFile(CreekEphemerisModel model) async {
    if (model.filePath.isNotEmpty) {
      final file = File(model.filePath);
      final fileData = await file.readAsBytes();
      List<int> list = fileData.getRange(0, 4).toList();
      CreekLog.info('range=bytesToInt--utc=${Bytes2int.bytesToInt(list)}');
      int utc_time = Bytes2int.bytesToInt(list);
      model.startUtcTime = utc_time;
      ///结束时间为未来未三天
      model.endUtcTime = utc_time + (3 * 24 * 60 * 60);
      CreekLog.info('range=bytesToInt--endUtcTime=${model.endUtcTime}');
      final data = CreekByteArray.char(model.socName, length: 20).toList() +
          CreekByteArray.u32(model.startUtcTime!).toList() +
          CreekByteArray.u32(model.endUtcTime!).toList() +
          CreekByteArray.bool(model.isVaild).toList() +
          CreekByteArray.u32(model.latitude).toList() +
          CreekByteArray.char(model.latitudeDire).toList() +
          CreekByteArray.u32(model.longitude).toList() +
          CreekByteArray.char(model.longitudeDire).toList() +
          CreekByteArray.u32(model.altitude).toList() +
          CreekByteArray.u32(model.fileSize).toList() +
          ByteData(120).buffer.asUint8List();
      return data + fileData;
    }
    return null;
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
