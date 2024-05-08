
///  description:  AES 数据存储（封装第三方）
import 'dart:convert';

import 'package:sp_util/sp_util.dart';

import 'creek_encrypt_utils.dart';


/// AES 加密存储
class CreekAESStorageUtils {
  /// 存 String
  static Future<bool>? saveString(String key, String value) {
    key = JhEncryptUtils.aesEncrypt(key);
    value = JhEncryptUtils.aesEncrypt(value);
    return SpUtil.putString(key, value);
  }

  /// 取 String
  static String? getString(String key) {
    key = JhEncryptUtils.aesEncrypt(key);
    var enValue = SpUtil.getString(key) ?? '';
    if (enValue.isNotEmpty) {
      return JhEncryptUtils.aesDecrypt(enValue);
    }
    return null;
  }

  /// 存 bool
  static Future<bool>? saveBool(String key, bool value) {
    var newValue = value == true ? 'TRUE' : 'FALSE';
    return saveString(key, newValue);
  }

  /// 取 bool
  static bool? getBool(String key) {
    var value = getString(key);
    return value == 'TRUE' ? true : false;
  }

  /// 存 int
  static Future<bool>? saveInt(String key, int value) {
    var newValue = value.toString();
    return saveString(key, newValue);
  }

  /// 取 int
  static int? getInt(String key) {
    String? value = getString(key);
    value = (value == '' || value == null) ? '0' : value;
    return int.parse(value);
  }

  /// 存 double
  static Future<bool>? saveDouble(String key, double value) {
    var newValue = value.toString();
    return saveString(key, newValue);
  }

  /// 取 double
  static double? getDouble(String key) {
    var value = getString(key);
    value = (value == '' || value == null) ? '0.0' : value;
    return double.parse(value);
  }

  /// 存 Model
  static Future<bool>? saveModel(String key, Object model) {
    String jsonString = json.encode(model);
    return saveString(key, jsonString);
  }

  /// 取 Model
  static Map<String, dynamic>? getModel(String key) {
    var jsonStr = getString(key);
    return (jsonStr == null || jsonStr.isEmpty) ? null : json.decode(jsonStr);
  }

  /// 移除单个
  static Future<bool>? remove(String key) {
    key = JhEncryptUtils.aesEncrypt(key);
    return SpUtil.remove(key);
  }

  /// 移除所有
  static Future<bool>? clear() {
    return SpUtil.clear();
  }
}

/// 数据存储（不使用AES加密）
class CreekStorageUtils {
  /// 存 String
  static Future<bool>? saveString(String key, String value) {
    return SpUtil.putString(key, value);
  }

  /// 取 String
  static String? getString(String key) {
    return SpUtil.getString(key);
  }

  /// 存 bool
  static Future<bool>? saveBool(String key, bool value) {
    return SpUtil.putBool(key, value);
  }

  /// 取 bool
  static bool? getBool(String key) {
    return SpUtil.getBool(key);
  }

  /// 存 int
  static Future<bool>? saveInt(String key, int value) {
    return SpUtil.putInt(key, value);
  }

  /// 取 int
  static int? getInt(String key) {
    return SpUtil.getInt(key);
  }

  /// 存 double
  static Future<bool>? saveDouble(String key, double value) {
    return SpUtil.putDouble(key, value);
  }

  /// 取 double
  static double? getDouble(String key) {
    return SpUtil.getDouble(key);
  }

  /// 存 Model
  static Future<bool>? saveModel(String key, Object model) {
    return SpUtil.putObject(key, model);
  }

  /// 取 Model
  static Map<String, dynamic>? getModel(String key) {
    var jsonStr = SpUtil.getObject(key);
    if (jsonStr == null || jsonStr.isEmpty) {
      return null;
    } else {
      return jsonStr as Map<String, dynamic>;
    }
  }

  /// get obj. City hisCity = SpUtil.getObj("loc_city", (v) => City.fromJson(v));
  static T? getObj<T>(String key, T f(Map v), {T? defValue}) {
    Map? map = SpUtil.getObject(key);
    return map == null ? defValue : f(map);
  }
  /// 存 Model
  static Future<bool>? saveListModel(String key, List<Object> list) {
    List<String>? _dataList = list.map((value) {
      return json.encode(value);
    }).toList();
    print('list--putObjectList-$key=$_dataList');
    return SpUtil.putStringList(key, _dataList);
  }
  ///List<City> _cityList = SpUtil.getObjList("loc_city_list", (v) => City.fromJson(v));
  static List<T>? getListModel<T>(String key, T f(Map v),
      {List<T>? defValue = const []}) {
    var jsonStr = SpUtil.getObject(key);
    if (jsonStr == null || jsonStr.isEmpty) {
      return null;
    }
    return  SpUtil.getObjList(key, f,defValue: defValue);
  }
  /// 移除单个
  static Future<bool>? remove(String key) {
    return SpUtil.remove(key);
  }

  /// 移除所有
  static Future<bool>? clear() {
    return SpUtil.clear();
  }
}
