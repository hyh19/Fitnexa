import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/creek_head_model.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creektool/creek_tool.dart';
import 'package:encrypt/encrypt.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';




class BlueTool {

  ///命令类型编码
  static int cmdTypeToCoding(CmdType type) {
    int value = 193;
    switch (type) {
      case CmdType.start:
        value = 193;
        break;
      case CmdType.middle:
        value = 194;
        break;
      case CmdType.end:
        value = 195;
        break;
      case CmdType.stopRequest:
        value = 204;
        break;
      case CmdType.stopReceive:
        value = 205;
        break;
    }
    return value;
  }

  ///命令类型解码
  static CmdType cmdTypeTodecoding(int type) {
    CmdType value = CmdType.start;
    switch (type) {
      case 193:
        value = CmdType.start;
        break;
      case 194:
        value = CmdType.middle;
        break;
      case 195:
        value = CmdType.end;
        break;
      case 204:
        value = CmdType.stopRequest;
        break;
      case 205:
        value = CmdType.stopReceive;
        break;
    }
    return value;
  }

  ///命令id编码
  static List<int> cmdIdToCoding(CmdId type) {
    CmdIDClass cmdIDClass = CmdIDClass();
    switch (type) {
      case CmdId.device:
        cmdIDClass.mainID = 1;
        cmdIDClass.subID = 0;
        break;
      case CmdId.time:
        cmdIDClass.mainID = 2;
        cmdIDClass.subID = 0;

        break;
      case CmdId.user:
        cmdIDClass.mainID = 3;
        cmdIDClass.subID = 0;
        break;
      case CmdId.language:
        cmdIDClass.mainID = 4;
        cmdIDClass.subID = 0;

        break;
      case CmdId.binding:
        cmdIDClass.mainID = 5;
        cmdIDClass.subID = 0;
        break;
      case CmdId.system:
        cmdIDClass.mainID = 6;
        cmdIDClass.subID = 0;
        break;
      case CmdId.health:
        cmdIDClass.mainID = 14;
        cmdIDClass.subID = 0;
        break;
      case CmdId.healthSync:
        cmdIDClass.mainID = 14;
        cmdIDClass.subID = 1;
        break;
      case CmdId.sensor:
        cmdIDClass.mainID = 33;
        cmdIDClass.subID = 0;
        break;
      case CmdId.alarm:
        cmdIDClass.mainID = 7;
        cmdIDClass.subID = 0;
        break;
      case CmdId.disturb:
        cmdIDClass.mainID = 8;
        cmdIDClass.subID = 0;
        break;
      case CmdId.screen:
        cmdIDClass.mainID = 9;
        cmdIDClass.subID = 0;
        break;
      case CmdId.monitor:
        cmdIDClass.mainID = 10;
        cmdIDClass.subID = 0;
        break;
      case CmdId.sleepMonitor:
        cmdIDClass.mainID = 11;
        cmdIDClass.subID = 0;
        break;
      case CmdId.waterMonitor:
        cmdIDClass.mainID = 12;
        cmdIDClass.subID = 0;
        break;
      case CmdId.standing:
        cmdIDClass.mainID = 13;
        cmdIDClass.subID = 0;
        break;
      case CmdId.menstrual:
        cmdIDClass.mainID = 15;
        cmdIDClass.subID = 0;
        break;
      case CmdId.update:
        cmdIDClass.mainID = 16;
        cmdIDClass.subID = 0;
        break;
      case CmdId.music:
        cmdIDClass.mainID = 17;
        cmdIDClass.subID = 0;
        break;
      case CmdId.weather:
        cmdIDClass.mainID = 18;
        cmdIDClass.subID = 0;
        break;
      case CmdId.messageType:
        cmdIDClass.mainID = 19;
        cmdIDClass.subID = 0;
        break;
      case CmdId.messageApp:
        cmdIDClass.mainID = 19;
        cmdIDClass.subID = 1;
        break;
      case CmdId.messageOnOff:
        cmdIDClass.mainID = 19;
        cmdIDClass.subID = 2;
        break;
      case CmdId.call:
        cmdIDClass.mainID = 20;
        cmdIDClass.subID = 0;
        break;
      case CmdId.callReminder:
        cmdIDClass.mainID = 20;
        cmdIDClass.subID = 1;
        break;
      case CmdId.callState:
        cmdIDClass.mainID = 20;
        cmdIDClass.subID = 2;
        break;
      case CmdId.sportType:
        cmdIDClass.mainID = 21;
        cmdIDClass.subID = 0;
        break;
      case CmdId.sportSort:
        cmdIDClass.mainID = 21;
        cmdIDClass.subID = 1;
        break;
      case CmdId.sportSub:
        cmdIDClass.mainID = 21;
        cmdIDClass.subID = 2;
        break;
      case CmdId.sportIdentification:
        cmdIDClass.mainID = 21;
        cmdIDClass.subID = 3;
        break;
      case CmdId.sportHeartRate:
        cmdIDClass.mainID = 21;
        cmdIDClass.subID = 4;
        break;
      case CmdId.sportGps:
        cmdIDClass.mainID = 21;
        cmdIDClass.subID = 5;
        break;
      case CmdId.watchDial:
        cmdIDClass.mainID = 22;
        cmdIDClass.subID = 0;
        break;
      case CmdId.schedule:
        cmdIDClass.mainID = 23;
        cmdIDClass.subID = 0;
        break;
      case CmdId.findPhone:
        cmdIDClass.mainID = 24;
        cmdIDClass.subID = 0;
        break;
      case CmdId.alexa1:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 0;
        break;
      case CmdId.alexa2:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 1;
        break;
      case CmdId.alexa3:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 2;
        break;
      case CmdId.alexa_alarm:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 3;
        break;
      case CmdId.alexa_reminder:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 4;
        break;
      case CmdId.alexa_timer:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 5;
        break;
      case CmdId.alexa_weather:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 6;
        break;
      case CmdId.alexa_notify:
        cmdIDClass.mainID = 25;
        cmdIDClass.subID = 7;
        break;
      case CmdId.card:
        cmdIDClass.mainID = 26;
        cmdIDClass.subID = 0;
        break;
      case CmdId.worldTime:
        cmdIDClass.mainID = 27;
        cmdIDClass.subID = 0;
        break;
      case CmdId.contacts:
        cmdIDClass.mainID = 28;
        cmdIDClass.subID = 0;
        break;
      case CmdId.event:
        cmdIDClass.mainID = 29;
        cmdIDClass.subID = 0;
        break;
      case CmdId.table:
        cmdIDClass.mainID = 30;
        cmdIDClass.subID = 0;
        break;
      case CmdId.contactsSOS:
        cmdIDClass.mainID = 31;
        cmdIDClass.subID = 0;
        break;
      case CmdId.log:
        cmdIDClass.mainID = 32;
        cmdIDClass.subID = 0;
        break;
      case CmdId.mtu:
        cmdIDClass.mainID = 34;
        cmdIDClass.subID = 0;
        break;
      case CmdId.hotKey:
        cmdIDClass.mainID = 35;
        cmdIDClass.subID = 0;
        break;
      case CmdId.wtm:
        cmdIDClass.mainID = 36;
        cmdIDClass.subID = 0;
        break;
      case CmdId.focus:
        cmdIDClass.mainID = 37;
        cmdIDClass.subID = 0;
        break;
      case CmdId.app:
        cmdIDClass.mainID = 38;
        cmdIDClass.subID = 0;
        break;
      case CmdId.track:
        cmdIDClass.mainID = 39;
        cmdIDClass.subID = 0;
        break;
    }
    return [cmdIDClass.subID, cmdIDClass.mainID];
  }

