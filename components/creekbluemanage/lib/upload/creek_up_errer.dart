
///****************错误吗**************
Map<String,String> errerMap = {
  "0":"success",
  "1":"SVC handler is missing",
  "2":"SoftDevice has not been enabled",
  "3":"Internal Error",
  "4":"No Memory for operation",
  "5":"Not found",
  "6":"Not supported",
  "7":"Invalid Parameter",
  "8":"Invalid state",
  "9":"Invalid Length",
  "10":"Invalid Flags",
  "11":"Invalid Data",
  "12":"Invalid Data size",
  "13":"Operation timed out",
  "14":"Null Pointer",
  "15":"Forbidden Operation",
  "16":"有文件在上传",
  "17":"end",
  "18":"蓝牙未连接",
};

class CreekUpCode{
  ///获取错误吗信息
  static String codeInfo(int e){
    String? value =  errerMap[e.toString()];
    return value ?? "";
  }
}
