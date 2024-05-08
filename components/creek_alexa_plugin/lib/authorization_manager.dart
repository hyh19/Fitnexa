import 'dart:isolate';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:creek_alexa_plugin/alert_manager.dart';
import 'package:creek_alexa_plugin/authorization_request.dart';
import 'package:creek_alexa_plugin/device_info_handler.dart';
import 'package:creek_alexa_plugin/directive_handler.dart';
import 'package:creek_alexa_plugin/recognizer_manager.dart';
import 'package:creek_blue_manage/alexa/alexa_upload.dart';
import 'package:creek_blue_manage/alexa/creek_receive_alexa_server.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';
import 'package:creek_blue_manage/proto/disturb.pb.dart';
import 'package:creek_blue_manage/proto/update.pb.dart';
import 'package:flutter/material.dart';
import 'package:creek_alexa_plugin/authorization_webView.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:creek_alexa_plugin/event_data_handler.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:creek_alexa_plugin/network_connect_state.dart';
import 'package:creek_blue_manage/alexa/creek_alexa_protocol.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';



class TempDataModel {
  //语音对话中携带的token
  String speakToken = '';

  //开始语音播放的时间戳 用于后续打断的时候计算时间差
  int startSpeechTime = 0;

  //alert设置中携带的token
  String alertToken = '';

  //alert携带的预定时间
  String scheduledTime = '';

  //是否接收到ExpectSpeech 指令
  bool isNeedExpectSpeech = false;
  Timer? expectSpeechTimer;

  //多转对话Id
  String dialogId = '';

  //当前时区
  String timeZone = '';

  //空闲状态上报时间 小时
  int inactivityReportHours = 0;

  int volume = defaultVolume;

  List<Map<String, String>> allAlerts = [];
  List<Map<String, String>> activeAlerts = [];

}

enum AlexaStates {
  connecting,
  listening,
  thinking,
  speaking,
  free,
  timeOut;

  String get title {
    switch (this) {
      case AlexaStates.connecting:
        return 'connecting';
      case AlexaStates.listening:
        return 'listening';
      case AlexaStates.speaking:
        return 'speaking';
      case AlexaStates.thinking:
        return 'thinking';
      case AlexaStates.free:
        return 'free';
      case AlexaStates.timeOut:
        return 'timeOut';
    }
  }
}

const needReconnect = 'kNeedReconnect';
const int defaultVolume = 60;

class AuthorizationManager with WidgetsBindingObserver{
  String productId = '';
  String clientId = '';
  int enterBackgroundTime = 0;

  AlexaStates _states = AlexaStates.listening;

  set states(AlexaStates newValue) {
    if (newValue != _states) {
      _states = newValue;
      if (_states == AlexaStates.thinking) {
        LoggerHandler.log(LogType.info, 'alexa 返回进入思考状态  关闭固件麦克风');
        alexaProtocol.openMic(isOpen: false);
      }
      _controller.add(_states);
    }
  }

  AlexaStates get states => _states;

  Stream<AlexaStates> get onChange => _controller.stream;

  bool isRegistrationPage = false;
  Timer? loadTokenTimer;

  //是否在网页授权中
  bool isLoadingDeviceTokensReq = false;

  //过期时间
  int expire = 0;

  //获取Token的本地时间 用于计算token是否过期
  int getTokenTime = 0;

  String accessToken = '';
  String refreshToken = '';

  bool isEnterAlexaInWatch = false;

  // late Isolate? reloadTokenIsolate;

  late TempDataModel model;

  List<int> tempStorageAudioData = [];

  static final AuthorizationManager _singletonManager =
      AuthorizationManager._internal();

  factory AuthorizationManager() {
    return _singletonManager;
  }

