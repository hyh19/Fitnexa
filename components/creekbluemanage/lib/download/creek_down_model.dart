import 'dart:convert';
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/upload/creek_upload_model.dart';

///ble开始回复模型
class CreekDownStartReplyModel{
  CreekUploadHead head = CreekUploadHead();
  String fileName = "";
  ///解码
  CreekDownStartReplyModel uint8ListToModel(List<int> list){
    CreekDownStartReplyModel creekReplyModel = CreekDownStartReplyModel();
    CreekUploadHead? creekUploadHead = CreekUploadHead().uint8ListToModel([list[0],list[1]]);
    creekReplyModel.head = creekUploadHead;
    List<int> b = list.sublist(2,list.length).toList();
    b.removeWhere((item)=>item == 0);
    creekReplyModel.fileName =   const Utf8Decoder().convert(b);
    return creekReplyModel;
  }

}

///ble中间数据模型
class CreekDownMiddleReplyModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  List<int> data = [];

  ///解码
  CreekDownMiddleReplyModel uint8ListToModel(List<int> list){
    CreekDownMiddleReplyModel creekReplyModel = CreekDownMiddleReplyModel();
    CreekUploadHead? creekUploadHead = CreekUploadHead().uint8ListToModel([list[0],list[1]]);
    creekReplyModel.head = creekUploadHead;
    creekReplyModel.data =  list.sublist(2,list.length);
    return creekReplyModel;
  }
}

///ble结束数据模型
class CreekDownEndReplyModel{
  CreekUploadHead head = CreekUploadHead();  ///头
  int code = 0;       ///错误码    0 成功  非0失败


  ///解码
  CreekDownEndReplyModel uint8ListToModel(List<int> list){

    CreekDownEndReplyModel creekReplyModel = CreekDownEndReplyModel();
    CreekUploadHead? creekUploadHead = CreekUploadHead().uint8ListToModel([list[0],list[1]]);
    creekReplyModel.head = creekUploadHead;
    creekReplyModel.code = BlueTool.listTo4int(list.sublist(2,list.length));
    return creekReplyModel;
  }

}




