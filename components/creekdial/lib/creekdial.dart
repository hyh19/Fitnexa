library creekdial;

import 'dart:io';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creekdial/dial/dial_tool.dart';
import 'package:creekdial/file/file_tool.dart';
import 'package:flutter/services.dart';

class CreekDial {
  CreekDial._();

  static writeFile(
      {required String mac,
      required String dialName,
      required List<int> data}) async {
    final file = await FileTool.createDial(mac, '$dialName.bin');
    file.writeAsBytes(data);
  }

  /// 解压文件
  static Future<bool> extractFile(String mac, String dialName) async {
    final dir = await FileTool.dialDirPath(mac, dialName);
    final isExists = await dir.exists();
    if (!isExists) {
      final zip = await FileTool.dialZipPath(mac, dialName);
      final result = await FileTool.extractFile(zip, dir.path);
      await FileTool.deleteFile(zip);
      return result;
    }
    return true;
  }

  /// 删除表盘文件夹
  static Future deleteDir(String mac, String dialName) async {
    final dir = await FileTool.dialDirPath(mac, dialName);
    final isExists = await dir.exists();
    if (isExists) {
      await FileTool.deleteDir('dial/$mac/$dialName');
    }
  }

  /// 上传表盘文件
  static uploadFile(
      {required String dialName,
      required List<int> data,
      Function(int)? progress,
      Function? success,
      Function(int, String)? failure}) async {
    if (data.isNotEmpty) {
      CreekBackGroundTask.instance.addTask(TaskModel(
          type: TaskType.upload,
          level: TaskLevel.front,
          model: UploadModel(
              fileName: '$dialName.bin',
              fileData: data,
              success: success,
              failure: failure,
              progress: progress)));
    }
  }
}
