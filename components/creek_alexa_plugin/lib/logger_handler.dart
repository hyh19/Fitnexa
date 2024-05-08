// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:typed_data';
import 'package:archive/archive_io.dart';
import 'package:intl/intl.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:archive/archive.dart';

enum LogType {
  ///记录alexa event
  event,

  ///记录alexa directive
  directive,

  ///记录alexa response
  info,

  ///记录alexa error
  error,

  ///记录alexa 致命问题
  fatal,

  ///记录alexa 调试内容
  debug;

  String get title {
    switch (this) {
      case LogType.event:
        return 'Event';

      case LogType.directive:
        return 'Directive';

      case LogType.info:
        return 'Info';

      case LogType.error:
        return 'Error';

      case LogType.fatal:
        return 'Fatal';

      case LogType.debug:
        return 'Debug';
    }
  }
}

enum LoggerTaskState {
  start, //开始
  inProcess //处理中
}

///任务队列
class LoggerCompleterExt {
  static Future<T> awaitFor<T>(Function(Function(T)) run) {
    var c = Completer<T>();
    run((r) => c.complete(r));
    return c.future;
  }
}

class LoggerHandler {
  static final LoggerHandler _singletonManager = LoggerHandler._internal();

  factory LoggerHandler() {
    return _singletonManager;
  }

