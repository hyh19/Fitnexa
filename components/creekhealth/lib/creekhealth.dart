import 'package:creekhealth/util.dart';
import 'package:creektool/creek_tool.dart';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
import 'package:health/health.dart';

class CreekHealth {
  /// 1.获取健康权限 iOS 只可以获取不可以取消
  static Future authorize(Function(bool) callback) async {
    HealthFactory health = HealthFactory(useHealthConnectIfAvailable: true);
    const types = dataTypes;
    final permissions = types.map((e) => HealthDataAccess.READ_WRITE).toList();
    await Permission.activityRecognition.request();
    await Permission.location.request();

    // Check if we have permission
    bool? hasPermissions =
        await health.hasPermissions(types, permissions: permissions);
    hasPermissions = false;

    bool authorized = false;
    if (!hasPermissions) {
      // requesting access to the data types before reading them
      try {
        authorized =
            await health.requestAuthorization(types, permissions: permissions);
      } catch (error) {
        CreekLog.info("Exception in authorize: $error");
      }
    }

    /// 回调权限结果
    callback(authorized);
  }

  /// 获取总步数
  static Future<int> getTotalSteps(
      {required DateTime startTime, required DateTime endTime}) async {
    HealthFactory health = HealthFactory(useHealthConnectIfAvailable: true);
    final steps = await health.getTotalStepsInInterval(startTime, endTime);
    return steps ?? 0;
  }

  /// 写入步数
  static Future<bool> writeStepsData(
      {required DateTime startTime,
      required DateTime endTime,
      required double value}) async {
    HealthFactory health = HealthFactory(useHealthConnectIfAvailable: true);
    final success = await health.writeHealthData(
        value, HealthDataType.STEPS, startTime, endTime);
    return success;
  }

  static Future<bool> deleteStepsData(
      {required DateTime startTime, required DateTime endTime}) async {
    HealthFactory health = HealthFactory(useHealthConnectIfAvailable: true);
    final success =
        await health.delete(HealthDataType.STEPS, startTime, endTime);
    return success;
  }

  /// 写入心率
  static Future<bool> writeHeartRateData(
      {required DateTime startTime,
      required DateTime endTime,
      required double value}) async {
    HealthFactory health = HealthFactory(useHealthConnectIfAvailable: true);
    final success = await health.writeHealthData(
        value, HealthDataType.HEART_RATE, startTime, endTime);
    return success;
  }
}
