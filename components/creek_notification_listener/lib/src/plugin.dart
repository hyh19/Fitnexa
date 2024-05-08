import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './event.dart';

typedef EventCallbackFunc = void Function(int type, NotificationEvent evt);

const CHANNELID = "notification_listener";
const SEND_PORT_NAME = "notifications_send_port";
const String _backgroundName =
    'notification_listener/android_alarm_manager_background';

@pragma('vm:entry-point')
class NotificationListen {


  static  const MethodChannel _methodChannel = const MethodChannel('$CHANNELID/method');

  static const MethodChannel _bgMethodChannel = const MethodChannel('$CHANNELID/bg_method');
  static const MethodChannel _channelAlarm = MethodChannel(_backgroundName);

  static MethodChannel get bgMethodChannel => _bgMethodChannel;

  static ReceivePort? _receivePort;
  static CallbackHandle? callbackDispatch;
  /// Get a defualt receivePort
  static ReceivePort? get receivePort {
    if (_receivePort == null) {
      _receivePort = ReceivePort();
      // remove the old one at first.
      IsolateNameServer.removePortNameMapping(SEND_PORT_NAME);
      IsolateNameServer.registerPortWithName(_receivePort!.sendPort, SEND_PORT_NAME);
    }
    return _receivePort;
  }

  /// Check have permission or not
  static Future<bool?> get hasPermission async {
    return await _methodChannel.invokeMethod('plugin.hasPermission');
  }

  /// Open the settings activity
  static Future<void> openPermissionSettings() async {
    return await _methodChannel.invokeMethod('plugin.openPermissionSettings');
  }

  /// Initialize the plugin and request relevant permissions from the user.
  @pragma('vm:entry-point')
  static Future<void> initialize({
    EventCallbackFunc callbackHandle = _defaultCallbackHandle,
  }) async {
    final CallbackHandle _callbackDispatch = PluginUtilities.getCallbackHandle(callbackDispatcher)!;
    callbackDispatch =_callbackDispatch;
    await _methodChannel.invokeMethod('plugin.initialize', _callbackDispatch.toRawHandle());

    // call this call back in the current engine
    // this is important to use ui flutter engine access `service.channel`
    callbackDispatcher(inited: false);

    // register event handler
    // register the default event handler
    await registerEventHandle(callbackHandle);
  }


  ///
  /// 获取手机上安装的所有应用商店，
  /// 仅对Android有效，iOS无效
  ///
  static Future<List<String>> get getInstallMarkets async {
    if (Platform.isIOS) throw UnsupportedError('ios platform is not support ');
    var result = await _methodChannel.invokeMethod('plugin.getInstallMarkets');
    List<String> list = [];
    (result as List).forEach((element) {
      list.add(element);
    });
    return list;
  }

  ///
  /// [packageName] 仅用于Android，指包名，
  /// [appleId]  仅用于iOS，指appId，是应用程序在app store中生成到。
  ///
  /// Android:
  /// 如果未指定 [packageName]，且手机上安装多个应用市场
  /// 则弹出对话框，由用户选择进入哪个市场
  /// 如果指定 [packageName]，直接跳转到指定应用市场
  ///
  /// iOS:
  /// 跳转到app store，
  ///
  static toMarket({String? packageName, String? appleId}) async {
    var arguments = {'packageName': packageName ?? '', 'appleId': appleId};
    await _methodChannel.invokeMethod('plugin.toMarket', arguments);
  }

  static acquireLock() async {
    await _methodChannel.invokeMethod('plugin.acquireLock');
  }

  static releaseLock() async {
    await _methodChannel.invokeMethod('plugin.releaseLock');
  }
  ///
  /// 是否存在当前应用市场，
  /// 仅对Android有效，iOS无效
  ///
  static Future<bool> exist(String packageName) async {
    if (Platform.isIOS) throw UnsupportedError('ios platform is not support ');

    assert(packageName != null || packageName.isNotEmpty);

    var arguments = {'packageName': packageName};
    return await _methodChannel.invokeMethod('plugin.exist', arguments);
  }


  void callbackTopMethods() {
    print('这是一个顶级函数');
  }

  /// Register a new event handler

  static Future<void> registerEventHandle(EventCallbackFunc callback) async {
    final CallbackHandle _callback = PluginUtilities.getCallbackHandle(callback)!;
    await _methodChannel.invokeMethod('plugin.registerEventHandle', _callback.toRawHandle());
  }

  /// check the service running or not
  static Future<bool?> get isRunning async {
    return await _methodChannel.invokeMethod('plugin.isServiceRunning');
  }