  ///命令id解码
  static CmdId cmdIdTodecoding(CmdIDClass cmdIDClass) {
    CmdId cmdId = CmdId.device;
    if (cmdIDClass.mainID == 1) {
      cmdId = CmdId.device;
    } else if (cmdIDClass.mainID == 2) {
      cmdId = CmdId.time;
    } else if (cmdIDClass.mainID == 3) {
      cmdId = CmdId.user;
    } else if (cmdIDClass.mainID == 4) {
      cmdId = CmdId.language;
    } else if (cmdIDClass.mainID == 5) {
      cmdId = CmdId.binding;
    }else if (cmdIDClass.mainID == 6) {
      cmdId = CmdId.system;
    } else if (cmdIDClass.mainID == 33) {
      cmdId = CmdId.sensor;
    } else if (cmdIDClass.mainID == 7) {
      cmdId = CmdId.alarm;
    } else if (cmdIDClass.mainID == 8) {
      cmdId = CmdId.disturb;
    } else if (cmdIDClass.mainID == 9) {
      cmdId = CmdId.screen;
    } else if (cmdIDClass.mainID == 10) {
      cmdId = CmdId.monitor;
    } else if (cmdIDClass.mainID == 11) {
      cmdId = CmdId.sleepMonitor;
    } else if (cmdIDClass.mainID == 12) {
      cmdId = CmdId.waterMonitor;
    } else if (cmdIDClass.mainID == 13) {
      cmdId = CmdId.standing;
    } else if (cmdIDClass.mainID == 14) {
      if (cmdIDClass.subID == 1) {
        cmdId = CmdId.healthSync;
      } else {
        cmdId = CmdId.health;
      }
    } else if (cmdIDClass.mainID == 15) {
      cmdId = CmdId.menstrual;
    } else if (cmdIDClass.mainID == 16) {
      cmdId = CmdId.update;
    } else if (cmdIDClass.mainID == 17) {
      cmdId = CmdId.music;
    } else if (cmdIDClass.mainID == 18) {
      cmdId = CmdId.weather;
    } else if (cmdIDClass.mainID == 19) {
      if (cmdIDClass.subID == 0) {
        cmdId = CmdId.messageType;
      } else if (cmdIDClass.subID == 1) {
        cmdId = CmdId.messageApp;
      } else if (cmdIDClass.subID == 2) {
        cmdId = CmdId.messageOnOff;
      }
    } else if (cmdIDClass.mainID == 20) {
      if (cmdIDClass.subID == 0) {
        cmdId = CmdId.call;
      } else if (cmdIDClass.subID == 1) {
        cmdId = CmdId.callReminder;
      } else if (cmdIDClass.subID == 2) {
        cmdId = CmdId.callState;
      }
    } else if (cmdIDClass.mainID == 21) {
      if (cmdIDClass.subID == 0) {
        cmdId = CmdId.sportType;
      } else if (cmdIDClass.subID == 1) {
        cmdId = CmdId.sportSort;
      } else if (cmdIDClass.subID == 2) {
        cmdId = CmdId.sportSub;
      } else if (cmdIDClass.subID == 3) {
        cmdId = CmdId.sportIdentification;
      }else if (cmdIDClass.subID == 4) {
        cmdId = CmdId.sportHeartRate;
      }else if (cmdIDClass.subID == 5) {
        cmdId = CmdId.sportGps;
      }
    } else if (cmdIDClass.mainID == 22) {
      cmdId = CmdId.watchDial;
    } else if (cmdIDClass.mainID == 23) {
      cmdId = CmdId.schedule;
    } else if (cmdIDClass.mainID == 24) {
      cmdId = CmdId.findPhone;
    } else if (cmdIDClass.mainID == 25) {
      if (cmdIDClass.subID == 0) {
        cmdId = CmdId.alexa1;
      } else if (cmdIDClass.subID == 1) {
        cmdId = CmdId.alexa2;
      } else if (cmdIDClass.subID == 2) {
        cmdId = CmdId.alexa3;
      }else if (cmdIDClass.subID == 3) {
        cmdId = CmdId.alexa_alarm;
      }else if (cmdIDClass.subID == 4) {
        cmdId = CmdId.alexa_reminder;
      }else if (cmdIDClass.subID == 5) {
        cmdId = CmdId.alexa_timer;
      }else if (cmdIDClass.subID == 6) {
        cmdId = CmdId.alexa_weather;
      }else if (cmdIDClass.subID == 7) {
        cmdId = CmdId.alexa_notify;
      }
    } else if (cmdIDClass.mainID == 26) {
      cmdId = CmdId.card;
    } else if (cmdIDClass.mainID == 27) {
      cmdId = CmdId.worldTime;
    } else if (cmdIDClass.mainID == 28) {
      cmdId = CmdId.contacts;
    }else if (cmdIDClass.mainID == 29) {
      cmdId = CmdId.event;
    }else if (cmdIDClass.mainID == 30) {
      cmdId = CmdId.table;
    }else if (cmdIDClass.mainID == 31) {
      cmdId = CmdId.contactsSOS;
    } else if (cmdIDClass.mainID == 32) {
      cmdId = CmdId.log;
    }else if (cmdIDClass.mainID == 34) {
      cmdId = CmdId.mtu;
    }else if (cmdIDClass.mainID == 35) {
      cmdId = CmdId.hotKey;
    }else if (cmdIDClass.mainID == 36) {
      cmdId = CmdId.wtm;
    }else if (cmdIDClass.mainID == 37) {
      cmdId = CmdId.focus;
    }else if (cmdIDClass.mainID == 38) {
      cmdId = CmdId.app;
    }else if (cmdIDClass.mainID == 39) {
      cmdId = CmdId.track;
    }
    return cmdId;
  }

