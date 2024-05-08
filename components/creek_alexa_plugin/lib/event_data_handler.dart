import 'package:creek_alexa_plugin/device_info_handler.dart';

enum EventType {
  //下行流
  downChannel,
  //校验网关
  verifyGateway,
  //更新功能信息
  addOrUpdateReport,
  //删除功能信息
  deleteReport,
  //开始播放alexa语音
  speechStarted,
  //结束播放alexa语音
  speechFinished,
  //alexa语音播放被打断
  speechInterrupted,
  //成功设置计时器
  setAlertSucceeded,
  //设置计时器失败
  setAlertFailed,
  //成功删除一个计时器
  deleteAlertSucceeded,
  //删除一个计时器失败
  deleteAlertFailed,
  //成功删除多个计时器
  deleteAlertsSucceeded,
  //删除多个计时器失败
  deleteAlertsFailed,
  //计时器唤起
  alertStarted,
  //计时器被停止
  alertStopped,
  //计时器进入前台
  alertEnteredForeground,
  //计时器进入后台
  alertEnteredBackground,
  //多转语音超时
  expectSpeechTimedOut,
  //空闲状态上报
  userInactivityReport,
  //软件固件信息上报
  softwareInfo,
  //修改音量
  volumeChanged,
  //修改alert音量
  alertVolumeChanged,
  //时区上报
  timeZoneReport,
  //时区修改
  timeZoneChanged,
  //勿扰模式上报
  reportDoNotDisturb,
  //勿扰模式变化
  doNotDisturbChanged,
  //修改语音识别语言类型
  localesChanged;

  String get title {
    switch (this) {
      case EventType.downChannel:
        return 'DownChannel';

      case EventType.verifyGateway:
        return 'VerifyGateway';

      case EventType.addOrUpdateReport:
        return 'AddOrUpdateReport';

      case EventType.deleteReport:
        return 'DeleteReport';

      case EventType.speechStarted:
        return 'SpeechStarted';

      case EventType.speechFinished:
        return 'SpeechFinished';

      case EventType.speechInterrupted:
        return 'SpeechInterrupted';

      case EventType.setAlertSucceeded:
        return 'SetAlertSucceeded';

      case EventType.setAlertFailed:
        return 'SetAlertFailed';

      case EventType.deleteAlertSucceeded:
        return 'DeleteAlertSucceeded';

      case EventType.deleteAlertFailed:
        return 'DeleteAlertFailed';

      case EventType.deleteAlertsSucceeded:
        return 'DeleteAlertsSucceeded';

      case EventType.deleteAlertsFailed:
        return 'DeleteAlertsFailed';

      case EventType.alertStarted:
        return 'AlertStarted';

      case EventType.alertStopped:
        return 'AlertStopped';

      case EventType.alertEnteredForeground:
        return 'AlertEnteredForeground';

      case EventType.alertEnteredBackground:
        return 'AlertEnteredBackground';

      case EventType.userInactivityReport:
        return 'UserInactivityReport';

      case EventType.softwareInfo:
        return 'SoftwareInfo';

      case EventType.volumeChanged:
        return 'VolumeChanged';

      case EventType.alertVolumeChanged:
        return 'VolumeChanged';

      case EventType.expectSpeechTimedOut:
        return 'ExpectSpeechTimedOut';

      case EventType.timeZoneReport:
        return 'TimeZoneReport';

      case EventType.timeZoneChanged:
        return 'TimeZoneChanged';

      case EventType.reportDoNotDisturb:
        return 'ReportDoNotDisturb';

      case EventType.doNotDisturbChanged:
        return 'DoNotDisturbChanged';

      case EventType.localesChanged:
        return 'LocalesChanged';

      default:
        return '';
    }
  }
}

