import 'dart:convert';

import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';

///文件头
class CreekUploadHead{

  FileProtocol fileProtocol = FileProtocol.start; /// 文件传输协议帧 一个字节
  int index = 0;    /// 包的编号 一个字节

  ///编码
  List<int> modelToUint8List(){
    List<int> listData = [];
    listData.add(BlueTool.fileProtocolToCoding(fileProtocol));
    listData.add(index);
    return listData;
  }
  ///解码
  CreekUploadHead uint8ListToModel(List<int> list){
    CreekUploadHead creekUploadHead = CreekUploadHead();
    creekUploadHead.fileProtocol = BlueTool.fileProtocolToDecoding(list[0]);
    creekUploadHead.index = list[1];
    return creekUploadHead;
  }


}
///发送开始帧数据模型
class CreekRequestModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  int fileSize = 0;     ///压缩包的大小  4个字节
  int originalSize = 0;  ///原始文件大小 4个字节
  int replySize = 1;      ///app发送多少包回复一包
  String fileName = "file.fw";  ///文件名字

  ///编码
  List<int> modelToUint8List(){
    List<int> listData = [];
    listData.addAll(head.modelToUint8List());
    listData.addAll(BlueTool.int4ToList(fileSize));
    listData.addAll(BlueTool.int4ToList(originalSize));
    listData.add(replySize);
    List<int> list = [];
    if(fileName.codeUnits.length < 64){
      list.addAll(utf8.encode(fileName));
      do{
        list.add(0);
      }while(list.length == 64);
    }
    listData.addAll(list);
    return listData;
  }
}

///alexa发送开始帧数据模型
class CreekAlexaRequestModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  int fileSize = 0;     ///压缩包的大小  4个字节
  int originalSize = 0;  ///原始文件大小 4个字节
  int replySize = 1;      ///app发送多少包回复一包
  String fileName = "file.pcm";  ///文件名字

  ///编码
  List<int> modelToUint8List(){
    List<int> listData = [];
    listData.addAll(head.modelToUint8List());
    listData.addAll(BlueTool.int4ToList(fileSize));
    listData.addAll(BlueTool.int4ToList(originalSize));
    listData.add(replySize);
    List<int> list = [];
    if(fileName.codeUnits.length < 64){
      list.addAll(utf8.encode(fileName));
      do{
        list.add(0);
      }while(list.length == 64);
    }
    listData.addAll(list);
    return listData;
  }
}



///发送数据模型
class CreekRequestMiddleModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  List<int> data = [];     ///一个字节


  ///编码
  List<int> modelToUint8List(){
    List<int> listData = [];
    listData.addAll(head.modelToUint8List());
    listData.addAll(data);
    return listData;
  }
}

///结束数据模型
class CreekRequestEndModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  int code = 0;     ///错误码
  int checkCode = 0;   ///收到数据的crc校验码 4个字节


  ///编码
  List<int> modelToUint8List(){
    List<int> listData = [];
    listData.addAll(head.modelToUint8List());
    listData.add(code);
    listData.addAll(BlueTool.int4ToList(checkCode));
    return listData;
  }
}

///alexa结束数据模型
class CreekAlexaRequestEndModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  int code = 0;     ///错误码


  ///编码
  List<int> modelToUint8List(){
    List<int> listData = [];
    listData.addAll(head.modelToUint8List());
    listData.add(code);
    return listData;
  }
}


///收到的数据模型
class CreekReplyModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  int code = 0;       ///错误码    0 成功  非0失败
  int offset = 0;     ///当前一共收到数据的偏移
  int checkCode = 0;   ///收到数据的crc校验码

  ///解码
  CreekReplyModel uint8ListToModel(List<int> list){

    CreekReplyModel creekReplyModel = CreekReplyModel();
    CreekUploadHead? creekUploadHead = CreekUploadHead().uint8ListToModel([list[0],list[1]]);
    creekReplyModel.head = creekUploadHead;
    if(list.length > 2){

      creekReplyModel.code = list[2];
    }
    if(list.length > 6){
      creekReplyModel.offset = BlueTool.listTo4int(list.sublist(3,7));
    }
    if(list.length > 10){
      creekReplyModel.checkCode = BlueTool.listTo4int(list.sublist(7,11));;
    }
    return creekReplyModel;
  }

}

///收到的数据模型
class CreekAlexaReplyModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  int code = 0;       ///错误码    0 成功  非0失败

  ///解码
  CreekAlexaReplyModel uint8ListToModel(List<int> list){

    CreekAlexaReplyModel creekReplyModel = CreekAlexaReplyModel();
    CreekUploadHead? creekUploadHead = CreekUploadHead().uint8ListToModel([list[0],list[1]]);
    creekReplyModel.head = creekUploadHead;
    if(list.length > 2){
      creekReplyModel.code = list[2];
    }
    return creekReplyModel;
  }

}