  ///应答码编码
  static int codeTypeToCoding(CodeType type) {
    int value = 0;
    switch (type) {
      case CodeType.code0:
        value = 0;
        break;
      case CodeType.code1:
        value = 1;
        break;
      case CodeType.code2:
        value = 2;
        break;
      case CodeType.code3:
        value = 3;
        break;
      case CodeType.code4:
        value = 4;
        break;
      case CodeType.code5:
        value = 5;
        break;
      case CodeType.code6:
        value = 6;
        break;
    }
    return value;
  }

  ///应答码解码
  static CodeType codeTypeTodecoding(int value) {
    CodeType codeType = CodeType.code0;
    switch (value) {
      case 0:
        codeType = CodeType.code0;
        break;
      case 1:
        codeType = CodeType.code1;
        break;
      case 2:
        codeType = CodeType.code2;
        break;
      case 3:
        codeType = CodeType.code3;
        break;
      case 4:
        codeType = CodeType.code4;
        break;
      case 5:
        codeType = CodeType.code5;
        break;
      case 6:
        codeType = CodeType.code6;
        break;
    }
    return codeType;
  }


  ///文件协议编码
  static int fileProtocolToCoding(FileProtocol type) {
    int value = 209;
    switch (type) {
      case FileProtocol.start:
        value = 209;
        break;
      case FileProtocol.middle:
        value = 210;
        break;
      case FileProtocol.queryIndex:
        value = 211;
        break;
      case FileProtocol.end:
        value = 212;
        break;
      case FileProtocol.help:
        value = 213;
        break;
      case FileProtocol.noCrcStart:
        value = 214;
        break;
      case FileProtocol.noCrcMiddle:
        value = 215;
        break;
      case FileProtocol.noCrcEnd:
        value = 216;
        break;
      case FileProtocol.downStart:
        value = 218;
        break;
      case FileProtocol.downMiddle:
        value = 219;
        break;
      case FileProtocol.downEnd:
        value = 220;
        break;
    }
    return value;
  }