  static Future<bool?> get isJobServiceRunning async {
    return await _methodChannel.invokeMethod('plugin.isJobServiceRunning');
  }
  /// start the service
  static Future<bool?> internalStartJobHandlerService() async {
    var res = await _methodChannel.invokeMethod('plugin.internalStartJobHandlerService',);

    return res;
  }
  static Future<bool?> startServiceTest({
    bool foreground = true,
    String subTitle = "",
    bool showWhen = false,
    String title = "Notification Listener",
    String description = "Service is running",})async{
    var data = {};
    data["foreground"] = foreground;
    data["subTitle"] = subTitle;
    data["showWhen"] = showWhen;
    data["title"] = title;
    data["description"] = description;
    var res = await _methodChannel.invokeMethod('plugin.startServiceTest', data);
    return res;
}
  static Future<bool?> startService({
    bool foreground = true,
    String subTitle = "",
    bool showWhen = false,
    String title = "Notification Listener",
    String description = "",
  }) async {
    var data = {};
    data["foreground"] = foreground;
    data["subTitle"] = subTitle;
    data["showWhen"] = showWhen;
    data["title"] = title;
    data["description"] = description;

    var res = await _methodChannel.invokeMethod('plugin.startService', data);

    return res;
  }

  /// stop the service
  static Future<bool?> stopService() async {
    return await _methodChannel.invokeMethod('plugin.stopService');
  }

  static Future<bool> hideAppWindow(bool isHide) async {
    return await _methodChannel.invokeMethod('plugin.hideAppWindow',isHide);
  }
  static Future<bool> isIgnoringBatteryOptimizations() async {

    return await _methodChannel.invokeMethod('plugin.isIgnoringBatteryOptimizations');
  }
  static Future requestIgnoreBatteryOptimizations() async {
    return await _methodChannel.invokeMethod('plugin.requestIgnoreBatteryOptimizations');
  }

  /// promote the service to foreground
  static Future<void> promoteToForeground(
      String title, {
        String subTitle = "",
        bool showWhen = false,
        String description = "",
      }) async {
    var data = {};
    data["foreground"] = true;
    data["subTitle"] = subTitle;
    data["showWhen"] = showWhen;
    data["title"] = title;
    data["description"] = description;

    return await _bgMethodChannel.invokeMethod('service.promoteToForeground', data);
  }

  /// demote the service to background
  static Future<void> demoteToBackground() async => await _bgMethodChannel.invokeMethod('service.demoteToBackground');

  /// tap the notification
  static Future<bool> tapNotification(String uid) async {
    return await _bgMethodChannel.invokeMethod<bool>('service.tap', [uid]) ?? false;
  }

  /// tap the notification action
  /// use the index to locate the action
  static Future<bool> tapNotificationAction(String uid, int actionId) async {
    return await _bgMethodChannel.invokeMethod<bool>('service.tap_action', [uid, actionId]) ?? false;
  }

  static Future<bool> isRemoteControllerToNull() async {
    return await _bgMethodChannel.invokeMethod<bool>('service.isRemoteControllerToNull') ?? true;
  }

  static Future<void> registerRemoteController() async {
    try{
      await _bgMethodChannel.invokeMethod<bool>('service.registerRemoteController');
    }catch(e){
      await _methodChannel.invokeMethod<bool>('plugin.remoteControllerNull');
    }
  }

  /// set content for action's input
  /// this is useful while auto reply by notification
  static Future<bool> postActionInputs(String uid, int actionId, Map<String, dynamic> map) async {
    return await _bgMethodChannel.invokeMethod<bool>("service.send_input", [uid, actionId, map]) ?? false;
  }

  /// get the full notification from android
  /// with the unqiue id
  static Future<dynamic> getFullNotification(String uid) async {
    return await _bgMethodChannel.invokeMethod<dynamic>("service.get_full_notification", [uid]);
  }

  static void _defaultCallbackHandle(int type, NotificationEvent evt) {
    final SendPort? _send = IsolateNameServer.lookupPortByName(SEND_PORT_NAME);
    print("[default callback handler] [send isolate nameserver]");
    if (_send == null) print("IsolateNameServer: can not find send $SEND_PORT_NAME");
    _send?.send(evt);
  }

  static moveTaskBack() async {
    await _methodChannel.invokeMethod('plugin.moveTaskBack');
  }
  static Future<bool?> isRemoteControllerNull() async {

  }
  static Future<bool?> selfStartingSetting() async {
    await _methodChannel.invokeMethod<bool?>('plugin.selfStartingSetting');
  }