  late StreamController<AlexaStates> _controller;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {

    if(state == AppLifecycleState.paused){
      LoggerHandler.log(LogType.info, '应用进入后台');
      print('应用进入后台');
      _singletonManager.enterBackgroundTime = DateTime.now().millisecondsSinceEpoch;
    }else if(state ==  AppLifecycleState.resumed){
      LoggerHandler.log(LogType.info, '应用进入前台');
      print('应用进入前台');
      if(_singletonManager.enterBackgroundTime > 0){
        final current = DateTime.now().millisecondsSinceEpoch;
        //如果进入后台超过5分钟 回到前台则重新创建下行流
        if(current - _singletonManager.enterBackgroundTime > 300 * 1000){
          LoggerHandler.log(LogType.info, '应用进入后台超过5分钟 重新创建下行流');
          AuthorizationManager().refreshTokenAction((isSuccess) {
            createConnection();
            AlertManager.reportTimeZone();
            AlertManager.changeTimeZone();
          });
          if(current - _singletonManager.enterBackgroundTime > 3600 * 1000) {
            LoggerHandler.log(LogType.info, '应用进入后台超过60分钟 重新初始化日志');
            LoggerHandler.initData();
          }
        }
        _singletonManager.enterBackgroundTime = 0;

      }
    }else if(state == AppLifecycleState.inactive){
      LoggerHandler.log(LogType.info, '应用不活跃');
    }else if(state ==  AppLifecycleState.detached){
      LoggerHandler.log(LogType.info, '应用被杀');
    }
  }