  ///文件协议解码
  static FileProtocol fileProtocolToDecoding(int type) {
    FileProtocol value = FileProtocol.start;
    switch (type) {
      case 209:
        value = FileProtocol.start;
        break;
      case 210:
        value = FileProtocol.middle;
        break;
      case 211:
        value = FileProtocol.queryIndex;
        break;
      case 212:
        value = FileProtocol.end;
        break;
      case 213:
        value = FileProtocol.help;
        break;
      case 214:
        value = FileProtocol.noCrcStart;
        break;
      case 215:
        value = FileProtocol.noCrcMiddle;
        break;
      case 216:
        value = FileProtocol.noCrcEnd;
        break;
      case 218:
        value = FileProtocol.downStart;
        break;
      case 219:
        value = FileProtocol.downMiddle;
        break;
      case 220:
        value = FileProtocol.downEnd;
        break;
    }
    return value;
  }


  static prioflagToCoding(Prioflag flag) {
    String str = "${flag.bit7}${flag.bit6}${flag.bit5}${flag.bit4}${flag.bit3}${flag.bit2}${flag.bit1}${flag.bit0}";
    return BlueTool.radix2from10(str);
  }

  ///二进制转10进制
  static int radix2from10(String value) {
    return int.parse(value, radix: 2);
  }

