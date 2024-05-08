import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

extension StringEx on String {
  String get fileName => basename(this);

  String get dir => dirname(this);
}

class FileTool {
  FileTool._();

  /// 解压文件
  static Future<bool> extractFile(String archive, String outPath) async {
    try {
      await extractFileToDisk(archive, outPath);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  /// dial文件夹下的表盘列表
  static Future<List<String>> dialDirList() async {
    final fileList = await _dirList('dial');
    List<String> dirs = [];
    await for (FileSystemEntity fileSystemEntity in fileList) {
      final type = FileSystemEntity.typeSync(fileSystemEntity.path);
      if (type == FileSystemEntityType.directory) {
        dirs.add(fileSystemEntity.path);
      }
    }
    return dirs;
  }

  /// 表盘配置文件列表
  static Future<List<String>> dialFileList(String mac, String dialName) async {
    final fileList =
        await _dirList('dial/$mac/$dialName/firmware', recursive: true);
    List<String> files = [];
    await for (FileSystemEntity fileSystemEntity in fileList) {
      final type = FileSystemEntity.typeSync(fileSystemEntity.path);
      if (type == FileSystemEntityType.file &&
          !fileSystemEntity.path.contains('.DS_Store') &&
          !fileSystemEntity.path.contains('.lz4')&&!fileSystemEntity.path.contains('app_preview.png')) {
        files.add(fileSystemEntity.path);
      }
    }
    return files;
  }

  /// 表盘app文件
  static Future<List<String>> appFileList(String mac, String dialName) async {
    final fileList = await _dirList('dial/$mac/$dialName/app', recursive: true);
    List<String> files = [];
    await for (FileSystemEntity fileSystemEntity in fileList) {
      final type = FileSystemEntity.typeSync(fileSystemEntity.path);
      if (type == FileSystemEntityType.file) {
        files.add(fileSystemEntity.path);
      }
    }
    return files;
  }

  /// 获取表盘刻度文件
  static Future<List<String>> scaleFileList(String mac, String dialName,
      {String? colorName}) async {
    var path = 'dial/$mac/$dialName/app/scale';
    if (colorName != null) {
      path = 'dial/$mac/$dialName/app/$colorName/scale';
    }
    final fileList = await _dirList(path, recursive: true);
    List<String> files = [];
    await for (FileSystemEntity fileSystemEntity in fileList) {
      final type = FileSystemEntity.typeSync(fileSystemEntity.path);
      if (type == FileSystemEntityType.file) {
        if (!fileSystemEntity.path.contains('.DS_Store')) {
          files.add(fileSystemEntity.path);
        }
      }
    }
    return files;
  }

  static Future<File> createDial(String mac, String name) async {
    final file = await _createFile('dial/$mac/$name', recursive: true);
    return file;
  }

  /// 表盘包压缩包
  static Future<String> dialZipPath(String mac, String dialName) async {
    final path = await _filePath('dial/$mac/$dialName.zip');
    return path;
  }

  /// 表盘包文件夹
  static Future<Directory> dialDirPath(String mac, String dialName) async {
    final path = await _filePath('dial/$mac/$dialName');
    return Directory(path);
  }

  /// dial.json文件路径
  static Future<String> dialJsonPath(String mac, String dialName) async {
    final path = await _filePath('dial/$mac/$dialName/firmware/dial.json');
    return path;
  }

  /// app.json文件路径
  static Future<String> appJsonPath(String mac, String dialName) async {
    final path = await _filePath('dial/$mac/$dialName/app/app.json');
    return path;
  }

  /// 读取json文件 (json文本)
  static Future<Map<String, dynamic>> mapFromJson(String path) async {
    final jsonStr = await File(path).readAsString();
    final dic = json.decode(jsonStr);
    return dic;
  }

  /// 读取json文件 (bytes数组)
  static Future<Uint8List> bytesFromJson(String path) async {
    final bytes = await File(path).readAsBytes();
    return bytes;
  }

  /// 保存bytes到文件
  static Future<String> saveBytes(String path, List<int> bytes) async {
    final file = await File(path).writeAsBytes(bytes);
    return file.path;
  }

  /// 创建文件夹
  static Future<Directory> createDir(String name,
      {bool recursive = false}) async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = '${documentsDirectory.path}${Platform.pathSeparator}$name';
    final dir = Directory(path);
    final exist = await dir.exists();
    if (exist) {
      print('当前文件夹已经存在');
      return dir;
    } else {
      var result = await dir.create(recursive: recursive);
      print('$result');
      return result;
    }
  }

  /// 创建文件
  static Future<File> _createFile(String name, {bool recursive = false}) async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = '${documentsDirectory.path}${Platform.pathSeparator}$name';
    final file = File(path);
    final exist = file.existsSync();
    if (exist) {
      print('当前文件已经存在');
      return file;
    } else {
      var result = await file.create(recursive: recursive);
      print('$result');
      return result;
    }
  }

  /// 文件列表
  static Future<Stream<FileSystemEntity>> _dirList(String name,
      {bool recursive = false}) async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = '${documentsDirectory.path}/$name';

    final fileList = Directory(path).list(recursive: recursive);
    return fileList;
  }

  /// 文件路径
  static Future<String> _filePath(String name) async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = '${documentsDirectory.path}/$name';
    return path;
  }

  /// 删除文件夹
  static Future<String> deleteDir(String name) async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = '${documentsDirectory.path}${Platform.pathSeparator}$name';
    final dir = Directory(path);
    final exist = await dir.exists();
    if (exist) {
      final fileSystemEntity = await dir.delete(recursive: true);
      return fileSystemEntity.path;
    } else {
      return path;
    }
  }

  /// 删除文件
  static Future<String> deleteFile(String filePath) async {
    final file = File(filePath);
    final exist = await file.exists();
    if (exist) {
      final fileSystemEntity = await File(filePath).delete(recursive: true);
      return fileSystemEntity.path;
    } else {
      return filePath;
    }
  }

  static Future<String?> copyFile(String oldPath, String newPath) async {
    final file = File(oldPath);
    final isExist = await file.exists();
    if (isExist) {
      final path = file.copySync(newPath).path;
      return path;
    }
    return null;
  }
}
