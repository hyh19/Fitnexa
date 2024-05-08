part of creek_tool;


/****************************
 * 网络日志写入
 */
class FileManage4{

  factory  FileManage4() => _getInstance()!;
  static FileManage4? get instance => _getInstance();
  static FileManage4? _instance;
  IOSink? ioSink;
  String? _fileName;
  File? file;
  List<String> contents = [];
  ///默认是开始状态
  TaskState taskState = TaskState.start;
  ///默认是需要创建
  bool isCreate = true;

  FileManage4._init();

  static FileManage4? _getInstance(){
    _instance ??=  FileManage4._init();

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

  ///指定文件路径  不需要创建
  Future<File?> getNameLocalFile(String fileName) async {
    // get the path to the document directory.
    var file = await getApplicationDocumentsDirectory();
    Directory directory = Directory("${file.path}/creek");
    String dir = directory.path;
    return File('$dir/$fileName');
  }

  ///接收写入数据
  writeReceivedData(String fileName,String content) async{
    if(_fileName != fileName){
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
    if(taskState == TaskState.start){
      taskState = TaskState.inProcess;
      _doTask();
    }
  }
  ///执行队列任务
  _doTask() async{
    bool isBool = await CompleterExt.awaitFor<bool>((run) async{
      run(await _writeCounter(contents.first));
    });
    if(isBool){
      contents.remove(contents.first);
    }
    if(contents.isEmpty){
      taskState = TaskState.start;
    }else{
      _doTask();
    }
  }

  ///文件写入
  Future<bool> _writeCounter(String content) async {
    try {
      ///新文件需要重新创建
      if(isCreate){
        file = await getLocalFile(_fileName!);
      }
      ioSink ??= file?.openWrite(mode: FileMode.writeOnlyAppend);
      ioSink?.write("$content\n");
      return true;
    } catch(e) {
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