  ///16进制转10进制
  static int radix16from10(String value) {
    return int.parse(value, radix: 16);
  }

  ///10进制转16进制
  static String radix10from16(int value) {
    return value.toRadixString(16);
  }


  ///16进制转二进制
  ///byte 需要转换成几个字节
  static String radix16from2(String value, {int byte = 0}) {
    String str = "";
    String str1 = int.parse(value, radix: 16).toRadixString(2);
    if (str1.length < byte * 8) {
      int len = byte * 8 - str1.length;
      for (int i = 0; i < len; i++) {
        str1 = "0$str1";
      }
    }
    return str1;
  }

  ///10进制转二进制
  ///byte 需要转成几个字节
  static String radix10from2(int value, {int byte = 0}) {
    String str = "";
    String str1 = value.toRadixString(2);
    if (str1.length < byte * 8) {
      int len = byte * 8 - str1.length;
      for (int i = 0; i < len; i++) {
        str1 = "0$str1";
      }
    }
    return str1;
  }

  ///二进制转成list<int>
  static List<int> radix2fromlist(String value) {
    List<int> list = [];
    String aValue = value;

    int len1 = 8 * (value.length % 8 == 0 ? 0 : 1) - value.length  % 8;
    for (int i = 0; i < len1; i++) {
      aValue = "0$aValue";
    }
    int len = aValue.length ~/ 8;
    for (int i = 0; i < len; i++) {
      String str = aValue.substring(i * 8, 8 * (i + 1));
      list.add(radix2from10(str));
    }
    return list;
  }

  ///list<int> 转成16进制
  static String radixlistfrom16(List<int> list) {
    String str = "";
    for (var e in list) {
      String a = e.toRadixString(16);
      // int len  =  8 - a.length % 8;
      // if(len != 8){
      //   for(int i = 0; i < len; i++){
      //     a = "${a}0";
      //   }
      // }
      str = str + a;
    }
    return str;
  }


  ///int类型转4个字节的小端序编码
  static List<int> int4ToList(int value) {
    List<int> list = [];
    String str = BlueTool.radix10from2(value, byte: 4);
    List<int> a = BlueTool.radix2fromlist(str);
    for (int i = a.length - 1; i >= 0; i--) {
      list.add(a[i]);
    }
    return list;
  }
  ///int类型转4个字节的小端序ASCLL编码
  static List<int> int4ToListASCLL(int value) {
    List<int> list = [];
    String str = BlueTool.radix10from2(value, byte: 4);
    List<int> a = BlueTool.radix2fromlist(str);
    for (int i = a.length - 1; i >= 0; i--) {
      list.add(a[i]);
    }
    List<int> s = List.from(list);
    for(int j = a.length - 1; j >= 0; j--){
      if(list[j] == 0){
        s.removeAt(j);
      }else{
        break;
      }
    }
    return s;
  }