  static setupManager(String productId, String clientId, Function() callback) {
    LoggerHandler.initData();
    LoggerHandler.log(LogType.info, 'Authorization 初始化');
    AuthorizationManager().readLocalData(() {
      if (_singletonManager.accessToken.isNotEmpty) {
        //获取到本地缓存数据的话回调界面去刷新
        callback();
      }
    });

    AuthorizationManager().model = TempDataModel();
    _singletonManager.productId = productId;
    _singletonManager.clientId = clientId;
    _singletonManager._controller = StreamController<AlexaStates>.broadcast();
    LoggerHandler.log(LogType.info, 'Authorization 初始化完成');

    _networkConnect.setConnectivityResultListen((networkState) {
      LoggerHandler.log(LogType.info, '网络状态监听  $networkState');
      _singletonManager.networkState = networkState;
    });

    WidgetsBinding.instance.addObserver(AuthorizationManager._singletonManager);

    //1开始 2数据 3 结束
    CreekDown.instance.listenPcmDataStream = (state, record) {
      if (state == 1) {
        AuthorizationManager().model.inactivityReportHours = 0;
        AuthorizationManager().tempStorageAudioData = [];
        LoggerHandler.log(LogType.info, 'alexa语音识别 收到固件指令开始连接');
        RecognizerManager.speechRecognizerConnect(
            (strList, audioData, dataResponse, code) {
              if(AuthorizationManager().isEnterAlexaInWatch){
                print('alexa 还在界面');
                CreekReceiveAlexaServer.instance
                    .receive(strList, audioData, dataResponse, code);
              }else{
                print('alexa 不在界面');
                LoggerHandler.log(LogType.info, 'alexa退出 无需下发数据');
              }
        });
      } else if (state == 2) {
        if (AuthorizationManager().states == AlexaStates.listening) {
          if (AuthorizationManager().tempStorageAudioData.isEmpty) {
            RecognizerManager.speechRecognizer(record);
          } else {
            LoggerHandler.log(LogType.info, 'alexa语音识别 缓存语音数据拼接');
            List<int> newData = [
              ...AuthorizationManager().tempStorageAudioData,
              ...record
            ];
            AuthorizationManager().tempStorageAudioData = [];
            RecognizerManager.speechRecognizer(newData);
          }
        } else if (AuthorizationManager().states == AlexaStates.connecting) {
          //当前状态如果在连接 但是用户已经开始录音 需要先记录下此段数据
          // LoggerHandler.log(LogType.info, 'alexa还未连接 但是录音已经开始');
          AuthorizationManager().tempStorageAudioData = [
            ...AuthorizationManager().tempStorageAudioData,
            ...record
          ];
        }
      } else if (state == 3) {
        LoggerHandler.log(LogType.info, 'alexa固件结束语音识别');
        RecognizerManager.stopRecognizerOutgoingStream();
      }
    };

    UpdateNotice.instance.alexaNotice = ((id, model) {
      if (id == CmdId.alexa1) {
        if (model != null) {
          try {
            protocol_alexa_tran_operate info =
                model as protocol_alexa_tran_operate;
            if (info.operate == alexa_operate_type.ALEXA_MIC_OPEN) {
              LoggerHandler.log(LogType.info, 'alexa固件打开麦克风');
            } else if (info.operate == alexa_operate_type.ALEXA_MIC_CLOSE) {
              LoggerHandler.log(LogType.info, 'alexa固件关闭麦克风');
              RecognizerManager.stopRecognizerOutgoingStream();
            } else if (info.operate == alexa_operate_type.ALEXA_VOICE_OPEN) {
              AuthorizationManager().states = AlexaStates.speaking;
              AuthorizationManager().model.startSpeechTime =
                  DateTime.now().millisecondsSinceEpoch;
              LoggerHandler.log(LogType.info, 'alexa固件开启扬声器');
              final token = AuthorizationManager().model.speakToken;
              if (token.isNotEmpty) {
                DirectiveHandler.processEvent(
                    EventType.speechStarted, (data) {});
              }
            } else if (info.operate == alexa_operate_type.ALEXA_VOICE_CLOSE) {
              LoggerHandler.log(LogType.info, 'alexa固件关闭扬声器');
              final token = AuthorizationManager().model.speakToken;
              if (token.isNotEmpty) {
                DirectiveHandler.processEvent(
                    EventType.speechFinished, (data) {});
              }
              if (AuthorizationManager().model.dialogId.isEmpty) {
                AuthorizationManager().states = AlexaStates.free;
              }
            }
          } catch (error, stackTrace) {
            LoggerHandler.log(LogType.error, 'alexa1固件状态监听错误',
                error: error, stackTrace: stackTrace);
          }
        }
      } else if (id == CmdId.alexa2) {
        if (model != null) {
          try {
            protocol_alexa_status_operate info =
                model as protocol_alexa_status_operate;
            //当前如果状态正在播放录音 这个时候进行语音识别的话 需要向alexa发送一个打断事件
            if (info.noticeType == alexa_noitce_type.ALEXA_NOTICE_IRQ_REQUEST) {
              LoggerHandler.log(LogType.info, '语音识别 被打断');
              RecognizerManager.speechInterruptedAction();
            } else if (info.noticeType ==
                alexa_noitce_type.ALEXA_NOTICE_REQUEST) {
              //记录是否进入alexa
              AuthorizationManager().isEnterAlexaInWatch = true;
              LoggerHandler.log(LogType.info, '固件端初始化获取当前状态 开始');

              if (AuthorizationManager().networkState ==
                      ConnectivityResult.other ||
                  AuthorizationManager().networkState ==
                      ConnectivityResult.none) {
                LoggerHandler.log(LogType.info, '固件端初始化获取当前状态  没有网络');
                CreekReceiveAlexaServer.instance.setAlexaStatusOperate(3);
                return;
              }

              int loginStatue = AuthorizationManager().checkLogin();
              //0 为没有授权  1为授权  2为授权过期
              if (loginStatue == 0) {
                LoggerHandler.log(LogType.info, '固件端初始化获取当前状态  没有授权');
                CreekReceiveAlexaServer.instance.setAlexaStatusOperate(2);
              } else if (loginStatue == 1) {
                LoggerHandler.log(LogType.info, '固件端初始化获取当前状态  授权成功');
                CreekReceiveAlexaServer.instance.setAlexaStatusOperate(1);
              } else if (loginStatue == 2) {
                LoggerHandler.log(LogType.info, '固件端初始化获取当前状态  刷新授权');
                AuthorizationManager().refreshTokenAction((isSuccess) {
                  if (isSuccess) {
                    LoggerHandler.log(LogType.info, '固件端初始化获取当前状态  刷新授权成功');
                    CreekReceiveAlexaServer.instance.setAlexaStatusOperate(1);
                  } else {
                    LoggerHandler.log(LogType.info, '固件端初始化获取当前状态  刷新授权失败');
                    CreekReceiveAlexaServer.instance.setAlexaStatusOperate(3);
                  }
                });
              }
            } else if (info.noticeType == alexa_noitce_type.ALEXA_NOTICE_EXIT) {
              AuthorizationManager().isEnterAlexaInWatch = false;
              LoggerHandler.log(LogType.info, 'alexa退出 停止上行流并停止下发固件内容');
              RecognizerManager.stopRecognizerOutgoingStream();
              AlexaUpload.instance.cancelUp();
            }
          } catch (error, stackTrace) {
            LoggerHandler.log(LogType.error, 'alexa2固件状态监听错误',
                error: error, stackTrace: stackTrace);
          }
        }
      } else if (id == CmdId.update) {
        if (model != null) {
          try {
            protocol_notice_update_operate operate =
                model as protocol_notice_update_operate;

            if (AuthorizationManager().checkLogin() == 0) {
              LoggerHandler.log(LogType.info,
                  '没有授权 无需上报相关事件  eventId: ${operate.eventId} eventKey :${operate.eventKey} ');
              return;
            }

            if (operate.eventId == event_id.EVENT_ID_SYNC_DATA) {

              print('固件通知 ${operate.eventKey}');
              LoggerHandler.log(LogType.info, '固件通知 ${operate.eventKey}');

              if (operate.eventKey == 0x03) {
                LoggerHandler.log(LogType.info, '固件通知 勿扰事件');
                AuthorizationManager._disturbStatusChangeByNotify();
              } else if (operate.eventKey == 0x09) {
                LoggerHandler.log(LogType.info, '固件通知 ping事件');
                _ping();
                AuthorizationRequest.downChannelPingAction(() {
                  LoggerHandler.log(LogType.info, 'downChannel ping事件 断开 重连');
                  createConnection();
                });
              } else if (operate.eventKey == 0x0c) {
                LoggerHandler.log(LogType.info, '固件通知 空闲上报事件');
                _userInactivityReport();
              } else if (operate.eventKey == 0x0d) {
                LoggerHandler.log(LogType.info, '固件通知 上报闹钟');
                AlertManager.deleteAlarmFromNotify();
              } else if (operate.eventKey == 0x0e) {
                LoggerHandler.log(LogType.info, '固件通知 上报提醒');
                AlertManager.deleteReminderFromNotify();
              }
            } else if (operate.eventId == event_id.EVENT_ID_VOLUME_CHANGE) {
              LoggerHandler.log(
                  LogType.info, '固件通知 音量变化事件  音量为 ${operate.eventKey}');
              int volume = operate.eventKey;
              volumeChanged(volume);
            }
          } catch (error, stackTrace) {
            LoggerHandler.log(LogType.error, 'update固件状态监听错误',
                error: error, stackTrace: stackTrace);
          }
        }
      }
    });
  }

