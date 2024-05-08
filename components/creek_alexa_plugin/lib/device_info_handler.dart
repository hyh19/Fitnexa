import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:device_info/device_info.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_native_timezone_updated_gradle/flutter_native_timezone.dart';

String lastDialogRequestId = '';

class DeviceInfoHandler {
  static String otherPlatformId = '';

  static String generateUUID() {
    var uuid = const Uuid();
    return uuid.v4();
  }

  static String md5RandomString() {
    final randomNum = Random().nextDouble();
    final randomBytes = utf8.encode(randomNum.toString());
    return md5.convert(randomBytes).toString();
  }

  static String generateSecureRandom32BitsString() {
    // 生成四个随机字节
    Uint8List bytes = Uint8List(4);
    Random secureRandom = Random.secure();
    int result = secureRandom.nextInt(1 << 32);

    // 将32位整数转换为字符串表示（使用hex编码）
    String resultString = result.toRadixString(16);

    // 补足位数，确保长度为8
    while (resultString.length < 8) {
      resultString = '0$resultString';
    }

    return resultString;
  }

  static Future<String> getDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.androidId;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      // print('设备 ID: ${iosInfo.identifierForVendor}');
      return iosInfo.identifierForVendor;
    } else {
      if (otherPlatformId.isEmpty) {
        otherPlatformId = generateUUID();
      }
      return otherPlatformId;
    }
  }

  static Future<String> getFirmwareDeviceId() async{
    final deviceModel = await interfaceProtocol.getDeviceInfo();
    if(deviceModel?.deviceId != null){
      return '${deviceModel?.deviceId ?? 0}';
    }else{
      return '0';
    }
  }

  static String generateDialogRequestId({bool isLastId = false}) {
    return 'DialogRequestId + ${DeviceInfoHandler.generateUUID()}';
  }

  static getTimeZoneName(Function(String) callback) async {
    String timeZone = await FlutterNativeTimezone.getLocalTimezone();
    print('CC  $timeZone');
    LoggerHandler.log(LogType.info, '获取当前时区  $timeZone');
    callback(timeZone);
  }

  static String getISOTimestamp({int delay = 0}) {
    DateTime now = DateTime.now();
    if (delay != 0) {
      now = now.add(Duration(seconds: delay));
    }
    String iso8601Timestamp = DateFormat('yyyy-MM-ddTHH:mm:ss').format(now);
    // 获取时区偏移
    Duration offset = now.timeZoneOffset;
    String offsetSign = offset.isNegative ? "-" : "+";
    String offsetHours = offset.inHours.abs().toString().padLeft(2, '0');
    String offsetMinutes =
        offset.inMinutes.abs().remainder(60).toString().padLeft(2, '0');

    String iso8601WithOffset =
        '$iso8601Timestamp$offsetSign$offsetHours$offsetMinutes';
    return iso8601WithOffset;
  }
}