  ///int类型转4个字节的小端序解码
  static int listTo4int(List<int> list) {
    String str = "";
    for (int i = list.length - 1; i >= 0; i--) {
      str = str + BlueTool.radix10from2(list[i], byte: 1);
    }
    return BlueTool.radix2from10(str);
  }

  static secondToString(int second, {Function(int hour, int min, int sec)? callBack}) {
    int sec = (second % 60);
    int min = (second ~/ 60) % 60;
    int hour = (second ~/ 3600);
    if (callBack != null) {
      callBack(hour, min, sec);
    }
  }


  ///CRC16校验  list是需要增加校验位的数据
  static int getCRC(List<int> list) {
    int seed = 0x00000000;
    int len = list.length;
    int i = 0;
    for (; len > 0; len--) {
      seed = ((seed & 0x0000FF00) >> 8) | ((seed & 0x000000FF) << 8);
      seed ^= list[i];
      seed ^= (seed & 0xff) >> 4;
      seed ^= seed << 12;
      seed ^= (seed & 0xff) << 5;
      i++;
    }
    return seed & 0xffff;
  }


  static double convert(String hexString) {
    String hexStringPadded = hexString.padLeft(16, '0');
    return (ByteData(8)
      ..setInt32(0, int.parse(hexStringPadded.substring(0, 8), radix: 16))..setInt32(4, int.parse(hexStringPadded.substring(8, 16), radix: 16)))
        .getFloat64(0);
  }


  ///list<int> 转 list<16>
  static List<String> list10Tolist16(List<int> list) {
    List<String> a = [];
    for (var e in list) {
      String b = BlueTool.radix10from16(e);
      if (b.length < 2) {
        b = "0$b";
      }
      a.add(b);
    }
    return a;
  }

  static String listToString(List<String> list) {
    if (list.isEmpty) {
      return "";
    }
    String result = "";
    for (var e in list) {
      if(result == ""){
        result = e;
      }else{
        result = "$result:$e";
      }
    }
    return result;
  }




  ///hex转负数
  static int hexToMinus(List<int> list) {
    int a = BlueTool.listTo4int(list);
    if (a & 0x80000000 != 0) {
      a = a & 0x7fffffff;
      a = ~(a - 1);
      a = a & 0x7fffffff;
      a = -a;
    }
    return a;
  }


  ///hex转ASCII
  static String hexString(List<int> list) {
    String str = "";
    for (int i = 0; i < list.length; i++) {
      str = str + String.fromCharCode(list[i]);
    }
    return str;
  }

  ///AES加密
  static Uint8List encryptAes(List<int> list) {
    String key = "creekaes........creekaes........";
    // print( Encrypter(AES(Key.fromUtf8(key),mode: AESMode.cbc)).encryptBytes(list,iv: IV.fromLength(16)).toString());
    Uint8List encrypt = Encrypter(AES(Key.fromUtf8(key), mode: AESMode.ecb))
        .encryptBytes(list, iv: IV.fromLength(16))
        .bytes;
    return encrypt;
  }

  ///AES解密
  static List<int> decryptAes(List<int> list) {
    String key = "creekaes........creekaes........";
    Encrypter encrypter = Encrypter(AES(Key.fromUtf8(key), mode: AESMode.cbc));
    List<int> aes = encrypter.decryptBytes(Encrypted(Uint8List.fromList(list)), iv: IV.fromLength(16));
    return aes;
  }

  ///保存绑定的设备存本地
  saveBluetoothDevice() async {

    CreekProcedure.insertBindDevice(name: CreekDeviceManger.instance!.bluetoothDevice!.name, address: CreekDeviceManger.instance!.bluetoothDevice!.id.id);
    // if (list.isEmpty) {
    //
    // }
  }

  ///获取绑定过的设备
  Future<List<BlueDeviceInfo>> getBluetoothDevice({String? address}) async {
    List<BlueDeviceInfo> list = await interfaceProtocol.getBindDevice(address: address);
    return list;
  }