  ConnectivityResult networkState = ConnectivityResult.none;
  static final NetworkConnectState _networkConnect =
      NetworkConnectState.getInstance();

  AuthorizationManager._internal();

  static authorizationDevice(
      BuildContext context, Function(dynamic) callBack) async {
    LoggerHandler.log(LogType.info, 'Authorization 开始授权');
    //重新授权前 清空所有状态
    AuthorizationManager().logout();

    SmartDialog.showLoading();
    final res = await AuthorizationRequest.deviceAuthorization();
    final data = res.$1;
    final error = res.$2;
    SmartDialog.dismiss();

    if (error == null) {
      //AuthorizationManager().isRegistrationPage
      LoggerHandler.log(LogType.info, 'Authorization 准备授权网页');
      String userCode = data['user_code'];
      String deviceCode = data['device_code'];
      String verUrl = data['verification_uri'];
      String productId = AuthorizationManager().productId;
      String clientId = AuthorizationManager().clientId;
      String deviceId = await DeviceInfoHandler.getDeviceId();
      LoggerHandler.log(LogType.info, 'user_code $userCode  verUrl $verUrl');
      String scopeData =
          '%7B%22alexa%3Aall%22%3A%7B%22productID%22%3A%22$productId%22,%22productInstanceAttributes%22%3A%7B%22deviceSerialNumber%22%3A%22$deviceId%22%7D%7D%7D';
      LoggerHandler.log(LogType.info, '授权url scopeData == $scopeData');
      print('User_code $userCode  url  $verUrl');
      String urlString =
          'https://amazon.com/ap/oa?client_id=$clientId&scope=alexa%3Aall&scope_data=$scopeData&response_type=device_code&continuation_mode=device_code&user_code=$userCode&language=en_US';
      LoggerHandler.log(LogType.info, '授权url urlString == $urlString');
      Route route = MaterialPageRoute(
          builder: (context) => AuthorizationWebViewPage(urlString: urlString));
      if (!context.mounted) return;
      // AuthorizationManager().isRegistrationPage = true;
      Navigator.push(context, route);
      AuthorizationManager._loadDeviceTokensReq(
          context, deviceCode, userCode, callBack);
    } else {
      // AuthorizationManager().isRegistrationPage = false;

      LoggerHandler.log(LogType.info, 'Authorization 授权失败');
      callBack(false);
    }
  }

