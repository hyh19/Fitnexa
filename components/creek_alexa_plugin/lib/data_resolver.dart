import 'dart:convert';
import 'dart:isolate';
import 'package:creek_alexa_plugin/logger_handler.dart';

class DataResolver {
  static int? extractTemperature(String input) {
    // 使用正则表达式匹配数字部分
    RegExp regExp = RegExp(r'\d+');
    RegExpMatch? match = regExp.firstMatch(input);

    if (match != null) {
      // 将匹配到的文本转换为整数
      String? matchText = match.group(0);
      if (matchText != null) {
        return int.parse(matchText);
      }
    }
    // 如果没有找到匹配的数字，可以返回默认值或者处理其他逻辑
    return null;
  }

  static List<int> extractWebVTTContent(String vttString) {
    final vttStringData = vttString.codeUnits;
    final vtt = utf8.decode(vttStringData);

    List<String> lines = LineSplitter.split(vtt).toList();
    List<int> extractedContent = [];

    bool isContentSection = false;

    for (String line in lines) {
      if (line.trim().isEmpty == false) {
        if (line
            .trim()
            .startsWith(RegExp(r'\d+:\d+\.\d+\s+-->\s+\d+:\d+\.\d+'))) {
          print('时间行 $line');
        } else {
          //空格行之后有一行序号 不需要添加进来
          if (isContentSection) {
            isContentSection = false;
          } else {
            if (extractedContent.isEmpty && line.trim() == 'WEBVTT') {
              print('第一行不添加 $line');
            } else {
              List<int> lineData = utf8.encode(line.trim());
              extractedContent = [...extractedContent, ...lineData];
            }
          }
        }
      } else {
        isContentSection = true;
      }
    }

    LoggerHandler.log(
        LogType.info, '语音识别 文本 解析后 ${utf8.decode(extractedContent)}');
    return extractedContent;
  }

  static List<Map<String, dynamic>> _extractContentData(List<int> data) {
    String dataString = String.fromCharCodes(data);
    LoggerHandler.log(LogType.info, '解析数据 解析前 $dataString');
    List<String> lines = LineSplitter.split(dataString).toList();
    bool isContentSection = false;
    const jsonType = "application/json";
    const audioType = "application/octet-stream";
    int contentTypeIndex = 0;
    String type = '';
    String contentType = 'Content-Type:';
    List<int> contents = [];
    List<Map<String, dynamic>> list = [];

    int startIndex = 0;
    int audioStartIndex = 0;
    int audioEndIndex = data.length;

    for (int i = 0; i < lines.length; i++) {
      String line = lines[i];
      final lineLength = line.codeUnits.length + '\r\n'.codeUnits.length;
      print('lineLength $lineLength');
      startIndex = startIndex + lineLength;

      if (line.contains('--------abcde123')) {
        LoggerHandler.log(LogType.info, '数据头 行$i');
        if (isContentSection == false && i < line.length - 1) {
          isContentSection = true;
        } else {
          if (type.contains(jsonType)) {
            try {
              String contentMap = String.fromCharCodes(contents);
              Map<String, dynamic> jsonContent = json.decode(contentMap);
              list.add({'type': jsonType, 'content': jsonContent});
            } catch (error, stackTrace) {
              final messageString = String.fromCharCodes(contents);
              print('messageString == $messageString');
              LoggerHandler.log(LogType.error, '解析数据错误  $messageString',
                  error: error, stackTrace: stackTrace);
            }
          } else if (type.contains(audioType)) {
            LoggerHandler.log(LogType.info, '音频数据尾 行$i');
            audioEndIndex =
                startIndex - line.codeUnits.length - '\r\n'.codeUnits.length;
            if (audioEndIndex > data.length) {
              audioEndIndex =
                  data.length - line.codeUnits.length - '\r\n'.codeUnits.length;
            }
            LoggerHandler.log(LogType.info,
                'start $audioStartIndex, end $audioEndIndex, total ${data.length}');

            print(
                'start $audioStartIndex, end $audioEndIndex, total ${data.length}');
            List<int> audioData = data.sublist(audioStartIndex, audioEndIndex);
            String contentMap = String.fromCharCodes(audioData);
            print('audioDataString ==== $contentMap');
            LoggerHandler.log(LogType.info, '截取后的音频数据为  $contentMap');

            list.add({'type': audioType, 'content': audioData});

            audioStartIndex = 0;
            audioEndIndex = 0;
          } else {
            print('Unknown Content-Type:  $type');
            LoggerHandler.log(
                LogType.error, '解析数据错误  Unknown Content-Type:  $type');
          }
          contents = [];
          type = '';
          contentTypeIndex = 0;
        }
      } else if (line.startsWith(contentType)) {
        type = line.trim().substring(contentType.length);
        if (type.contains(audioType)) {
          audioStartIndex = startIndex;
        }
        contentTypeIndex = i;
      } else if (line.trim().isEmpty) {
        startIndex = startIndex + '\r\n'.codeUnits.length;
      } else {
        if (i > contentTypeIndex &&
            contentTypeIndex != 0 &&
            type.contains(audioType) == false) {
          if ((i == contentTypeIndex + 1 && line.trim().isNotEmpty) ||
              i != contentTypeIndex + 1) {
            final lineData = line.codeUnits;
            contents = [...contents, ...lineData];
          }
          // }else if(line == '--------abcde123--'){
          //   print('结尾行 $line');
        } else {
          // print('不能收入content 数据 $line');
        }
      }
    }
    print('最终长度  $startIndex');
    return list;
  }

  static _extractContentSubIsolate(SendPort sendPort) {
    ReceivePort subReceivePort = ReceivePort();
    SendPort subSendPort = subReceivePort.sendPort;

    sendPort.send(subSendPort);

    subReceivePort.listen((data) {
      if (data is List<int>) {
        final list = _extractContentData(data);
        sendPort.send(list);
      }
    });
  }

  static extractContent(
      List<int> data, Function(List<Map<String, dynamic>>) callback) async {
    LoggerHandler.log(LogType.info, '解析数据 开始解析');
    final list = _extractContentData(data);
    if (list.isEmpty) {
      LoggerHandler.log(LogType.error, '解析数据 类型有误');
    } else {
      LoggerHandler.log(LogType.info, '解析数据 完成解析');
      callback(list);
    }
    // ReceivePort receivePort = ReceivePort();
    // SendPort sendPort = receivePort.sendPort;
    // Isolate subIsolate =  await Isolate.spawn(_extractContentSubIsolate, sendPort);
    //
    // receivePort.listen((message) {
    //   if(message is SendPort){
    //     SendPort subSendPort = message;
    //     subSendPort.send(data);
    //   }else if (message is List<Map<String, dynamic>>){
    //     subIsolate.kill(priority: Isolate.immediate);
    //     LoggerHandler.log(LogType.info, '解析数据 完成解析');
    //     callback(message);
    //   }else{
    //     LoggerHandler.log(LogType.error, '解析数据 类型有误 $message');
    //   }
    // });
  }
}