  ///计算平均入起睡眠时间
 static int getAverageFallOrUpSleepTime(List<dynamic> sleepList){
    if(sleepList.isEmpty){
      return 0;
    }
    List<int> mins = [];
    for(int i = 0; i<sleepList.length-1;i++){
      DateTime dateTime1 = sleepList[i];
      DateTime dateTime2 = sleepList[i+1];
      int min1 = dateTime1.hour * 60 + dateTime1.minute;
      int min2 = dateTime2.hour * 60  + dateTime2.minute;
      if(dateTime2.hour < dateTime1.hour){
         min2 = (dateTime2.hour + 24) * 60 + dateTime2.minute;
        int min = (min1 + min2) ~/ 2;
        if(min > 24*60){
          min = min - 24*60;
        }
        mins.add(min);
      }else{
        mins.add((min1 + min2) ~/ 2);
      }
    }
    int allMin = 0;
    for (var e in mins) {
     allMin = allMin + e;
    }
    int min = allMin ~/ mins.length;
    return min;
  }

  ///**************************
  ///根据一年的第几周查出这周的开始时间和结束时间
  ///weekDay 周
  ///startWeekDate  周的起始计算位置，一般是周一或者是周日  1，7
  ///***************************
  static getWeekToDataTime({required DateTime dateTime, int weekDay = 1, int startWeekDate = 1, Function(String startTime, String endTime)? time}) {
    DateTime yearStartDateTime = DateTime(dateTime.year, 1, 1);

    ///一年的天数
    int yearDays = DateTime(dateTime.year + 1).difference(DateTime(dateTime.year)).inDays;

    ///计算1月1号 在一周里面是星期几 得出第一周共有多少天 不足7天算在上一年
    ///去年周占用的天数
    int weekDays = 7 - yearStartDateTime.weekday + (startWeekDate == 7 ? 0 : 1);
    if(weekDays == 7){
      weekDays = 0;
    }

    ///得出今年的周计算开始起点
    DateTime fistTime = yearStartDateTime.add(Duration(days: weekDays));

    ///得出今年有多少周
    int yearWeek = (yearDays - weekDays) ~/ 7 + ((yearDays - weekDays) % 7 != 0 ? 1 : 0);
    String startTime = "";
    String endTime = "";
    if (weekDay == 1) {
      startTime = fistTime.toString().toString().substring(0, 10);
      endTime = fistTime.add(const Duration(days: 6)).toString().substring(0, 10);
    } else if (weekDay == yearWeek) {
      startTime = fistTime.add(Duration(days: ((weekDay - 1) * 7))).toString().substring(0, 10);
      endTime = fistTime.add(Duration(days: ((weekDay - 1) * 7) + 6)).toString().toString().substring(0, 10);
    } else if (weekDay > 1 && weekDay < yearWeek) {
      int start = weekDays + ((weekDay - 1) * 7);
      startTime = yearStartDateTime.add(Duration(days: start)).toString().substring(0, 10);
      endTime = yearStartDateTime.add(Duration(days: start + 6)).toString().substring(0, 10);
    } else {
      print("超出年的总周数");
    }
    if (time != null) {
      time(startTime, endTime);
    }
  }

  ///判断日期是否有效
  static bool isDateValid(String date) {
    RegExp regex = RegExp(r'^(?:19|20)\d\d-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$');
    return regex.hasMatch(date);
  }