  static void _configDeviceTokenData(BuildContext context,
      (dynamic, dynamic) result, Function(dynamic) callBack) {
    LoggerHandler.log(
        LogType.info, 'Authorization 轮询 res = ${result.toString()}');
    final data = result.$1;
    final error = result.$2;
    if (error == null) {
      final invalidCodePair = data['invalid_code_pair'];

      if (invalidCodePair != null) {
        AuthorizationManager().isLoadingDeviceTokensReq = false;
        callBack(false);
        LoggerHandler.log(LogType.error, 'Authorization 轮询 invalidCodePair',
            error: invalidCodePair);
        // if (AuthorizationManager().isRegistrationPage) {
        if (!context.mounted) {
          LoggerHandler.log(LogType.info, 'Authorization 退出网页授权页面失败 context错误');
          return;
        }
        LoggerHandler.log(LogType.info, 'Authorization 退出网页授权页面');
        Navigator.of(context).pop();
        // }else{
        //   LoggerHandler.log(LogType.info, 'Authorization 退出网页授权页面失败 isRegistrationPage 为 false');
        // }
        // port.close();
        // AuthorizationManager().reloadTokenIsolate?.kill(
        //     priority: Isolate.immediate);
        return;
      }
      LoggerHandler.log(LogType.info, 'Authorization 轮询结束');
      AuthorizationManager().setLocalData(data);
      AuthorizationManager().isLoadingDeviceTokensReq = true;
      // port.close();
      // AuthorizationManager().reloadTokenIsolate?.kill(
      //     priority: Isolate.immediate);
      // if (AuthorizationManager().isRegistrationPage) {
      if (!context.mounted) {
        LoggerHandler.log(LogType.info, 'Authorization 退出网页授权页面失败 context错误');
        return;
      }
      AuthorizationManager().isLoadingDeviceTokensReq = false;
      LoggerHandler.log(LogType.info, 'Authorization 退出网页授权页面');
      Navigator.of(context).pop();
      // }else{
      //   LoggerHandler.log(LogType.info, 'Authorization 退出网页授权页面失败 isRegistrationPage 为 false');
      // }

      uploadDataToAlexa();
      callBack(true);
    } else {
      LoggerHandler.log(LogType.info, '没有轮询到token $result');
    }
  }

  static void _loadDeviceTokensReq(BuildContext context, String deviceCode,
      String userCode, Function(dynamic) callBack) async {
    LoggerHandler.log(LogType.info, 'Authorization 开始轮询token');
    // ReceivePort port = ReceivePort();
    // SendPort sendPort = port.sendPort;
    // AuthorizationManager().reloadTokenIsolate = await Isolate.spawn(_requestDeviceTokens, sendPort);
    //
    // port.listen((message) {
    //   if(message is SendPort){
    //     SendPort otherPort = message;
    //     otherPort.send((deviceCode, userCode));
    //   }else if(message is (dynamic, dynamic)) {
    //
    //
    //   }
    // });
    AuthorizationManager().loadTokenTimer =
        Timer.periodic(const Duration(seconds: 2), (timer) async {
      print('轮询token');
      LoggerHandler.log(LogType.info, 'Authorization 轮询DeviceTokens');
      if (!AuthorizationManager().isLoadingDeviceTokensReq &&
          deviceCode.isNotEmpty &&
          userCode.isNotEmpty) {
        final res = await AuthorizationRequest.requestDeviceTokens(
            deviceCode, userCode);
        final error = res.$2;
        if (error == null) {
          timer.cancel();
        }
        // ignore: use_build_context_synchronously
        AuthorizationManager._configDeviceTokenData(context, res, callBack);
      }
    });
  }

  static void _requestDeviceTokens(SendPort sendPort) {
    ReceivePort port = ReceivePort();
    sendPort.send(port.sendPort);
    String deviceCode = '';
    String userCode = '';
    port.listen((message) {
      if (message is (String, String)) {
        deviceCode = message.$1;
        userCode = message.$2;
      }
    });
    //2秒一次轮询
    Timer.periodic(const Duration(seconds: 2), (timer) async {
      if (!AuthorizationManager().isLoadingDeviceTokensReq &&
          deviceCode.isNotEmpty &&
          userCode.isNotEmpty) {
        final res = await AuthorizationRequest.requestDeviceTokens(
            deviceCode, userCode);
        final error = res.$2;
        if (error == null) {
          timer.cancel();
          sendPort.send(res);
        } else {
          sendPort.send(res);
          //轮询请求token 失败会报错 暂不处理
          // print(error.toString());
        }
      }
    });
  }

