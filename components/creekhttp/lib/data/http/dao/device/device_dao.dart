import 'package:creekhttp/core/creek_log.dart';
import 'package:creekhttp/data/http/dao/base_dao.dart';
import 'package:creekhttp/data/http/request/device/alexa_language_request.dart';
import 'package:creekhttp/data/http/request/device/all_dial_list.dart';
import 'package:creekhttp/data/http/request/device/bind_data.dart';
import 'package:creekhttp/data/http/request/device/country_list.dart';
import 'package:creekhttp/data/http/request/device/device_upgrade.dart';
import 'package:creekhttp/data/http/request/device/dial_market.dart';
import 'package:creekhttp/data/http/request/device/model_color.dart';
import 'package:creekhttp/data/http/request/device/timezone_list.dart';
import 'package:creekhttp/data/http/request/device/unbind_data.dart';
import 'package:creekhttp/data/http/request/device/upload_DeviceUpdateReported.dart';
import 'package:creekhttp/data/http/request/device/weather_collect.dart';
import 'package:creekhttp/data/model/device/alexa_language_request_model.dart';
import 'package:creekhttp/data/model/device/all_dial.dart';
import 'package:creekhttp/data/model/device/all_dial_list.dart';
import 'package:creekhttp/data/model/device/city_list.dart';
import 'package:creekhttp/data/model/device/country_list.dart';
import 'package:creekhttp/data/model/device/device_upgrade_reported.dart';
import 'package:creekhttp/data/model/device/dial_list.dart';
import 'package:creekhttp/data/model/device/dial_market.dart';
import 'package:creekhttp/data/model/device/time_zone_request_model.dart';
import 'package:creekhttp/data/model/device/upLoad_bind_data.dart';
import 'package:creekhttp/data/model/device/upLoad_unbind_data.dart';
import 'package:creekhttp/data/model/device/upgrade.dart';
import 'package:creekhttp/data/model/device/weather_collect.dart';
import 'package:creekhttp/data/model/device/weather_data.dart';

import '../../../model/device/dial.dart';
import '../../../model/device/page_request_model.dart';
import '../../../model/device/timezone_list.dart';
import '../../../model/device/watch_color.dart';
import '../../request/device/city_list.dart';
import '../../request/device/dial_list.dart';

/// 设备管理
class DeviceDao {
  DeviceDao._();

  /// 获取时区分页
  static Future<TimezoneResultModel> getTimezoneList(
      TimezoneRequestModel params) async {
    final request = TimezoneListRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    final data = TimezoneResultModel.fromJson(result);
    return data;
  }

  /// 获取城市分页
  static Future<CityResultModel> getCityList(PageRequestModel params) async {
    final request = CityListRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    // final data = CityResultModel.fromJson(result);
    final data = CityResultModel.fromServiceJson(result);
    return data;
  }

  /// 获取AlexaLanguageList
  static Future<AlexaLanguageData> getAlexaLanguageList( AlexaLanguageRequestModel params)async{
    final request = AlexaLanguageRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    // List<AlexaLanguageModel> data=[];
    // result.forEach((e){
    //     data.add(AlexaLanguageModel.fromJson(e));
    // });
    final data= AlexaLanguageData.fromJson(result);
    return data;

  }
  /// 获取国家分页
  static Future<CountryResultModel> getCountryList(PageRequestModel params) async {
    final request = CountryListRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    final data = CountryResultModel.fromJson(result);
    return data;
  }

  static Future<List<WeatherCollectModel?>> getWeather(
      WeatherCollectRequestModel params) async {
    final request = WeatherCollectRequest();
    request.params = params;
    final result = await BaseDao.send(request) as List;
    List<WeatherCollectModel?> data = result
        .map((e) => e == null ? null : WeatherCollectModel.fromJson(e))
        .toList();
    return data;
  }

  /// 获取设备升级包
  static Future<DeviceUpgradeResultModel?> checkUpgrade(
      DeviceUpgradeRequestModel params) async {
    final request = DeviceUpgradeRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    CreekHttpLog.w('获取设备升级包==$result');
    if (result == null) {
      return null;
    }
    final data = DeviceUpgradeResultModel.fromJson(result);
    return data;
  }

  /// 获取表盘市场
  static Future<List<DialMarketResultModel>> getDialMarket(
      DialMarketRequestModel params) async {
    final request = DialMarketRequest();
    request.params = params;
    final result = await BaseDao.send(request) as List;
    final data = result.map((e) => DialMarketResultModel.fromJson(e)).toList();
    return data;
  }

  /// 获取表盘列表
  static Future<List<DialModel>> getDialList(
      DialListRequestModel params) async {
    final request = DialListRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    final list = result["list"] as List;
    final data = list.map((e) => DialModel.fromJson(e)).toList();
    return data;
  }

  /// 获取所有表盘
  static Future<List<AllDialModel>> getAllDialList(
      AllDialListRequestModel params, String? mac) async {
    final request = AllDialListRequest();
    request.params = params;
    final result = await BaseDao.send(request) as List;
    final data = result.map((e) => AllDialModel.fromJson(e, mac)).toList();
    return data;
  }

  static Future upLoadBindData(UpLoadBindRequestMode params) async {
    final request = UpLoadBindDataRequest();
    request.params = params;
    await BaseDao.send(request);
  }

  static Future upLoadUnBindData(UpLoadUnBindRequestMode params) async {
    final request = UpLoadUnBindDataRequest();
    request.params = params;
    await BaseDao.send(request);
  }

  /// 上报升级记录
  static Future uploadDeviceUpgradeReported(
      DeviceUpgradeReportedModel upgradeReportedModel) async {
    final request = DeviceUpgradeReportedRequest();
    request.params = upgradeReportedModel;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 获取机头图片模型
  static Future<WatchColorModel> getWatchColor(WatchColorModel params) async {
    final request = ModelColorRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    final data = WatchColorModel.fromJson(params, result);
    return data;
  }
}
