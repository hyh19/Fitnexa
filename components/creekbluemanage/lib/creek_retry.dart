
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'creek_blue.dart';
import 'creek_blue_tool.dart';



var seedCount = 0;  //总重发送次数

class CreekRetry{

  int count = 0;
  List<List<int>>? _list;

  void setCallBack(CmdId cmdId,int reqId,Function(dynamic,int code) func,{int outTime = 5,Function()? errorCallBack}){
    if(CreekDeviceManger.instance.bluetoothDeviceState == BluetoothDeviceState.connected){
      if(CreekBackGroundTask.instance.currentTask != null){
       if(CreekBackGroundTask.instance.currentTask!.type == TaskType.upload) {
         if(CreekBackGroundTask.instance.currentTask?.model is UploadModel){
           UploadModel model = CreekBackGroundTask.instance.currentTask?.model as UploadModel;
           if((model.fileName ?? "").contains(".ota")){
             return;
           }
         }
       }
      }
      CreekGlobalNotice.instance.setCallBack(cmdId, reqId,(dynamic,int code){
        seedCount = 0;
        func(dynamic,code);
      }, errorCallBack: () {
        if(count > 3){
          CreekLog.info("重发3次还失败，取消重发命令");
          if(errorCallBack != null){
            errorCallBack!();
          }
        }else{
          if(_list != null){
            List<String> str = [];
            for (var element in _list!) {
              str.add(BlueTool.list10Tolist16(element).toString());
            }
            seedCount ++;
            CreekLog.info("${cmdId.toString()} 重发第$count次 发送命令：${str.toString()}");
            setCallBack(cmdId, reqId,func,outTime: outTime,errorCallBack: errorCallBack);
            requestDevice(_list!);
          }
        }
        count ++;
      },outTime: outTime);
    }else{
      CreekLog.info("蓝牙未连接");
      if(errorCallBack != null){
        errorCallBack!();
      }
    }

  }
  requestDevice(List<List<int>> list) async{
    _list = list;
    if(CreekDeviceManger.instance.bluetoothDeviceState == BluetoothDeviceState.connected){
      if(CreekBackGroundTask.instance.currentTask != null){
        if(CreekBackGroundTask.instance.currentTask!.type == TaskType.upload) {
          if(CreekBackGroundTask.instance.currentTask?.model is UploadModel){
            UploadModel model = CreekBackGroundTask.instance.currentTask?.model as UploadModel;
            if((model.fileName ?? "").contains(".ota")){
              return;
            }
          }
        }
      }
      if(seedCount == 50){
        seedCount = 0;
        foundationCommand.setSystem(type: 1);
      }else{
        CreekTransport().requestDevice(list);
      }

    }

  }

}