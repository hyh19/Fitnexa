import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';

class FileManage{

  factory  FileManage() => _getInstance()!;
  static FileManage? get instance => _getInstance();
  static FileManage? _instance;
  IOSink? ioSink;

  FileManage._init();

  static FileManage? _getInstance(){
    _instance ??=  FileManage._init();

    return _instance;
  }

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
  ///文件写入
  Future<bool> writeCounter(String fileName,String content) async {
    try {
      File? file = await getLocalFile(fileName);
      ioSink ??= file!.openWrite(mode: FileMode.writeOnlyAppend);
      ioSink?.write("$content\n");
      return true;
    } on FileSystemException {
      return false;
    }
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
    return "${mb.toStringAsFixed(2)}mb" ;
  }

  ///获取文件的大小
  Future<int> getIntFileSize(String fileName) async {
    File? file = await getLocalFile(fileName);
    Uint8List uint8list = await file!.readAsBytes();
    return uint8list.length ;
  }

  ///获取目录下的文件
  Future<List<String>> getDirectoryList() async{
    List<String> list = [];
    String a = (await getApplicationDocumentsDirectory()).path;
    try{
      Directory("$a/creek").listSync().forEach((element) {
        element.path.split("$a/creek/").forEach((element) {
          if(element.contains("rawdata")){
            list.add(element);
          }
        });
      });
      return list;
    }catch(e){
      return list;
    }
  }

  ///删除指定文件
  Future<bool> deleteDirectory(String name) async{
     try{
       String a = (await getApplicationDocumentsDirectory()).path;
       Directory directory = Directory("$a/creek/$name");
       print(directory.path);
       directory.deleteSync(recursive: true);
       return true;
     }catch (e){
       return false;
     }
  }

}