enum DirectiveType {
  //设置计时器
  setAlert,
  //删除alert
  deleteAlert,
  //删除多个alert
  deleteAlerts,
  //勿扰模式
  setDoNotDisturb,
  //多转语音
  expectSpeech,
  //表示alexa 开始进入思考模式
  requestProcessingStarted,
  //表示alexa 结束思考模式
  requestProcessingCompleted,
  //新对话开启指令
  newDialogRequest,
  //上报软件与固件信息
  reportSoftwareInfo,
  //设置音量
  setVolume,
  //调整音量
  adjustVolume,
  //
  renderTemplate,
  //设置通知
  setIndicator,
  //清除通知
  clearIndicator,
  //语音识别播放
  speak;

  String get title {
    switch (this) {
      case DirectiveType.setAlert:
        return 'SetAlert';

      case DirectiveType.deleteAlert:
        return 'DeleteAlert';

      case DirectiveType.deleteAlerts:
        return 'DeleteAlerts';

      case DirectiveType.setDoNotDisturb:
        return 'SetDoNotDisturb';

      case DirectiveType.expectSpeech:
        return 'ExpectSpeech';

      case DirectiveType.requestProcessingStarted:
        return 'RequestProcessingStarted';

      case DirectiveType.requestProcessingCompleted:
        return 'RequestProcessingCompleted';

      case DirectiveType.newDialogRequest:
        return 'NewDialogRequest';

      case DirectiveType.reportSoftwareInfo:
        return 'ReportSoftwareInfo';

      case DirectiveType.setVolume:
        return 'SetVolume';

      case DirectiveType.adjustVolume:
        return 'AdjustVolume';

      case DirectiveType.renderTemplate:
        return 'RenderTemplate';

      case DirectiveType.setIndicator:
        return 'SetIndicator';

      case DirectiveType.clearIndicator:
        return 'ClearIndicator';

      case DirectiveType.speak:
        return 'Speak';

      default:
        return '';
    }
  }
}

enum EventNamespaceType {
  //以下为功能大模块
  alexaApiGateway,
  alexaDiscovery,
  alexaDoNotDisturb,
  speechSynthesizer,
  speechRecognizer,
  alerts,
  alexaCaptions,
  speaker,
  notifications,
  system;

  String get title {
    switch (this) {
      case EventNamespaceType.alexaApiGateway:
        return 'Alexa.ApiGateway';

      case EventNamespaceType.alexaDiscovery:
        return 'Alexa.Discovery';

      case EventNamespaceType.alexaDoNotDisturb:
        return 'Alexa.DoNotDisturb';

      case EventNamespaceType.speechSynthesizer:
        return 'SpeechSynthesizer';

      case EventNamespaceType.speechRecognizer:
        return 'SpeechRecognizer';

      case EventNamespaceType.alerts:
        return 'Alerts';

      case EventNamespaceType.alexaCaptions:
        return 'AlexaCaptions';

      case EventNamespaceType.speaker:
        return 'Speaker';

      case EventNamespaceType.notifications:
        return 'Notifications';

      case EventNamespaceType.system:
        return 'System';

      default:
        return '';
    }
  }
}

