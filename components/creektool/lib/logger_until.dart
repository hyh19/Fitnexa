// 可以在utils定义log.dart
part of creek_tool;

void printLog(Object message) {
  if (kDebugMode) {
    MYCustomTrace programInfo = MYCustomTrace(StackTrace.current);
    print("文件: ${programInfo.fileName}, 行: ${programInfo.lineNumber}, 打印信息: $message");
  }
}

class MYCustomTrace {
  final StackTrace _trace;
  String? fileName;
  int? lineNumber;
  int? columnNumber;

  MYCustomTrace(this._trace) {
    _parseTrace();
  }

  void _parseTrace() {
    var traceString = this._trace.toString().split("\n")[0];
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
    var fileInfo = traceString.substring(indexOfFileName);
    var listOfInfos = fileInfo.split(":");
    fileName = listOfInfos[0];
    lineNumber = int.parse(listOfInfos[1]);
    var columnStr = listOfInfos[2];
    columnStr = columnStr.replaceFirst(")", "");
    columnNumber = int.parse(columnStr);
  }
}