

import 'package:isar/isar.dart';

part 'weather_data.g.dart';
///功能表    todo:同时添加part function_table 每次修改属性名都要重新 dart run build_runner build  生成dart 文件
@collection
class WeatherRecodeModel {

  Id? id;

  ///下载时间
  DateTime? downloadTime;

  /// mac地址
  @Index(unique: true, replace: true)
  String? mac;

  List<WeatherCollectModel?>? weatherCollectModelList;

  @override
  String toString() {
    return 'WeatherRecodeModel{id: $id, downloadTime: $downloadTime, mac: $mac, weatherCollectModelList: $weatherCollectModelList}';
  }
}
@embedded
class WeatherCollectModel {
  WeatherCollectModel({
    this.cityName,
    this.displayName,
    this.currentData,
    this.dailyData,
    this.hourlyData,});

  WeatherCollectModel.fromJson(dynamic json) {
    cityName = json['cityName'];
    displayName = json['displayName'];
    currentData = json['currentData'] != null ? CurrentData.fromJson(json['currentData']) : null;
    if (json['dailyData'] != null) {
      dailyData = [];
      json['dailyData'].forEach((v) {
        dailyData?.add(DailyData.fromJson(v));
      });
    }
    if (json['hourlyData'] != null) {
      hourlyData = [];
      json['hourlyData'].forEach((v) {
        hourlyData?.add(HourlyData.fromJson(v));
      });
    }
  }
  String? cityName;
  String? displayName;
  CurrentData? currentData;
  List<DailyData>? dailyData;
  List<HourlyData>? hourlyData;


