import 'dart:core';
import 'dart:typed_data';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'creek_enum.dart';


 int reqFlag = 0;

class HeadModel{
  ///一个字节
  CmdType cmdType = CmdType.start;


  ///请求ID和请求/应答标志
  ///用于重发控制
  /// 新发送每次请求+1(不是根据命令ID是否变化，是根据是否调用发送函数)
  /// 重发命令不变，超过127后重置， 128是应答
  int req_flag = 0;


  ///优先级，重发控制，流控，加密标志
  /// Bit 0--(1需要重发，0不需要)
  /// Bit 2:1--(b00为普通优先级，b01 为高优先级,b10 为低优先级，b11 不排队)
  /// Bit 4:3--(b00 未加密,b01 aes128加密，b10 aes256 加密,b11 ECDSA-AES256-GCM- SHA384)
  Prioflag prio_flag = Prioflag();


  ///版本号
  int version = 1;

  ///命令id
  CmdId cmdId = CmdId.device;

  ///数据包长度
  int length = 0;

  ///应答码
  CodeType codeType = CodeType.code0;


  ///对象转成数据流格式  头总共11个字节
  List<int> modelToUint8List(){
     List<int> listData = [];
     ///注意顺序不能乱
     listData.add(BlueTool.cmdTypeToCoding(cmdType));
     if(reqFlag == 127){
       reqFlag = 0;
     }else{
       reqFlag++;
     }
     req_flag = reqFlag;
     listData.add(reqFlag);
     listData.add(BlueTool.prioflagToCoding(prio_flag));
     listData.add(version);
     ///命令ID 长度为2字节
     listData.addAll(BlueTool.cmdIdToCoding(cmdId));
     ///数据包 长度为4字节
     listData.addAll(BlueTool.int4ToList(length));
     ///应答码
     listData.add(BlueTool.codeTypeToCoding(codeType));
     return listData;
  }

  ///回复blue model转换
  List<int> recoverModelToUint8List(){
    List<int> listData = [];
    ///注意顺序不能乱
    listData.add(BlueTool.cmdTypeToCoding(cmdType));
    req_flag = req_flag + 128;
    listData.add(req_flag);
    listData.add(BlueTool.prioflagToCoding(prio_flag));
    listData.add(version);
    ///命令ID 长度为2字节
    listData.addAll(BlueTool.cmdIdToCoding(cmdId));
    ///数据包 长度为4字节
    listData.addAll(BlueTool.int4ToList(length));
    ///应答码
    listData.add(BlueTool.codeTypeToCoding(codeType));
    return listData;
  }

  ///2个字节的头部
  List<int> otherModelToUInt8List(){
    List<int> listData = [];
    listData.add(BlueTool.cmdTypeToCoding(cmdType));
    listData.add(reqFlag);
    return listData;
  }

  ///list 转head对象
  HeadModel? uint8ListToModel(List<int> list){
    if(list.length != 11){
      return null;
    }
    HeadModel model = HeadModel();

    model.cmdType =  BlueTool.cmdTypeTodecoding(list[0]);
    model.req_flag = list[1];
    model.prio_flag = Prioflag.intToModel(list[2]);
    model.version = list[3];
    model.cmdId = BlueTool.cmdIdTodecoding(CmdIDClass.listToModel(list[5], list[4]));
    model.length =  BlueTool.listTo4int(list.sublist(6,10));
    model.codeType = BlueTool.codeTypeTodecoding(list[10]);
    return model;
  }


}

class Prioflag{
  ///(1需要重发，0不需要)
  int bit0 = 1;
  ///Bit 2:1--(b00为普通优先级，b01 为高优先级,b10 为低优先级，b11 不排队)
  int bit1 = 0;
  int bit2 = 0;
  ///Bit 4:3--(b00 未加密,b01 aes128加密，b10 aes256 加密,b11 ECDSA-AES256-GCM- SHA384)
  int bit3 = 0;
  int bit4 = 0;
  ///5\6\7暂时不做处理
  int bit5 = 0;
  int bit6 = 0;
  int bit7 = 0;

  static Prioflag intToModel(int value){
    String str = BlueTool.radix10from2(value,byte: 1);
    Prioflag prioflag = Prioflag();
    prioflag.bit7 = int.parse(str.substring(0,1));
    prioflag.bit6 = int.parse(str.substring(1,2));
    prioflag.bit5 = int.parse(str.substring(2,3));
    prioflag.bit4 = int.parse(str.substring(3,4));
    prioflag.bit3 = int.parse(str.substring(4,5));
    prioflag.bit2 = int.parse(str.substring(5,6));
    prioflag.bit1 = int.parse(str.substring(6,7));
    prioflag.bit0 = int.parse(str.substring(7,8));
    return prioflag;
  }
}

class CmdIDClass{
  int mainID = 1;
  int subID = 0;

  static CmdIDClass listToModel(int main,int sub){
    CmdIDClass cmdID = CmdIDClass();
    cmdID.mainID = main;
    cmdID.subID = sub;
    return cmdID;
  }

}






