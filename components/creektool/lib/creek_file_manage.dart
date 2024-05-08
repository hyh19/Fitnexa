part of creek_tool;

/*********************
 * rawdata 写入
 */


class FileManage{

  factory  FileManage() => _getInstance()!;
  static FileManage? get instance => _getInstance();
  static FileManage? _instance;
  IOSink? ioSink;
  String? _fileName;
  File? file;
  List<String> contents = [];
  ///默认是开始状态
  TaskState taskState = TaskState.start;
  ///默认是需要创建
  bool isCreate = true;

  int count = 0;

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
      CreekLog.info("创建文件夹异常:${e.toString()}");
      return null;
    }
  }
  ///删除指定文件
  Future<bool> deleteHeaderDirectory(String name) async{
    try{
      var file = await getApplicationDocumentsDirectory();
      Directory directory = Directory("${file.path}/creek/header");
      directory.deleteSync(recursive: true);
      return true;
    }catch (e){
      return false;
    }
  }
  Future<File?> getHeadPhotoFile(String fileName) async {
    var file = await getApplicationDocumentsDirectory();
    Directory directory = Directory("${file.path}/creek/header");
    try {
      bool exists = await directory.exists();
      if (!exists) {
        await directory.create();
      }
      String dir = directory.path;
      return File('$dir/$fileName');
    } catch (e) {
      CreekLog.info("创建文件夹异常:${e.toString()}");
      return null;
    }
  }

  Future<String?> getHeadPhotoDirectoryFile({String fileType = ".jpg"}) async {
      String? path;
      String a = (await getApplicationDocumentsDirectory()).path;
      try{
        var listSync =await Directory("$a/creek/header").listSync();
        for (var element in listSync) {
          if( element.path.endsWith(fileType)){
            path=element.path;
          }
        }
        return path;
      }catch(e){
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

  String getFileName(String url) {
    RegExp regExp = RegExp(r'.+(\/|%2F)(.+)\?.+');
    //This Regex won't work if you remove ?alt...token
    var matches = regExp.allMatches(url);
    var match = matches.elementAt(0);
    print(Uri.decodeFull(match.group(2)!));
    return Uri.decodeFull(match.group(2)!);
  }
  ///接收写入数据
  writeReceivedData(String fileName,String content) async{
    if(!(_fileName ?? "").contains(fileName)){
      contents = [];
      count = 0;
      _fileName = fileName;
      isCreate = true;
      ///开启新文件需要关闭上一个文件
      if(ioSink != null){
        ioSink!.close();
      }
      ioSink = null;
      taskState = TaskState.start;
    }else{
      isCreate = false;
    }
    contents.add(content);
    print("contents数量：${contents.length}");
    if(taskState == TaskState.start){
      taskState = TaskState.inProcess;
      _doTask();
    }
  }
  ///执行队列任务
  _doTask() async{
    String e = contents.first;
    bool isBool = await CompleterExt.awaitFor<bool>((run) async{
      run(await _writeCounter(e));
    });
    if(isBool){
      contents.remove(e);
    }
    if(contents.isEmpty){
      print("写完了");
      taskState = TaskState.start;
    }else{
      print("循环执行");
      _doTask();
    }
  }
  Future<File?> getNameLocalLogoFile(String fileName) async {
    // get the path to the document directory.
    var file = await getApplicationDocumentsDirectory();
    Directory directory = Directory("${file.path}/logo");
    try {
      bool exists = await directory.exists();
      if (!exists) {
        await directory.create();
      }
      String dir = directory.path;
      return File('$dir/$fileName');
    } catch (e) {
      CreekLog.info("创建文件夹异常:${e.toString()}");
      return null;
    }

  }


  ///文件写入
  Future<bool> _writeCounter(String content) async {
    try {
      ///新文件需要重新创建
      if(isCreate){
        file = await getLocalFile(_fileName!);
        CreekLog.info("打开新文件：$_fileName");
      }
      ioSink ??= file?.openWrite(mode: FileMode.writeOnlyAppend);
      ioSink?.write("$content\n");
      count = count + 1;
      print("文件写入成功数:${count}");
      return true;
    } catch(e) {
      CreekLog.info("写入文件异常:${e.toString()}");
      return false;
    }
  }

   close(){
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
    return "${mb.toStringAsFixed(2)}mb" ;
  }

  ///获取文件的大小
  Future<int> getIntFileSize(String fileName) async {
    File? file = await getLocalFile(fileName);
    Uint8List uint8list = await file!.readAsBytes();
    return uint8list.length ;
  }

  ///获取目录下的文件
  Future<List<String>> getDirectoryList({String fileType = "rawdata"}) async{
    List<String> list = [];
    String a = (await getApplicationDocumentsDirectory()).path;
    try{
      Directory("$a/creek").listSync().forEach((element) {
        element.path.split("$a/creek/").forEach((element) {
          if(element.contains(fileType)){
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
  Future<bool> deleteAndroidDirectory(String name) async{
    try{
      String a = (await getApplicationDocumentsDirectory()).path;
      Directory directory = Directory("$a/creek/Android_Log/$name");
      print(directory.path);
      directory.deleteSync(recursive: true);
      return true;
    }catch (e){
      return false;
    }
  }
  ///压缩文件
  Future<File> archiveZip(List<File> files) async{
    String a = (await getApplicationDocumentsDirectory()).path;
    final directory = Directory("$a/creek");
    final zipFile = File("$a/creek/creek.zip"); // _createZipFile("creek.zip");
     try{
       var encoder = ZipFileEncoder();
       encoder.create("$a/creek/creek.zip");
       files.forEach((element) {
         encoder.addFile(element);
       });
       encoder.close();
     }catch(e){
       print(e);
     }
     return zipFile;
  }


}