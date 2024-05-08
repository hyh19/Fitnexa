

import 'dart:convert';

import 'package:creek_blue_manage/alexa/alexa_upload.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';
import 'package:creek_blue_manage/upload/creek_upload.dart';
import 'package:creektool/creek_tool.dart';
import 'creek_alexa_protocol.dart';


class CreekReceiveAlexaServer{

  Function(List<int>, List<int>, dynamic, int)? listenAlexaServer;

  factory CreekReceiveAlexaServer() => _getInstance();

  static CreekReceiveAlexaServer get instance => _getInstance();
  static CreekReceiveAlexaServer? _instance;


  CreekReceiveAlexaServer._internal();


  static CreekReceiveAlexaServer _getInstance() {
    _instance ??= CreekReceiveAlexaServer._internal();
    return _instance!;
  }

  void setAlexaStatusOperate(int code){
    protocol_alexa_status_operate operate  = protocol_alexa_status_operate(statusType: alexa_status_type.ALEXA_STATUS_SET_UP);
    if(code == 1){
      operate  = protocol_alexa_status_operate(statusType: alexa_status_type.ALEXA_STATUS_SUCCESS);
    }else if(code == 2){
      operate  = protocol_alexa_status_operate(statusType: alexa_status_type.ALEXA_STATUS_SET_UP);
    }else if(code == 3){
      operate  = protocol_alexa_status_operate(statusType: alexa_status_type.ALEXA_STATUS_NETWORK_ERROR);
    }else if(code == 4){
      operate  = protocol_alexa_status_operate(statusType: alexa_status_type.ALEXA_STATUS_UNIDENTIFY);
    }else if(code == 5){
      operate  = protocol_alexa_status_operate(statusType: alexa_status_type.ALEXA_STATUS_RELOGIN);
    }

    alexaProtocol.setAlexaStatus(operate: operate, callBack: (){
      CreekLog.info('状态下发固件成功');
      print('状态下发固件成功');
    }, errCallBack: (){
      CreekLog.info('状态下发固件失败');
      print('状态下发固件失败');
    });

  }

  ///code 0 表示授权  1表示多转对话  2表示授权过期  3表示无网络连接  4表示连接断开或是识别超时 5表示未授权
  receive(List<int> e, List<int> audioData, dynamic dataResponse, int code){
    CreekLog.info("接收Alexa解析的文本:${utf8.decode(e)}");
    if(listenAlexaServer != null){
      listenAlexaServer!(e, audioData, dataResponse, code);
    }

    if(code > 1){
      if(code == 5) {
        setAlexaStatusOperate(2);
      }else if(code == 4){
        setAlexaStatusOperate(4);
      }else{
        setAlexaStatusOperate(3);
      }
    }else{

      if(dataResponse == null){

        protocol_alexa_result_operate operate = protocol_alexa_result_operate(content: e, isQuestion: code == 1);
        alexaProtocol.setAlexaContent(operate: operate, callBack: (){
          print('文本下发固件成功');
          CreekLog.info('文本下发固件成功');
          CreekUpload.instance.cancelUp();
          AlexaUpload.instance.cancelUp();
          AlexaUpload.instance.upLoadFile(fileName: "file.pcm", fileData: audioData, success: (){
            print('音频下发固件成功');
            CreekLog.info('音频下发固件成功');
          }, failure: (code, err){
            print('音频下发固件失败');
            CreekLog.info('音频下发固件失败');
          });

        }, errCallBack: (){
          CreekLog.info('文本下发固件失败');
          print('文本下发固件失败');
        });

      }else{
        protocol_alexa_weather_operate operate = dataResponse;
        alexaProtocol.setAlexaWeather(operate: operate, callBack: (){
          print('天气数据下发固件成功');
          CreekLog.info('天气数据下发固件成功');

          CreekUpload.instance.cancelUp();
          AlexaUpload.instance.cancelUp();
          AlexaUpload.instance.upLoadFile(fileName: "file.pcm", fileData: audioData, success: (){
            print('音频下发固件成功');
            CreekLog.info('音频下发固件成功');
          }, failure: (code, err){
            print('音频下发固件失败');
            CreekLog.info('音频下发固件失败');
          });

        }, errCallBack: (error){
          CreekLog.info('天气数据下发固件失败');
          print('天气数据下发固件失败');
        });


      }

    }
  }

  alexaRestoreFirmware({required alexa_status_type type}){

  }

  

}