  void refreshTokenAction(Function(dynamic) callBack) async {
    final res =
        await AuthorizationRequest.refreshDeviceToken(refreshToken, clientId);
    print('refresh res == $res');
    final error = res.$2;
    //暂无对刷新token 失败做处理
    if (error != null) {
      // print(error.toString());
      //这里或许可以开个线程轮询去刷新token 后面优化
      LoggerHandler.log(LogType.error, '刷新 token 失败', error: error);
      callBack(false);
    } else {
      final data = res.$1;
      AuthorizationManager().setLocalData(data);
      createConnection();
      callBack(true);
    }
  }

  static void uploadDataToAlexa() async {
    print('上传状态');
    LoggerHandler.log(LogType.info, '开始上报信息');
    AuthorizationManager.createConnection();
    AuthorizationManager.updateReport('msg');
    AuthorizationManager.synchronizeStates();
    AlertManager.reportTimeZone();
    AlertManager.changeTimeZone();
    AuthorizationManager._disturbStatusReport();
    AlertManager.getAllAlertsList((list) async {
      AuthorizationManager().model.allAlerts = list.first;
      AuthorizationManager().model.activeAlerts = list.last;
      final res = await AuthorizationRequest.synchronizeStates();
      print('res == $res');
    });
    // AuthorizationRequest.setCapabilities(AuthorizationManager().accessToken);
  }

  static void synchronizeStates() async {
    final res = await AuthorizationRequest.synchronizeStates();
    print('res == $res');
  }

  static void createConnection() async {
    final res = await AuthorizationRequest.createConnection(
        AuthorizationManager().accessToken, (mapList) {
      for (dynamic map in mapList) {
        DirectiveHandler.process(map, (res) {});
      }
    });

    //如果statusCode 403 则授权过期
    if (res.$1 == 403) {
      AuthorizationManager().refreshTokenAction((p0) {
        createConnection();
      });
      return;
    } else {
      String content = String.fromCharCodes(res.$2);
      //当下行流只是返回报头时 不重新创建 避免消耗
      if (content.trim() == '--------abcde123') {
        return;
      }
      LoggerHandler.log(LogType.info, '下行流重新连接');
      createConnection();
    }
  }

  static void _ping() async {
    final res =
        await AuthorizationRequest.ping(AuthorizationManager().accessToken);
    final status = res.$1;

    if (status != 204) {
      //如果ping 失败了 那就是链接断开 需要重连
      print('ping 断开了');
      LoggerHandler.log(LogType.info, 'ping 断开了 重新连接');
      if(status == 403){
        AuthorizationManager().refreshTokenAction((p0) {
          createConnection();
        });
        return;
      }
      createConnection();
    }
  }

  static void _userInactivityReport() async {
    AuthorizationManager().model.inactivityReportHours =
        AuthorizationManager().model.inactivityReportHours + 1;
    int sec = 3600 * AuthorizationManager().model.inactivityReportHours;
    LoggerHandler.log(LogType.info, '空闲上报 $sec');
    Map<String, dynamic> reqData = {
      'inactiveTimeInSeconds': sec,
    };

    DirectiveHandler.processEvent(EventType.userInactivityReport,
        reqData: reqData, (result) {
      LoggerHandler.log(LogType.info, '空闲状态上报  ${result.toString()}');
      print(result);
    });
  }

  static void disturbStatusChange(bool enabled){
    if(AuthorizationManager().checkLogin() == 0){
      LoggerHandler.log(LogType.info,
          '没有授权 无需上报相关事件  disturbStatusChange ');
      return;
    }
    Map<String, bool> map = {'enabled': enabled};
    DirectiveHandler.processEvent(EventType.doNotDisturbChanged, reqData: map, (data) {});
  }

