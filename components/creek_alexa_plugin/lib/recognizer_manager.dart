import 'dart:convert';
import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:creek_alexa_plugin/authorization_manager.dart';
import 'package:creek_alexa_plugin/authorization_request.dart';
import 'package:creek_alexa_plugin/audio_player_manager.dart';
import 'package:creek_alexa_plugin/directive_handler.dart';
import 'package:creek_alexa_plugin/event_data_handler.dart';
import 'package:creek_alexa_plugin/data_resolver.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:creek_blue_manage/alexa/creek_alexa_protocol.dart';
import 'package:creek_alexa_plugin/weather_entity.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';

class RecognizerManager {
  ///code 0 表示授权  1表示多转对话  2表示授权过期  3表示无网络连接  4表示连接断开或是识别超时 5表示未授权
  static void speechRecognizerConnect(
      Function(List<int>, List<int>, dynamic, int) callback) async {
    int loginStatue = AuthorizationManager().checkLogin();
    if (loginStatue == 2) {
      AuthorizationManager().refreshTokenAction((data) {
        AuthorizationManager.createConnection();
      });
      callback([], [], null, 2);
      return;
    } else if (loginStatue == 0) {
      callback([], [], null, 5);
      return;
    }

    if (AuthorizationManager().networkState == ConnectivityResult.other ||
        AuthorizationManager().networkState == ConnectivityResult.none) {
      callback([], [], null, 3);
      return;
    }

    AuthorizationManager().states = AlexaStates.connecting;
    await AuthorizationRequest.createSpeechRecognizerConnect(
        AuthorizationManager().accessToken, (res) {
      //有语音发送后 则把expectSpeechTimer置为null
      if (AuthorizationManager().model.expectSpeechTimer != null) {
        AuthorizationManager().model.expectSpeechTimer?.cancel();
        AuthorizationManager().model.expectSpeechTimer = null;
      }

      final body = res.body;

      if (res.statusCode != 200) {
        callback([], [], null, 4);
        AuthorizationManager().states = AlexaStates.free;
        return;
      }

      AuthorizationManager().model.dialogId = '';
      List<int> audioData = [];
      List<int> strList = [];
      dynamic dataResponse;
      int expectSpeechStatus = 0;
      for (Map<String, dynamic> item in body) {
        String type = item['type'];
        if (type.contains('application/octet-stream')) {
          if (audioData.isEmpty) {
            audioData = item['content'];
          } else {
            audioData = [...audioData, ...item['content']];
          }
        } else if (type.contains('application/json')) {
          final content = item['content'];
          Map<String, dynamic> targetMap = content['directive']['payload'];
          Map<String, dynamic> headerMap = content['directive']['header'];

          if (headerMap['name'] == DirectiveType.speak.title &&
              targetMap.containsKey('token')) {
            final speakToken = targetMap['token'];
            AuthorizationManager().model.speakToken = speakToken;
          } else if (headerMap['name'] == DirectiveType.expectSpeech.title) {
            LoggerHandler.log(LogType.info, 'alexa 需要多转对话  关闭固件麦克风');
            alexaProtocol.openMic(isOpen: false);
            AuthorizationManager().model.dialogId =
                headerMap['dialogRequestId'];
            expectSpeechStatus = 1;
            AuthorizationManager().states = AlexaStates.free;
          } else if (headerMap['name'] == DirectiveType.renderTemplate.title) {
            if (targetMap['type'] == 'WeatherTemplate') {
              AlexaWeatherEntity dataModel =
                  AlexaWeatherEntity.fromJson(targetMap);
              String template = '收到天气指令 ${jsonEncode(targetMap)}';
              print(template);
              LoggerHandler.log(LogType.info, template);

              protocol_alexa_weather_operate operate =
                  protocol_alexa_weather_operate();
              alexa_weather_detail_data_item detailItem =
                  alexa_weather_detail_data_item();

              int? curTemp = DataResolver.extractTemperature(
                  dataModel.currentWeather ?? '');
              if (curTemp != null) {
                detailItem.curTemp = curTemp;
              }

              // if((dataModel.currentWeather ?? '').contains('Â°')) {
              //   detailItem.tempUnit = 1;
              // }else{
              //   detailItem.tempUnit = 0;
              // }
              detailItem.tempUnit = 1;

              int? highTemp = DataResolver.extractTemperature(
                  dataModel.highTemperature?.value ?? '');
              if (highTemp != null) {
                detailItem.curMaxTemp = highTemp;
              }

              int? lowTemp = DataResolver.extractTemperature(
                  dataModel.lowTemperature?.value ?? '');
              if (lowTemp != null) {
                detailItem.curMinTemp = lowTemp;
              }
              final weatherType = utf8.encode(
                  dataModel.currentWeatherIcon?.contentDescription ?? '');
              detailItem.weatherType = weatherType;
              detailItem.cityName =
                  utf8.encode(dataModel.title?.mainTitle ?? '');

              //alexa 没有返回时 分 所以默认获取当前时分
              DateTime nowTime = DateTime.now();
              detailItem.hour = nowTime.hour;
              detailItem.min = nowTime.minute;
              detailItem.year = nowTime.year;
              detailItem.month = nowTime.month;
              detailItem.day = nowTime.day;

              detailItem.week = nowTime.weekday;

              if (dataModel.weatherForecast != null) {
                for (int j = 0;
                    j < (dataModel.weatherForecast ?? []).length;
                    j++) {
                  AlexaWeatherForecastEntity entity =
                      (dataModel.weatherForecast ?? [])[j];
                  alexa_weather_future_item futureItem =
                      alexa_weather_future_item();
                  final futureWeatherType =
                      utf8.encode(entity.image?.contentDescription ?? '');
                  futureItem.weatherType = futureWeatherType;
                  int? futureHigh = DataResolver.extractTemperature(
                      entity.highTemperature ?? '');
                  if (futureHigh != null) {
                    futureItem.maxTemp = futureHigh;
                  }
                  int? futureLow = DataResolver.extractTemperature(
                      entity.lowTemperature ?? '');
                  if (futureLow != null) {
                    futureItem.minTemp = futureLow;
                  }
                  detailItem.futureItems.add(futureItem);
                }
              }
              operate.detailDataItem = detailItem;
              dataResponse = operate;
            }
          } else if (headerMap['name'] == DirectiveType.setVolume.title) {
            //0 - 100 表示音量的百分比
            int volume = targetMap['volume'];
            //通知固件调整音量  完成后调 VolumeChange
            AuthorizationManager.volumeChanged(volume);
            List<int> d = utf8.encode('OK!');
            strList = d;
            callback(strList, [], null, expectSpeechStatus);
            return;
          }

          if (targetMap.containsKey('caption')) {
            final vttData = targetMap['caption']['content'];
            if (strList.isEmpty) {
              strList = DataResolver.extractWebVTTContent(vttData);
            } else {
              strList = [
                ...strList,
                ...DataResolver.extractWebVTTContent(vttData)
              ];
            }
          }
        }
      }

      //如果收到返回 但是返回内没有音频内容 则视为识别失败
      if (audioData.isEmpty) {
        callback([], [], null, 4);
        LoggerHandler.log(LogType.info, '返回内没有音频内容 则视为识别失败');
        AuthorizationManager().states = AlexaStates.free;
        return;
      } else {
        //如果收到返回 且有音频内容 但是没有文本内容 则有可能只是效果音效 这时给文本设置为 'OK'
        if (strList.isEmpty) {
          List<int> d = utf8.encode('OK!');
          strList = d;
          LoggerHandler.log(LogType.info, '没有文字返回 写入默认文字OK');
        }
      }
      Uint8List listData = Uint8List.fromList(audioData);
      AudioPlayerManager().writeToFile(listData, (isSuccess) {
        if (isSuccess) {
          AudioPlayerManager().convertMp3ToPcm(callBack: (e) {
            callback(strList, e, dataResponse, expectSpeechStatus);
          });
          //记录开始播放录音的时间
        } else {}
      });
    });
  }

  static void speechRecognizer(List<int> data) async {
    AuthorizationRequest.speechRecognizer(data);
  }

  static void stopRecognizerOutgoingStream() {

    if(AuthorizationRequest.recStream == null){
      LoggerHandler.log(LogType.info, '停止语音识别上行流  上行流未创建');
      return;
    }

    LoggerHandler.log(LogType.info, '开始停止语音识别上行流');
    AuthorizationRequest.isSpeechRecognizerStop = true;
    try {
      if (AuthorizationManager().states == AlexaStates.listening) {
        AuthorizationRequest.recStream?.outgoingMessages.close();
      }
    } catch (error, stackTrace) {
      LoggerHandler.log(LogType.error, '停止语音识别上行流错误',
          error: error, stackTrace: stackTrace);
      print('stop recStream error ${error.toString()}');
    }
  }

  static void speechInterruptedAction() {
    final current = DateTime.now().millisecondsSinceEpoch;
    final diff = current - AuthorizationManager().model.startSpeechTime;
    Map<String, dynamic> reqData = {
      'token': AuthorizationManager().model.speakToken,
      'offsetInMilliseconds': diff,
    };
    DirectiveHandler.processEvent(
        EventType.speechInterrupted, reqData: reqData, (data) {});
  }
}