  static initData() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String fileName = 'alexaLog$formattedDate.txt';
    _singletonManager._fileName = fileName;
    _singletonManager.getLocalFile(fileName);
  }

  LoggerHandler._internal();

  static log(LogType type, String message,
      {dynamic error = '', StackTrace? stackTrace}) async {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);

    String line = '[$formattedDate]  [${type.title}] $message';
    if (error != '') {
      line = '$line\n ===[error] ${error.toString()}';
    }
    if (stackTrace != null) {
      line = '$line\n ===[stackTrace] $stackTrace}';
    }
    _singletonManager._writeCounter(line);
  }

  IOSink? ioSink;
  String? _fileName;
  File? file;
  List<String> contents = [];

  ///默认是开始状态
  LoggerTaskState taskState = LoggerTaskState.start;

  ///默认是需要创建
  bool isCreate = true;

  ///文件路径
  Future<File?> getLocalFile(String fileName) async {
    // get the path to the document directory.
    var file = await getApplicationDocumentsDirectory();
    Directory directory = Directory("${file.path}/creek");
    try {
      bool exists = await directory.exists();
      if (!exists) {
        await directory.create();
      }
      String dir = directory.path;
      return File('$dir/$fileName');
    } catch (e) {
      return null;
    }
  }

  ///指定文件路径  不需要创建
  Future<File?> getNameLocalFile(String fileName) async {
    // get the path to the document directory.
    var file = await getApplicationDocumentsDirectory();
    Directory directory = Directory("${file.path}/creek");
    String dir = directory.path;
    return File('$dir/$fileName');
  }

  ///接收写入数据
  writeReceivedData(String fileName, String content) async {
    if (_fileName != fileName) {
      _fileName = fileName;
      isCreate = true;

      ///开启新文件需要关闭上一个文件
      if (ioSink != null) {
        ioSink!.close();
      }
      ioSink = null;
      taskState = LoggerTaskState.start;
    } else {
      isCreate = false;
    }
    contents.add(content);
    if (taskState == LoggerTaskState.start) {
      taskState = LoggerTaskState.inProcess;
      _doTask();
    }
  }

  ///执行队列任务
  _doTask() async {
    bool isBool = await LoggerCompleterExt.awaitFor<bool>((run) async {
      run(await _writeCounter(contents.first));
    });
    if (isBool) {
      contents.remove(contents.first);
    }
    if (contents.isEmpty) {
      taskState = LoggerTaskState.start;
    } else {
      _doTask();
    }
  }

  ///文件写入
  Future<bool> _writeCounter(String content) async {
    try {
      ///新文件需要重新创建
      if (isCreate) {
        file = await getLocalFile(_fileName!);
      }
      ioSink ??= file?.openWrite(mode: FileMode.writeOnlyAppend);
      ioSink?.write("$content\n");
      return true;
    } catch (e) {
      return false;
    }
  }

  close() {
    ioSink?.close();
  }

  ///文件读取
  Future<List<String>?> readCounter(String fileName) async {
    try {
      File? file = await getLocalFile(fileName);
      List<String> contents = await file!.readAsLines();
      return contents;
    } on FileSystemException {
      return null;
    }
  }

  ///获取文件的大小
  Future<String> getFileSize(String fileName) async {
    File? file = await getLocalFile(fileName);
    Uint8List uint8list = await file!.readAsBytes();
    int leng = uint8list.length;
    double mb = leng / (1024 * 1024);
    return "${mb.toStringAsFixed(2)}mb";
  }

  ///获取文件的大小
  Future<int> getIntFileSize(String fileName) async {
    File? file = await getLocalFile(fileName);
    Uint8List uint8list = await file!.readAsBytes();
    return uint8list.length;
  }

  ///获取目录下的文件
  Future<List<String>> getDirectoryList({String fileType = "rawdata"}) async {
    List<String> list = [];
    String a = (await getApplicationDocumentsDirectory()).path;
    try {
      Directory("$a/creek").listSync().forEach((element) {
        element.path.split("$a/creek/").forEach((element) {
          if (element.contains(fileType)) {
            list.add(element);
          }
        });
      });
      return list;
    } catch (e) {
      return list;
    }
  }

  ///删除指定文件
  Future<bool> deleteDirectory(String name) async {
    try {
      String a = (await getApplicationDocumentsDirectory()).path;
      Directory directory = Directory("$a/creek/$name");
      print(directory.path);
      directory.deleteSync(recursive: true);
      return true;
    } catch (e) {
      return false;
    }
  }

  ///压缩文件
  Future<File> archiveZip(List<File> files) async {
    String a = (await getApplicationDocumentsDirectory()).path;
    final directory = Directory("$a/creek");
    final zipFile = File("$a/creek/creek.zip"); // _createZipFile("creek.zip");
    try {
      var encoder = ZipFileEncoder();
      encoder.create("$a/creek/creek.zip");
      files.forEach((element) {
        encoder.addFile(element);
      });
      encoder.close();
    } catch (e) {
      print(e);
    }
    return zipFile;
  }

  Future<String> compressFolder(String dbPath) async {
    Directory sourceDir = (await getApplicationDocumentsDirectory());
    Directory sourceDir1 = Directory("${sourceDir.path}/creek");
    Directory sourceDir2 = Directory("${sourceDir.path}/isar");
    bool exists = await sourceDir2.exists();
    Archive archive = Archive();
    if (exists) {
      List<FileSystemEntity> files2 =
          sourceDir2.listSync(recursive: true, followLinks: false);
      for (var file in files2) {
        if (file is File) {
          String relativePath = file.path.substring(sourceDir.path.length);
          ArchiveFile archiveFile = ArchiveFile(
              relativePath, file.lengthSync(), await file.readAsBytes());
          archive.addFile(archiveFile);
        }
      }
    }
    List<FileSystemEntity> files =
        sourceDir1.listSync(recursive: true, followLinks: false);
    for (var file in files) {
      if (file is File) {
        String relativePath = file.path.substring(sourceDir.path.length);
        ArchiveFile archiveFile = ArchiveFile(
            relativePath, file.lengthSync(), await file.readAsBytes());
        archive.addFile(archiveFile);
      }
    }

    String relativePath = "creek.db";
    ArchiveFile archiveFile = ArchiveFile(relativePath,
        File(dbPath).lengthSync(), await File(dbPath).readAsBytes());
    archive.addFile(archiveFile);
    String zipPath =
        '${(await getTemporaryDirectory()).path}/creekLog${DateTime.now().toString().substring(0, 10)}.zip';
    File zipFile = File(zipPath);
    List<int>? a = ZipEncoder().encode(archive);
    await zipFile.writeAsBytes(a ?? []);
    return zipPath;
  }

  Future<String> compressRawDataFolder(List<String> path) async {
    Directory sourceDir = (await getApplicationDocumentsDirectory());
    Directory sourceDir2 = Directory("${sourceDir.path}/creek");
    bool exists = await sourceDir2.exists();
    Archive archive = Archive();
    if (exists) {
      List<FileSystemEntity> files2 =
          sourceDir2.listSync(recursive: true, followLinks: false);
      for (var file in files2) {
        if (file is File) {
          for (var element in path) {
            if (file.path.contains(element)) {
              String relativePath = file.path.substring(sourceDir.path.length);
              ArchiveFile archiveFile = ArchiveFile(
                  relativePath, file.lengthSync(), await file.readAsBytes());
              archive.addFile(archiveFile);
            }
          }
        }
      }
    }
    String zipPath =
        '${(await getTemporaryDirectory()).path}/rawData${DateTime.now().toString().substring(0, 10)}.zip';
    File zipFile = File(zipPath);
    List<int>? a = ZipEncoder().encode(archive);
    await zipFile.writeAsBytes(a ?? []);
    return zipPath;
  }

  ///分享文件
  Future<String> compressDialFolder() async {
    Directory sourceDir = (await getApplicationDocumentsDirectory());
    Directory sourceDir2 = Directory("${sourceDir.path}/dial");
    bool exists = await sourceDir2.exists();
    Archive archive = Archive();
    if (exists) {
      List<FileSystemEntity> files2 =
          sourceDir2.listSync(recursive: true, followLinks: false);
      for (var file in files2) {
        if (file is File) {
          String relativePath = file.path.substring(sourceDir.path.length);
          ArchiveFile archiveFile = ArchiveFile(
              relativePath, file.lengthSync(), await file.readAsBytes());
          archive.addFile(archiveFile);
        }
      }
    }
    String zipPath =
        '${(await getTemporaryDirectory()).path}/dial${DateTime.now().toString().substring(0, 10)}.zip';
    File zipFile = File(zipPath);
    List<int>? a = ZipEncoder().encode(archive);
    await zipFile.writeAsBytes(a ?? []);
    return zipPath;
  }
}