  static Future<bool?> get is24HourFormat async {
    return await bgMethodChannel.invokeMethod('service.is24HourFormat');
  }
  static  setHighVolume() async {
    await bgMethodChannel.invokeMethod('service.setHighVolume');
  }
  static  setLowVolume() async {
    await bgMethodChannel.invokeMethod('service.setLowVolume');
  }

  static Future<bool?> get isGooglePlayServicesAvailable async {
    try {
      return await bgMethodChannel.invokeMethod('service.isGooglePlayServicesAvailable');
    } catch (e) {
      print('isGooglePlayServicesAvailable 异常：说明不可用$e');
      return false;
    }
  }

  static previousSong() async {
    try{
      await _bgMethodChannel.invokeMethod('service.previousSong');
    }catch(e){
      await _methodChannel.invokeMethod('plugin.previousSong');
    }


  }
  static Future<void> sendMusicInfo() async {
    await _bgMethodChannel.invokeMethod('service.sendMusicInfo');
  }
  static Future<String> getMusicInfo() async {
    String future= await _bgMethodChannel.invokeMethod('service.getMusicInfo');
    return future;
  }
  static nextSong() async {
    try{
      await _bgMethodChannel.invokeMethod('service.nextMusic');
    }catch(e){
      print("nextMusic:$e");
      await _methodChannel.invokeMethod('plugin.nextMusic');
    }


  }
  static pauseMusic() async {
    try{
      await _bgMethodChannel.invokeMethod('service.pauseMusic');
    }catch(e){
      ///updateFlutterEngine
      await _methodChannel.invokeMethod('plugin.pauseMusic');
    }

  }

  static startPlayMusic() async {
    try{
      await _bgMethodChannel.invokeMethod('service.startPlayMusic');
    }catch(e){
      await _methodChannel.invokeMethod('plugin.startPlayMusic');
    }

  }


  ///*******************////////////////

  static Now _now = () => DateTime.now();



  static Future<bool> startAlarmService()async{
    // final handle = _getCallbackHandle(_alarmManagerCallbackDispatcher);
    // if (handle == null) {
    //   return false;
    // }
    final r = await _methodChannel.invokeMethod<bool>('AlarmService.start');
    return r ?? false;
  }
  static GetCallbackHandle _getCallbackHandle =
      (Function callback) => PluginUtilities.getCallbackHandle(callback);


  static Future<bool> oneShot(
      Duration delay,
      int id,
      Function callback, {
        bool alarmClock = false,
        bool allowWhileIdle = false,
        bool exact = false,
        bool wakeup = false,
        bool rescheduleOnReboot = false,
        Map<String, dynamic> params = const {},
      }) =>
      oneShotAt(
        _now().add(delay),
        id,
        callback,
        alarmClock: alarmClock,
        allowWhileIdle: allowWhileIdle,
        exact: exact,
        wakeup: wakeup,
        rescheduleOnReboot: rescheduleOnReboot,
        params: params,
      );
  static Future<bool> oneShotAt(
      DateTime time,
      int id,
      Function callback, {
        bool alarmClock = false,
        bool allowWhileIdle = false,
        bool exact = false,
        bool wakeup = false,
        bool rescheduleOnReboot = false,
        Map<String, dynamic> params = const {},
      }) async {
    // ignore: inference_failure_on_function_return_type
    assert(callback is Function() ||
        callback is Function(int) ||
        callback is Function(int, Map<String, dynamic>));
    assert(id.bitLength < 32);
    checkIfSerializable(params);
    final startMillis = time.millisecondsSinceEpoch;
    final handle = _getCallbackHandle(callback);
    if (handle == null) {
      return false;
    }
    final r = await _methodChannel.invokeMethod<bool>('Alarm.oneShotAt', <dynamic>[
      id,
      alarmClock,
      allowWhileIdle,
      exact,
      wakeup,
      startMillis,
      rescheduleOnReboot,
      handle!.toRawHandle(),
      params,
    ]);
    return (r == null) ? false : r;
  }
  static Future<dynamic> openBlueTooth() async{     //打开蓝牙
    dynamic future=await _methodChannel.invokeMethod('openBlueTooth');
    return future;
  }

  static Future<bool> cancel(int id) async {
    final r = await _methodChannel.invokeMethod<bool>('Alarm.cancel', <dynamic>[id]);
    return (r == null) ? false : r;
  }

