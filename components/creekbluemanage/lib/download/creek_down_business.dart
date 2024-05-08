

import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/download/creek_down_model.dart';
import 'package:creek_blue_manage/upload/creek_upload_model.dart';

///

///业务处理
class DownBusiness{

  ///.fw 空升固件文件
  ///..log 固件日志文件
  ///.rawdata 传感器原始数据文件

  String fileName = "";
  ///业务处理层
  toBusiness(List<int> buf,{Function(String)? nameFunction,Function(List<int>)? dataBack}){
    try {
      FileProtocol fileProtocol = BlueTool.fileProtocolToDecoding(buf[0]);
      if(fileProtocol == FileProtocol.downStart){
        ///开始
        CreekDownStartReplyModel model =  CreekDownStartReplyModel().uint8ListToModel(buf);
        fileName = model.fileName;
        ///生成文件名  时间
        DateTime dateTime = DateTime.now();
        String timeStr = dateTime.toString().substring(0,19);
        if(nameFunction != null){
          nameFunction!("$timeStr-$fileName");
        }
        if(dataBack != null){
          dataBack!(buf);
        }
      }else if(fileProtocol == FileProtocol.downMiddle){
        ///中间
        CreekDownMiddleReplyModel model =  CreekDownMiddleReplyModel().uint8ListToModel(buf);
        if(fileName.contains("rawdata")){
          ///传感器数据处理
          if(dataBack != null){
            dataBack!(buf);
          }
        }else if(fileName.contains("log")){
          ///日志文件处理
        }
      }else if(fileProtocol == FileProtocol.downEnd){
        ///结束
        CreekDownEndReplyModel model =  CreekDownEndReplyModel().uint8ListToModel(buf);
      }
    }catch(e){
      ///其他数据
    }


  }
}