class EventHandler {
  static Future<Map<String, dynamic>> getEventMap(
      EventType eventName, EventNamespaceType namespace, String token,
      {Map<String, dynamic>? other}) async {
    late Map<String, dynamic> map;
    final messageId = DeviceInfoHandler.md5RandomString();
    switch (eventName) {
      case EventType.addOrUpdateReport:
        String endpointId = other?['endpointId'];
        String productId = other?['productId'];
        String deviceSerialNumber = other?['deviceSerialNumber'];
        String firmwareVersion = other?['firmwareVersion'];
        String customIdentifier = other?['customIdentifier'];
        String eventToken = DeviceInfoHandler.generateUUID();
        print('endpointId length $productId  === $deviceSerialNumber');
        map = {
          "event": {
            "header": {
              "namespace": namespace.title,
              "name": eventName.title,
              "messageId": messageId,
              "payloadVersion": 3,
              "eventCorrelationToken": eventToken
            },
            "payload": {
              "scope": {"type": "BearerToken", "token": token},
              "endpoints": [
                {
                  "endpointId": endpointId,
                  "registration": {
                    "productId": productId,
                    "deviceSerialNumber": deviceSerialNumber
                  },
                  "manufacturerName": "Creek Element",
                  "description": "Alexa voice service by Creek",
                  "friendlyName": "Creek Alexa Element",
                  "displayCategories": ["WEARABLE"],
                  "additionalAttributes": {
                    "manufacturer": "Creek",
                    "model": "Creek model",
                    "serialNumber": deviceSerialNumber,
                    "firmwareVersion": firmwareVersion,
                    "softwareVersion": "1.0.0",
                    "customIdentifier": customIdentifier,
                  },
                  "capabilities": [
                    // { "type" : "AlexaInterface",
                    //   "interface" : "SpeechRecognizer",
                    //   "version" : "2.3",
                    //   "configurations": {
                    //      "wakeWords" : [ { "scopes" : [ "DEFAULT" ], "values" : [ ["ALEXA"] ] } ]
                    //   }
                    // },
                    {
                      "type": "AlexaInterface",
                      "interface": "Alexa.DoNotDisturb",
                      "version": "1.0"
                    },
                    {
                      "type": "AlexaInterface",
                      "interface": "Alerts",
                      "version": "1.5",
                      "configurations": {
                        "maximumAlerts": {
                          "overall": 13,
                          "alarms": 5,
                          "timers": 3,
                        }
                      }
                    },
                    {
                      "interface": "InteractionModel",
                      "type": "AlexaInterface",
                      "version": "1.2"
                    },
                    {
                      "interface": "Alexa",
                      "type": "AlexaInterface",
                      "version": "3"
                    },
                    {
                      "interface": "Alexa.ApiGateway",
                      "type": "AlexaInterface",
                      "version": "1.0"
                    },
                    {
                      "interface": "SpeechSynthesizer",
                      "type": "AlexaInterface",
                      "version": "1.3"
                    },
                    {
                      "interface": "AudioPlayer",
                      "type": "AlexaInterface",
                      "version": "1.5"
                    },
                    {
                      "interface": "SpeechRecognizer",
                      "type": "AlexaInterface",
                      "version": "2"
                          "2.3"
                    },
                    {
                      "interface": "Notifications",
                      "type": "AlexaInterface",
                      "version": "1.0"
                    },
                    // {
                    //   "interface":"Geolocation",
                    //   "type":"AlexaInterface",
                    //   "version":"1.1"
                    // },
                    {
                      "interface": "TemplateRuntime",
                      "type": "AlexaInterface",
                      "version": "1.0"
                    },
                    {
                      "interface": "Speaker",
                      "type": "AlexaInterface",
                      "version": "1.0"
                    },
                    // {
                    //   "configurations":{
                    //     "locales":[
                    //       "de-DE",
                    //       "en-AU",
                    //       "en-CA",
                    //       "en-GB",
                    //       "en-IN",
                    //       "en-US",
                    //       "es-ES",
                    //       "es-MX",
                    //       "es-US",
                    //       "fr-CA",
                    //       "fr-FR",
                    //       "it-IT",
                    //       "ja-JP",
                    //       "pt-br"
                    //     ]
                    //   },
                    //   "interface":"System",
                    //   "type":"AlexaInterface",
                    //   "version":"2.1"
                    // }
                  ],
                },
              ]
            }
          }
        };
        break;

      case EventType.deleteReport:
        map = {
          "event": {
            "header": {
              "namespace": "Alexa.Discovery",
              "name": "DeleteReport",
              "payloadVersion": "3",
              "messageId": messageId
            },
            "payload": {
              "scope": {"type": "BearerToken", "token": token},
              "endpoints": [
                {"endpointId": "1"},
              ]
            }
          }
        };
        break;

      default:
        Map<String, dynamic> payload = other ?? {};
        map = {
          "event": {
            "header": {
              "namespace": namespace.title,
              "name": eventName.title,
              "messageId": messageId
            },
            "payload": payload
          }
        };
    }
    return map;
  }
}
