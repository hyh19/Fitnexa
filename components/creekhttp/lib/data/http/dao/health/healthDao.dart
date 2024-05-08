
import 'package:creekhttp/data/http/request/health/activity.dart';
import 'package:creekhttp/data/http/request/health/hrv.dart';
import 'package:flutter/foundation.dart';

import '../../request/health/batch.dart';
import '../../request/health/goal.dart';
import '../../request/health/heartRate.dart';
import '../../request/health/noise.dart';
import '../../request/health/pressure.dart';
import '../../request/health/sleep.dart';
import '../../request/health/spo.dart';
import '../../request/health/sport.dart';
import '../base_dao.dart';

class HealthDao{

  ///上传活动数据
  static Future<Uint8List> upActivity(Uint8List params) async {
    final request = ActivityRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取活动数据
  static Future<Uint8List> getActivity(Uint8List params) async {
    final request = ActivityGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传压力数据
  static Future<Uint8List> upPressure(Uint8List params) async {
    final request = PressureRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取压力数据
  static Future<Uint8List> getPressure(Uint8List params) async {
    final request = PressureGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传噪音数据
  static Future<Uint8List> upNoise(Uint8List params) async {
    final request = NoiseRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取噪音数据
  static Future<Uint8List> getNoise(Uint8List params) async {
    final request = NoiseGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传心率数据
  static Future<Uint8List> upHeartRate(Uint8List params) async {
    final request = HeartRateRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取心率数据
  static Future<Uint8List> getHeartRate(Uint8List params) async {
    final request = HeartRateGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传睡眠数据
  static Future<Uint8List> upSleep(Uint8List params) async {
    final request = SleepRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取睡眠数据
  static Future<Uint8List> getSleep(Uint8List params) async {
    final request = SleepGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传血氧数据
  static Future<Uint8List> upSpo(Uint8List params) async {
    final request = SpoRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取血氧数据
  static Future<Uint8List> getSpo(Uint8List params) async {
    final request = SpoGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传目标数据
  static Future<Uint8List> upGoal(Uint8List params) async {
    final request = GoalRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取目标数据
  static Future<Uint8List> getGoal(Uint8List params) async {
    final request = GoalGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传运动数据
  static Future<Uint8List> upSport(Uint8List params) async {
    final request = SportRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取运动数据
  static Future<Uint8List> getSport(Uint8List params) async {
    final request = SportGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///上传hrv数据
  static Future<Uint8List> upHrv(Uint8List params) async {
    final request = HrvRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///获取hrv数据
  static Future<Uint8List> getHrv(Uint8List params) async {
    final request = HrvGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///批量上传
  static Future<Uint8List> upBatch(Uint8List params) async {
    final request = BatchRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }

  ///批量获取
  static Future<Uint8List> getBatch(Uint8List params) async {
    final request = BatchGetRequest();
    request.params = params;
    final result = await BaseDao.sendBuf(request);
    return result;
  }


}