  static void _disturbStatusChangeByNotify(){
    if(AuthorizationManager().checkLogin() == 0){
      LoggerHandler.log(LogType.info,
          '没有授权 无需上报相关事件  disturbStatusChange ');
      return;
    }
    foundationCommand.getNewDisturb(callBack: (reply) {
      print('获取勿扰成功');
      LoggerHandler.log(LogType.error, '获取勿扰成功 reply $reply');
      bool enabled = false;
      if (reply.disturbItem.isNotEmpty) {
        protocol_set_disturb_item item = reply.disturbItem.first;
        enabled = item.switchFlag;
      }

      Map<String, bool> map = {'enabled': enabled};
      DirectiveHandler.processEvent(EventType.doNotDisturbChanged, reqData: map, (data) {});
    }, errCallBack: (error) {
      print('获取勿扰失败');
      LoggerHandler.log(LogType.error, '获取勿扰失败 $error');
    });
  }

  static void _disturbStatusReport() {
    foundationCommand.getNewDisturb(callBack: (reply) {
      print('获取勿扰成功');
      LoggerHandler.log(LogType.error, '获取勿扰成功 reply $reply');
      bool enabled = false;
      if (reply.disturbItem.isNotEmpty) {
        protocol_set_disturb_item item = reply.disturbItem.first;
        enabled = item.switchFlag;
      }

      Map<String, bool> map = {'enabled': enabled};
      DirectiveHandler.processEvent(EventType.reportDoNotDisturb, reqData: map, (data) {});
    }, errCallBack: (error) {
      print('获取勿扰失败');
      LoggerHandler.log(LogType.error, '获取勿扰失败 $error');
    });
  }

  static void volumeChanged(int volume) async {

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('AlexaVolume', volume);
    AuthorizationManager().model.volume = volume;
    Map<String, dynamic> reqData = {
      'volume': volume,
      'muted' : false,
    };
    DirectiveHandler.processEvent(EventType.volumeChanged, reqData: reqData,
        (result) {
      LoggerHandler.log(LogType.info, '音量变化  ${result.toString()}');
      print(result);
    });

    Map<String, dynamic> alertReqData = {
      'volume': volume,
    };

    DirectiveHandler.processEvent(EventType.alertVolumeChanged,
        reqData: alertReqData , (result) {
      LoggerHandler.log(LogType.info, 'Alert音量变化  ${result.toString()}');
      print(result);
    });
  }

  static void updateReport(String msg) async {
    LoggerHandler.log(LogType.info, '开始校验网关');
    DirectiveHandler.processEvent(EventType.verifyGateway, (result) async {
      if (result.$1 == 204) {
        LoggerHandler.log(LogType.info, '校验网关成功');
        final deviceId = await DeviceInfoHandler.getDeviceId();
        final deviceModel = await interfaceProtocol.getDeviceInfo();
        final endpointId =
            '${AuthorizationManager().clientId}::${AuthorizationManager().productId}::$deviceId';
        final other = {
          'productId': AuthorizationManager().productId,
          'endpointId': endpointId,
          'deviceSerialNumber': deviceId,
          'firmwareVersion':
              '${deviceModel?.majorVersion ?? 1}.${deviceModel?.minorVersion ?? 0}.${deviceModel?.microVersion ?? 0}',
          'customIdentifier': '${deviceModel?.deviceId ?? 'deviceId'}'
        };
        LoggerHandler.log(LogType.info, '开始上报信息');
        DirectiveHandler.processEvent(EventType.addOrUpdateReport,
            reqData: other, (res) {
          if (result.$1 == 204 || result.$1 == 200) {
            LoggerHandler.log(LogType.info, '上报信息成功');
          } else {
            LoggerHandler.log(LogType.info, '上报信息失败');
          }
        });
      } else {
        LoggerHandler.log(LogType.error, '校验网失败', error: result.$2);
      }
    });
    // interfaceProtocol.getDeviceInfo();
  }

  // static void capUpdate() async{
  // final res = await AuthorizationRequest.setCapabilities(AuthorizationManager().accessToken);
  // if(res.$2 == null) {
  //   LoggerHandler.log(LogType.info, '上报信息成功');
  //   print('上报信息成功');
  // }else{
  //   LoggerHandler.log(LogType.info, '上报信息失败');
  //   print('上报信息失败');
  // }
  // print('setCapabilities res == ${res.$1}');
  // }

  static void deleteReport() async {
    DirectiveHandler.processEvent(EventType.deleteReport, (data) {
      print(data);
    });
  }

  bool isRefreshingToken = false;