  WeatherCollectModel copyWith({
    String? cityName,
    String? displayName,
    CurrentData? currentData,
    List<DailyData>? dailyData,
    List<HourlyData>? hourlyData,
  }) => WeatherCollectModel(
    cityName: cityName ?? this.cityName,
    displayName: displayName ?? this.displayName,
    currentData: currentData ?? this.currentData,
    dailyData: dailyData ?? this.dailyData,
    hourlyData: hourlyData ?? this.hourlyData,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cityName'] = cityName;
    map['displayName'] = displayName;
    if (currentData != null) {
      map['currentData'] = currentData?.toJson();
    }
    if (dailyData != null) {
      map['dailyData'] = dailyData?.map((v) => v.toJson()).toList();
    }
    if (hourlyData != null) {
      map['hourlyData'] = hourlyData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  String toString() {
    return 'WeatherCollectResultModel{cityName: $cityName, displayName: $displayName, hourlyData: $hourlyData, currentData: $currentData, dailyData: $dailyData}';
  }
}

/// iconCode : ""
/// precipitationProbability : 0
/// temperature : 0
/// time : 0
@embedded
class HourlyData {
  HourlyData({
    this.iconCode,
    this.precipitationProbability,
    this.temperature,
    this.uvIndex,
    this.time,});

  HourlyData.fromJson(dynamic json) {
    iconCode = json['iconCode'];
    uvIndex = json['uvIndex'];
    precipitationProbability = json['precipitationProbability'];
    temperature = json['temperature'];
    time = json['time'];
  }
  int? uvIndex;
  int? iconCode;
  int? precipitationProbability;
  int? temperature;
  int? time;
  HourlyData copyWith({  int? iconCode,
    int? precipitationProbability,
    int? temperature,
    int? time,
    int? uvIndex,
  }) => HourlyData(  iconCode: iconCode ?? this.iconCode,
    precipitationProbability: precipitationProbability ?? this.precipitationProbability,
    temperature: temperature ?? this.temperature,
    time: time ?? this.time,
    uvIndex: uvIndex ?? this.uvIndex,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iconCode'] = iconCode;
    map['precipitationProbability'] = precipitationProbability;
    map['temperature'] = temperature;
    map['time'] = time;
    map['uvIndex'] = uvIndex;
    return map;
  }

  @override
  String toString() {
    return 'HourlyData{uvIndex: $uvIndex, iconCode: $iconCode, precipitationProbability: $precipitationProbability, temperature: $temperature, time: $time}';
  }
}

/// iconCode : ""
/// sunriseTime : 0
/// sunsetTime : 0
/// temperatureMax : 0
/// temperatureMin : 0
/// time : 0
@embedded
class DailyData {
  DailyData({
    this.iconCode,
    this.sunriseTime,
    this.sunsetTime,
    this.temperatureMax,
    this.temperatureMin,
    this.moonsetTime,
    this.moonriseTime,
    this.moonPhase,
    this.moonPhaseCode,
    this.time,});

  DailyData.fromJson(dynamic json) {
    iconCode = json['iconCode'];
    sunriseTime = json['sunriseTime'];
    sunsetTime = json['sunsetTime'];
    temperatureMax = json['temperatureMax'];
    temperatureMin = json['temperatureMin'];
    temperatureMin = json['temperatureMin'];
    moonPhase = json['moonPhase'];
    moonriseTime = json['moonriseTime'];
    moonsetTime = json['moonsetTime'];
    moonPhaseCode = json['moonPhaseCode'];
    time = json['time'];
  }
  int? iconCode;
  int? sunriseTime;
  int? sunsetTime;
  int? temperatureMax;
  int? temperatureMin;
  int? time;
  int? moonsetTime;
  int? moonriseTime;
  String? moonPhase;
  String? moonPhaseCode;
  DailyData copyWith({  int? iconCode,
    int? sunriseTime,
    int? sunsetTime,
    int? temperatureMax,
    int? temperatureMin,
    int? time,
    int? moonsetTime,
    int? moonriseTime,
    String? moonPhase,
    String? moonPhaseCode
  }) => DailyData(  iconCode: iconCode ?? this.iconCode,
    sunriseTime: sunriseTime ?? this.sunriseTime,
    sunsetTime: sunsetTime ?? this.sunsetTime,
    temperatureMax: temperatureMax ?? this.temperatureMax,
    temperatureMin: temperatureMin ?? this.temperatureMin,
    time: time ?? this.time,
      moonsetTime: moonsetTime??this.moonsetTime,
      moonriseTime: moonriseTime??this.moonriseTime,
      moonPhase: moonPhase??this.moonPhase,
      moonPhaseCode: moonPhaseCode??this.moonPhaseCode
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iconCode'] = iconCode;
    map['sunriseTime'] = sunriseTime;
    map['sunsetTime'] = sunsetTime;
    map['temperatureMax'] = temperatureMax;
    map['temperatureMin'] = temperatureMin;
    map['time'] = time;
    map['moonsetTime'] = moonsetTime;
    map['moonriseTime'] = moonriseTime;
    map['moonPhase'] = moonPhase;
    map['moonPhaseCode'] = moonPhaseCode;
    return map;
  }

  @override
  String toString() {
    return 'DailyData{iconCode: $iconCode, sunriseTime: $sunriseTime, sunsetTime: $sunsetTime, temperatureMax: $temperatureMax, temperatureMin: $temperatureMin, time: $time, moonsetTime: $moonsetTime, moonriseTime: $moonriseTime, moonPhase: $moonPhase, moonPhaseCode: $moonPhaseCode}';
  }
}

/// airQuality : 0
/// humidity : 0
/// iconCode : ""
/// place : ""
/// temperature : 0
/// ultraviolet : 0
/// windDirection : 0
/// windScale : 0
/// windSpeed : 0
@embedded
class CurrentData {
  CurrentData({
    this.airQuality,
    this.humidity,
    this.iconCode,
    this.place,
    this.temperature,
    this.ultraviolet,
    this.windDirection,
    this.temperatureMax,
    this.temperatureMin,
    this.sunriseTime,
    this.sunsetTime,
    this.windScale,
    this.pressureMeanSeaLevel,
    this.windSpeed,});

  CurrentData.fromJson(dynamic json) {
    airQuality = json['airQuality'];
    humidity = json['humidity'];
    iconCode = json['iconCode'];
    place = json['place'];
    temperature = json['temperature'];
    ultraviolet = json['ultraviolet'];
    windDirection = json['windDirection'];
    windScale = json['windScale'];
    windSpeed = json['windSpeed'];
    temperatureMax = json['temperatureMax'];
    temperatureMin = json['temperatureMin'];
    pressureMeanSeaLevel = json['pressureMeanSeaLevel'];
  }
  double? airQuality;
  int? humidity;
  int? iconCode;
  String? place;
  int? temperature;
  int? ultraviolet;
  int? windDirection;
  int? windScale;
  int? windSpeed;
  int? temperatureMax;
  int? temperatureMin;
  int? sunriseTime;
  int? sunsetTime;
  double? pressureMeanSeaLevel;
  DateTime? currentDateTime;
  CurrentData copyWith({  double? airQuality,
    int? humidity,
    int? iconCode,
    String? place,
    int? temperature,
    int? ultraviolet,
    int? windDirection,
    int? windScale,
    int? windSpeed,
    int? temperatureMax,
    int? temperatureMin,
    int? sunriseTime,
    int? sunsetTime,
    double? pressureMeanSeaLevel,
  }) => CurrentData(  airQuality: airQuality ?? this.airQuality,
    humidity: humidity ?? this.humidity,
    iconCode: iconCode ?? this.iconCode,
    place: place ?? this.place,
    temperature: temperature ?? this.temperature,
    ultraviolet: ultraviolet ?? this.ultraviolet,
    windDirection: windDirection ?? this.windDirection,
    windScale: windScale ?? this.windScale,
    windSpeed: windSpeed ?? this.windSpeed,
    temperatureMin: temperatureMin ?? this.temperatureMin,
    temperatureMax: temperatureMax ?? this.temperatureMax,
    sunriseTime: sunriseTime ?? this.sunriseTime,
    sunsetTime: sunsetTime ?? this.sunsetTime,
    pressureMeanSeaLevel: pressureMeanSeaLevel ?? this.pressureMeanSeaLevel,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['airQuality'] = airQuality;
    map['humidity'] = humidity;
    map['iconCode'] = iconCode;
    map['place'] = place;
    map['temperature'] = temperature;
    map['ultraviolet'] = ultraviolet;
    map['windDirection'] = windDirection;
    map['windScale'] = windScale;
    map['windSpeed'] = windSpeed;
    map['temperatureMin'] = temperatureMin;
    map['temperatureMax'] = temperatureMax;
    map['pressureMeanSeaLevel'] = pressureMeanSeaLevel;
    return map;
  }

  @override
  String toString() {
    return 'CurrentData{airQuality: $airQuality, humidity: $humidity, iconCode: $iconCode, place: $place, temperature: $temperature, ultraviolet: $ultraviolet, windDirection: $windDirection, windScale: $windScale, windSpeed: $windSpeed, temperatureMax: $temperatureMax, temperatureMin: $temperatureMin, sunriseTime: $sunriseTime, sunsetTime: $sunsetTime, pressureMeanSeaLevel: $pressureMeanSeaLevel}';
  }
}