  static Future<bool> periodic(
      Duration duration,
      int id,
      Function callback, {
        DateTime? startAt,
        bool allowWhileIdle = false,
        bool exact = false,
        bool wakeup = false,
        bool rescheduleOnReboot = false,
        Map<String, dynamic> params = const {},
      }) async {
    // ignore: inference_failure_on_function_return_type
    assert(callback is Function() ||
        callback is Function(int) ||
        callback is Function(int, Map<String, dynamic>));
    assert(id.bitLength < 32);
    checkIfSerializable(params);
    final now = _now().millisecondsSinceEpoch;
    final period = duration.inMilliseconds;
    final first =
    startAt != null ? startAt.millisecondsSinceEpoch : now + period;
    final handle = _getCallbackHandle(callback);
    if (handle == null) {
      print("periodic handle == null");
      return false;
    }
    final r = await _methodChannel.invokeMethod<bool>('Alarm.periodic', <dynamic>[
      id,
      allowWhileIdle,
      exact,
      wakeup,
      first,
      period,
      rescheduleOnReboot,
      handle.toRawHandle(),
      params,
    ]);
    return (r == null) ? false : r;
  }
  static void checkIfSerializable(Map<String, dynamic> params) {
    try {
      jsonEncode(params);
    } on JsonUnsupportedObjectError catch (e) {
      throw UnsupportedError(
          "Cannot convert '${e.unsupportedObject.runtimeType}' class to json."
              " Please put objects that can be converted to json into the "
              "'params' parameter");
    }
  }
}








/// callbackDispatcher use to install background channe
@pragma('vm:entry-point')
void callbackDispatcher({inited: true}) {
  WidgetsFlutterBinding.ensureInitialized();

  NotificationListen._bgMethodChannel.setMethodCallHandler((MethodCall call) async {
    print('Fatal: setMethodCallHandlerk$call----------${call.method}');
    try {
      switch (call.method) {
        case "sink_event":
          {
            final List<dynamic> args = call.arguments;
            final evt = NotificationEvent.fromMap(args[1]);

            final Function? callback = PluginUtilities.getCallbackFromHandle(CallbackHandle.fromRawHandle(args[0]));

            if (callback == null) {
              print("callback is not register: ${args[0]}");
              return;
            }

            callback(0, evt);
          }
          break;
        case "invokeAlarmManagerCallback":
          final List<dynamic> args = call.arguments;
          final Function? callback = PluginUtilities.getCallbackFromHandle(CallbackHandle.fromRawHandle(args[0]));
          if (callback == null) {
            print("callback is not register: ${args[0]}");
            return;
          }
          callback();
          break;
        case "reBootEvent":
          final List<dynamic> args = call.arguments;
          final Function? callback = PluginUtilities.getCallbackFromHandle(CallbackHandle.fromRawHandle(args[0]));
          if (callback == null) {
            print("callback is not register: ${args[0]}");
            return;
          }
          callback(2, NotificationEvent());
          break;
        case "music_event":
          final List<dynamic> args = call.arguments;
          final evt = MusicEvent.fromJson(args[1]);

          final Function? callback = PluginUtilities.getCallbackFromHandle(CallbackHandle.fromRawHandle(args[0]));
          if (callback == null) {
            print("callback is not register: ${args[0]}");
            return;
          }
          print("${call.arguments}---callback music_event: ${args[1]}");
          callback(1, evt);
          break;
        default:{
            print("unknown bg_method: ${call.method}");
          }
      }
    } catch (e) {
      print(e);
    }
  });

  // if start the ui first, this will cause method not found error
  if (inited) NotificationListen._bgMethodChannel.invokeMethod('service.initialized');
}

@pragma('vm:entry-point')
void _alarmManagerCallbackDispatcher() {

  WidgetsFlutterBinding.ensureInitialized();
  NotificationListen._channelAlarm.setMethodCallHandler((MethodCall call) async {
    final dynamic args = call.arguments;

    print('Fatal: _channelAlarm setMethodCallHandlerk$call');

    final handle = CallbackHandle.fromRawHandle(args[0]);
    print('Fatal: setMethodCallHandlerk$handle');
    final callback = PluginUtilities.getCallbackFromHandle(handle);
    print('Fatal: setMethodCallHandlerk');
    if (callback == null) {
      print('Fatal: could not find callback');
      //exit(-1);
      return;
    }

    // ignore: inference_failure_on_function_return_type
    if (callback is Function()) {
      print('closure is Function())');
      callback();
      // ignore: inference_failure_on_function_return_type
    } else if (callback is Function(int)) {
      print('closure is Function())2');
      final int id = args[1];
      callback(id);
    } else if (callback is Function(int, Map<String, dynamic>)) {
      print('closure is Function())3');
      final int id = args[1];
      final Map<String, dynamic> params = args[2];
      callback(id, params);
    }
  });

}



// A lambda that returns the current instant in the form of a [DateTime].
typedef Now = DateTime Function();
// A lambda that gets the handle for the given [callback].
typedef GetCallbackHandle = CallbackHandle? Function(Function callback);