  //当离过期时间差比较小的时候 重新去刷新token
  void expendTokenIfNeed() async {
    LoggerHandler.log(LogType.info, 'Authorization expendTokenIfNeed');
    final current = DateTime.now().millisecondsSinceEpoch;
    //重新请求容错时间 60秒
    const offset = 60000;
    final dif = getTokenTime + expire * 1000 - current;

    //假如操作频繁 避免重复请求 只有上个请求返回后 再重新发起刷新
    if (dif < offset && isRefreshingToken == false) {
      isRefreshingToken = true;
      LoggerHandler.log(
          LogType.info, 'Authorization expendTokenIfNeed 开始刷新token');
      final res =
          await AuthorizationRequest.refreshDeviceToken(refreshToken, clientId);
      final error = res.$2;
      //暂无对刷新token 失败做处理
      if (error != null) {
        LoggerHandler.log(
            LogType.error, 'Authorization expendTokenIfNeed 刷新token错误',
            error: error);
        // 这里或许可以开个线程轮询去刷新token 后面优化
      } else {
        LoggerHandler.log(
            LogType.info, 'Authorization expendTokenIfNeed 刷新token成功');
        final data = res.$1;
        AuthorizationManager().setLocalData(data);
      }
      isRefreshingToken = false;
    }
  }

  bool isTokenExpired() {
    final current = DateTime.now().millisecondsSinceEpoch;
    if (getTokenTime + expire * 1000 > current) {
      LoggerHandler.log(
          LogType.info, 'Authorization isTokenExpired accessToken有效');
      return false;
    } else {
      LoggerHandler.log(
          LogType.info, 'Authorization isTokenExpired accessToken失效');
      return true;
    }
  }

  void setLocalData(Map<String, dynamic>? data) async {
    int getTokenTime = 0;
    int expiresIn = 0;
    String refreshToken = '';
    String accessToken = '';

    if (data != null) {
      getTokenTime = DateTime.now().millisecondsSinceEpoch;
      expiresIn = data['expires_in'];
      refreshToken = data['refresh_token'];
      accessToken = data['access_token'];
    } else {
      LoggerHandler.log(LogType.info, '清空preferences数据');
    }

    AuthorizationManager().accessToken = accessToken;
    AuthorizationManager().refreshToken = refreshToken;
    AuthorizationManager().expire = expiresIn;
    AuthorizationManager().getTokenTime = getTokenTime;

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('access_token', accessToken);
    preferences.setString('refresh_token', refreshToken);
    preferences.setInt('expires_in', expiresIn);
    preferences.setInt('getTokenTime', getTokenTime);
    LoggerHandler.log(
        LogType.info, 'Authorization 授权数据存储本地成功 data == ${data.toString()}');
  }

  void readLocalData(Function() callback) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    accessToken = preferences.getString('access_token') ?? '';
    refreshToken = preferences.getString('refresh_token') ?? '';
    expire = preferences.getInt('expires_in') ?? 0;
    getTokenTime = preferences.getInt('getTokenTime') ?? 0;

    int volume = preferences.getInt('AlexaVolume') ?? defaultVolume;
    AuthorizationManager().model.volume = volume;

    LoggerHandler.log(LogType.info,
        'Authorization 授权数据读取本地成功 token == $accessToken xxx refresh == $refreshToken xxx expire == $expire xxx getTime == $getTokenTime');
    callback();
  }

  //0 为没有授权  1为授权  2为授权过期
  int checkLogin() {
    if (accessToken.isEmpty) {
      LoggerHandler.log(LogType.info, 'Authorization checkLogin accessToken为空');
      return 0;
    }
    if (!isTokenExpired()) {
      expendTokenIfNeed();
      return 1;
    }
    LoggerHandler.log(
        LogType.info, 'Authorization checkLogin accessToken已经过期 重刷');
    return 2;
  }

  void logout() {
    LoggerHandler.log(LogType.info, 'Authorization 清空内存数据');
    AuthorizationManager().setLocalData(null);
    accessToken = '';
    refreshToken = '';
    expire = 0;
    getTokenTime = 0;
    isRegistrationPage = false;
    isLoadingDeviceTokensReq = false;
    isRefreshingToken = false;
    model = TempDataModel();
    LoggerHandler.log(LogType.info, 'Authorization 清空内存数据完成');
  }
}