  ///**************************
  ///根据日期查出是第几周 并查出这周的开始时间和结束时间
  ///dateTime 时间
  ///startWeekDate  周的起始计算位置，一般是周一或者是周日  1，7
  ///***************************
  static getDataTimeToWeek({required DateTime dateTime, int startWeekDate = 1, Function(String startTime, String endTime, int week)? time}) {
    DateTime yearStartDateTime = DateTime(dateTime.year, 1, 1);

    ///计算1月1号 在一周里面是星期几 得出第一周共有多少天 不足7天算在上一年
    ///去年周占用的天数
    int weekDays = 7 - yearStartDateTime.weekday + (startWeekDate == 7 ? 0 : 1);
    if(weekDays == 7){
      weekDays = 0;
    }

    ///得出今年的周计算开始起点
    DateTime fistTime = yearStartDateTime.add(Duration(days: weekDays));
    DateTime currentDateTime = dateTime;
    int currentDays = currentDateTime.difference(fistTime).inDays + 1;
    int indexWeek = (currentDays ~/ 7) + (currentDays % 7 != 0 ? 1 : 0);
    if (indexWeek < 1) {
      DateTime yearStartDateTime = DateTime(dateTime.year - 1, 1, 1);

      ///计算1月1号 在一周里面是星期几 得出第一周共有多少天 不足7天算在上一年
      ///去年周占用的天数
      int weekDays = 7 - yearStartDateTime.weekday + (startWeekDate == 7 ? 0 : 1);

      ///得出今年的周计算开始起点
      DateTime fistTime = yearStartDateTime.add(Duration(days: weekDays));
      DateTime currentDateTime = dateTime;
      int currentDays = currentDateTime.difference(fistTime).inDays + 1;
      int indexWeek = (currentDays ~/ 7) + (currentDays % 7 != 0 ? 1 : 0);
      getWeekToDataTime(
          dateTime: yearStartDateTime,
          weekDay: indexWeek,
          startWeekDate: startWeekDate,
          time: (s, e) {
            if (time != null) {
              time(s, e, indexWeek);
            }
          });
    } else {
      getWeekToDataTime(
          dateTime: dateTime,
          weekDay: indexWeek,
          startWeekDate: startWeekDate,
          time: (s, e) {
            if (time != null) {
              time(s, e, indexWeek);
            }
          });
    }
  }

  ///秒转时间 时/分
  ///timeFormat 时间格式 1 24小时  2 12小时
  static String? secondsToTime({required int seconds,int timeFormat = 1}){
      if(seconds == 0){
        return null;
      }
      int min = (seconds ~/ 60) % 60;
      int hour = (seconds ~/ 3600);
      String timeStr = "";
      if(!(min == 0 && hour == 0)){
        if(timeFormat == 1){
          timeStr = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"}";
        }else{
          String time = "AM";
          if(hour >= 12 && min > 0){
            hour = hour - 12;
            time = "PM";
          }
          timeStr = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"} $time";
        }
      }
      return timeStr;
  }

  String convertToDDMM(double coordinate) {
    // 将坐标的绝对值转换为整数部分（度）
    int degrees = coordinate.floor();

    // 将小数部分转换为分钟
    double minutes = ((coordinate - degrees) / 100) * 60;

    // 将度和分钟格式化为DDMM格式的字符串
    String formattedCoordinate = (degrees + minutes).toStringAsFixed(6);


    return formattedCoordinate;
  }

  ///int16 有符号转换
  static int int16Value(int value){
    if (value > 32767) {
      int overflowedValue = (value - 65536);
      return overflowedValue;
    } else {
      return value;
    }
  }


}



///倒计时
class CountdownTime{
  int? count;
  int? seconds;
  /// 倒计时的计时器。
  Timer? _timer;
  String? name;
  bool isPrint;
  CountdownTime({this.count = 20,this.seconds = 1,this.name = "",this.isPrint = true});
  start(Function()? errorCallBack,{Function()? callBack}){
    cancelTimer();
    _timer = Timer.periodic(Duration(seconds: seconds!), (timer) {
      count = count! - 1;
      if(isPrint ){
        CreekLog.info("$name倒计时$count");
      }
      if(callBack != null){
        callBack!();
      }
      if(count! <= 0){
        cancelTimer();
        if(errorCallBack != null){
          errorCallBack();
        }
      }
    });
  }
   /// 取消倒计时的计时器。
   cancelTimer() {
    if(isPrint){
      CreekLog.info("停止倒计时");
    }
    // 计时器（`Timer`）组件的取消（`cancel`）方法，取消计时器。
    _timer?.cancel();
    _timer = null;
  }

}