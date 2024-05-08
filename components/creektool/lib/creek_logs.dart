
part of creek_tool;
class CreekLog{

  ///日志
  static info(String t) async{
    String log = "${DateTime.now().toString().substring(0,19)}$t";
    printLog(log);

    FileManage2.instance?.writeReceivedData("${DateTime.now().toString().substring(0,10).replaceAll("-", "")}_log.txt",log);
  }

  ///日志
  static writeNetworkLog(String t) async{
    String log = "${DateTime.now().toString().substring(0,19)}$t";
    FileManage4.instance?.writeReceivedData("${DateTime.now().toString().substring(0,10).replaceAll("-", "")}_network.txt",log);
  }
  ///获取日志
  static Future<List<String>?> getLogs() async {
    List<String>? logs = await FileManage2.instance?.readCounter("${DateTime.now().toString().substring(0,10).replaceAll("-", "")}_log.txt");
    return logs;
  }

  ///清除日志
  static  clearLogs() async {
    bool? isBool = await FileManage2.instance?.deleteDirectory("${DateTime.now().toString().substring(0,10).replaceAll("-", "")}_log.txt");
    return isBool;
  }

  ///检测日志文件，只保存7天的数据
  static checkLogFile() async{
   List<String>? files = await FileManage2.instance?.getDirectoryList(fileType: "_log.txt");

   DateTime dateTime = DateTime.now().add(const Duration(days: -6));
   int b =  int.parse(dateTime.toString().substring(0,10).replaceAll("-", "")) ;
   for(var e in (files ?? [])){
     List<String> list = e.split("_");
     if(list.isNotEmpty){
       int a = int.parse(list[0]);
       if(a < b){
         FileManage.instance?.deleteDirectory(e);
       }
     }
   }

   List<String>? files2 = await FileManage2.instance?.getDirectoryList(fileType: "_network.txt");
   DateTime dateTime2 = DateTime.now().add(const Duration(days: -6));
   int b2 =  int.parse(dateTime2.toString().substring(0,10).replaceAll("-", "")) ;
   for(var e in (files2 ?? [])){
     List<String> list = e.split("_");
     if(list.isNotEmpty){
       int a = int.parse(list[0]);
       if(a < b2){
         FileManage.instance?.deleteDirectory(e);
       }
     }
   }
   List<String>? files3 = await FileManage2.instance?.getDirectoryList(fileType: "alexaLog");
   DateTime dateTime3 = DateTime.now().add(const Duration(days: -6));
   for(var e in (files3 ?? [])){
     String path = e.replaceAll("alexaLog", "").replaceAll(".txt", "");
     DateTime time =  DateTime.parse(path);
     if(time.isBefore(dateTime3)){
       FileManage.instance?.deleteDirectory(e);
     }
   }
   List<String>? filesAndroid = await FileManage2.instance?.getAndroidDirectoryList(fileType: "log-");
   if(filesAndroid != null && filesAndroid.isNotEmpty){
     for(var e in filesAndroid){
       String path = e.replaceAll("log-", "").replaceAll(".log", "");
       DateTime time =  DateTime.parse(path);
       if(time.isBefore(dateTime3)){
         FileManage.instance?.deleteAndroidDirectory(e);
       }

     }
   }
  }


}