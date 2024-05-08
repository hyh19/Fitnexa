//
//  Generated code. Do not modify.
//  source: weather.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'weather.pbenum.dart';

export 'weather.pbenum.dart';

class protocol_weather_future_item extends $pb.GeneratedMessage {
  factory protocol_weather_future_item({
    weather_type? weatherType,
    $core.int? maxTemp,
    $core.int? minTemp,
  }) {
    final $result = create();
    if (weatherType != null) {
      $result.weatherType = weatherType;
    }
    if (maxTemp != null) {
      $result.maxTemp = maxTemp;
    }
    if (minTemp != null) {
      $result.minTemp = minTemp;
    }
    return $result;
  }
  protocol_weather_future_item._() : super();
  factory protocol_weather_future_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_weather_future_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_weather_future_item', createEmptyInstance: create)
    ..e<weather_type>(1, _omitFieldNames ? '' : 'weatherType', $pb.PbFieldType.OE, defaultOrMaker: weather_type.TORNADO, valueOf: weather_type.valueOf, enumValues: weather_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'maxTemp', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'minTemp', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_weather_future_item clone() => protocol_weather_future_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_weather_future_item copyWith(void Function(protocol_weather_future_item) updates) => super.copyWith((message) => updates(message as protocol_weather_future_item)) as protocol_weather_future_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_weather_future_item create() => protocol_weather_future_item._();
  protocol_weather_future_item createEmptyInstance() => create();
  static $pb.PbList<protocol_weather_future_item> createRepeated() => $pb.PbList<protocol_weather_future_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_weather_future_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_weather_future_item>(create);
  static protocol_weather_future_item? _defaultInstance;

  @$pb.TagNumber(1)
  weather_type get weatherType => $_getN(0);
  @$pb.TagNumber(1)
  set weatherType(weather_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWeatherType() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeatherType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxTemp => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxTemp($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxTemp() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxTemp() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minTemp => $_getIZ(2);
  @$pb.TagNumber(3)
  set minTemp($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinTemp() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinTemp() => clearField(3);
}

class protocol_weather_hour_weather_item extends $pb.GeneratedMessage {
  factory protocol_weather_hour_weather_item({
    weather_type? weatherType,
    $core.int? temperature,
  }) {
    final $result = create();
    if (weatherType != null) {
      $result.weatherType = weatherType;
    }
    if (temperature != null) {
      $result.temperature = temperature;
    }
    return $result;
  }
  protocol_weather_hour_weather_item._() : super();
  factory protocol_weather_hour_weather_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_weather_hour_weather_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_weather_hour_weather_item', createEmptyInstance: create)
    ..e<weather_type>(1, _omitFieldNames ? '' : 'weatherType', $pb.PbFieldType.OE, defaultOrMaker: weather_type.TORNADO, valueOf: weather_type.valueOf, enumValues: weather_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'temperature', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_weather_hour_weather_item clone() => protocol_weather_hour_weather_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_weather_hour_weather_item copyWith(void Function(protocol_weather_hour_weather_item) updates) => super.copyWith((message) => updates(message as protocol_weather_hour_weather_item)) as protocol_weather_hour_weather_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_weather_hour_weather_item create() => protocol_weather_hour_weather_item._();
  protocol_weather_hour_weather_item createEmptyInstance() => create();
  static $pb.PbList<protocol_weather_hour_weather_item> createRepeated() => $pb.PbList<protocol_weather_hour_weather_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_weather_hour_weather_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_weather_hour_weather_item>(create);
  static protocol_weather_hour_weather_item? _defaultInstance;

  @$pb.TagNumber(1)
  weather_type get weatherType => $_getN(0);
  @$pb.TagNumber(1)
  set weatherType(weather_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWeatherType() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeatherType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get temperature => $_getIZ(1);
  @$pb.TagNumber(2)
  set temperature($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => clearField(2);
}

/// 日出日落时间item
class protocol_weather_sunrise_item extends $pb.GeneratedMessage {
  factory protocol_weather_sunrise_item({
    $core.int? sunriseHour,
    $core.int? sunriseMin,
    $core.int? sunsetHour,
    $core.int? sunsetMin,
  }) {
    final $result = create();
    if (sunriseHour != null) {
      $result.sunriseHour = sunriseHour;
    }
    if (sunriseMin != null) {
      $result.sunriseMin = sunriseMin;
    }
    if (sunsetHour != null) {
      $result.sunsetHour = sunsetHour;
    }
    if (sunsetMin != null) {
      $result.sunsetMin = sunsetMin;
    }
    return $result;
  }
  protocol_weather_sunrise_item._() : super();
  factory protocol_weather_sunrise_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_weather_sunrise_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_weather_sunrise_item', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sunriseHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sunriseMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sunsetHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'sunsetMin', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_weather_sunrise_item clone() => protocol_weather_sunrise_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_weather_sunrise_item copyWith(void Function(protocol_weather_sunrise_item) updates) => super.copyWith((message) => updates(message as protocol_weather_sunrise_item)) as protocol_weather_sunrise_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_weather_sunrise_item create() => protocol_weather_sunrise_item._();
  protocol_weather_sunrise_item createEmptyInstance() => create();
  static $pb.PbList<protocol_weather_sunrise_item> createRepeated() => $pb.PbList<protocol_weather_sunrise_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_weather_sunrise_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_weather_sunrise_item>(create);
  static protocol_weather_sunrise_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sunriseHour => $_getIZ(0);
  @$pb.TagNumber(1)
  set sunriseHour($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSunriseHour() => $_has(0);
  @$pb.TagNumber(1)
  void clearSunriseHour() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sunriseMin => $_getIZ(1);
  @$pb.TagNumber(2)
  set sunriseMin($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSunriseMin() => $_has(1);
  @$pb.TagNumber(2)
  void clearSunriseMin() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sunsetHour => $_getIZ(2);
  @$pb.TagNumber(3)
  set sunsetHour($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSunsetHour() => $_has(2);
  @$pb.TagNumber(3)
  void clearSunsetHour() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get sunsetMin => $_getIZ(3);
  @$pb.TagNumber(4)
  set sunsetMin($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSunsetMin() => $_has(3);
  @$pb.TagNumber(4)
  void clearSunsetMin() => clearField(4);
}

/// 月出月落时间item
class protocol_weather_moon_item extends $pb.GeneratedMessage {
  factory protocol_weather_moon_item({
    $core.int? moonriseHour,
    $core.int? moonriseMin,
    $core.int? moonsetHour,
    $core.int? moonsetMin,
    moon_phase? phase,
  }) {
    final $result = create();
    if (moonriseHour != null) {
      $result.moonriseHour = moonriseHour;
    }
    if (moonriseMin != null) {
      $result.moonriseMin = moonriseMin;
    }
    if (moonsetHour != null) {
      $result.moonsetHour = moonsetHour;
    }
    if (moonsetMin != null) {
      $result.moonsetMin = moonsetMin;
    }
    if (phase != null) {
      $result.phase = phase;
    }
    return $result;
  }
  protocol_weather_moon_item._() : super();
  factory protocol_weather_moon_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_weather_moon_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_weather_moon_item', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'moonriseHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'moonriseMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'moonsetHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'moonsetMin', $pb.PbFieldType.OU3)
    ..e<moon_phase>(5, _omitFieldNames ? '' : 'phase', $pb.PbFieldType.OE, defaultOrMaker: moon_phase.NEW_MOON, valueOf: moon_phase.valueOf, enumValues: moon_phase.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_weather_moon_item clone() => protocol_weather_moon_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_weather_moon_item copyWith(void Function(protocol_weather_moon_item) updates) => super.copyWith((message) => updates(message as protocol_weather_moon_item)) as protocol_weather_moon_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_weather_moon_item create() => protocol_weather_moon_item._();
  protocol_weather_moon_item createEmptyInstance() => create();
  static $pb.PbList<protocol_weather_moon_item> createRepeated() => $pb.PbList<protocol_weather_moon_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_weather_moon_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_weather_moon_item>(create);
  static protocol_weather_moon_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get moonriseHour => $_getIZ(0);
  @$pb.TagNumber(1)
  set moonriseHour($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMoonriseHour() => $_has(0);
  @$pb.TagNumber(1)
  void clearMoonriseHour() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get moonriseMin => $_getIZ(1);
  @$pb.TagNumber(2)
  set moonriseMin($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMoonriseMin() => $_has(1);
  @$pb.TagNumber(2)
  void clearMoonriseMin() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get moonsetHour => $_getIZ(2);
  @$pb.TagNumber(3)
  set moonsetHour($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMoonsetHour() => $_has(2);
  @$pb.TagNumber(3)
  void clearMoonsetHour() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get moonsetMin => $_getIZ(3);
  @$pb.TagNumber(4)
  set moonsetMin($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMoonsetMin() => $_has(3);
  @$pb.TagNumber(4)
  void clearMoonsetMin() => clearField(4);

  @$pb.TagNumber(5)
  moon_phase get phase => $_getN(4);
  @$pb.TagNumber(5)
  set phase(moon_phase v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhase() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhase() => clearField(5);
}

class protocol_weather_detail_data_item extends $pb.GeneratedMessage {
  factory protocol_weather_detail_data_item({
    $core.int? month,
    $core.int? day,
    $core.int? hour,
    $core.int? min,
    $core.int? week,
    weather_type? weatherType,
    $core.int? curTemp,
    $core.int? curMaxTemp,
    $core.int? curMinTemp,
    $core.List<$core.int>? cityName,
    $core.Iterable<protocol_weather_hour_weather_item>? hoursWeatherItems,
    $core.int? airQuality,
    $core.int? rainfallProbability,
    $core.int? humidity,
    $core.int? ultravioletIntensity,
    $core.int? windSpeed,
    $core.int? windLevel,
    wind_direction_type? windDirection,
    $core.Iterable<protocol_weather_future_item>? futureItems,
    protocol_weather_sunrise_item? sunriseItem,
    $core.bool? location,
    $core.int? atmosHpa,
    $core.Iterable<$core.int>? uvItems,
    $core.Iterable<protocol_weather_moon_item>? moonItem,
    $core.Iterable<protocol_weather_sunrise_item>? sunriseItems,
  }) {
    final $result = create();
    if (month != null) {
      $result.month = month;
    }
    if (day != null) {
      $result.day = day;
    }
    if (hour != null) {
      $result.hour = hour;
    }
    if (min != null) {
      $result.min = min;
    }
    if (week != null) {
      $result.week = week;
    }
    if (weatherType != null) {
      $result.weatherType = weatherType;
    }
    if (curTemp != null) {
      $result.curTemp = curTemp;
    }
    if (curMaxTemp != null) {
      $result.curMaxTemp = curMaxTemp;
    }
    if (curMinTemp != null) {
      $result.curMinTemp = curMinTemp;
    }
    if (cityName != null) {
      $result.cityName = cityName;
    }
    if (hoursWeatherItems != null) {
      $result.hoursWeatherItems.addAll(hoursWeatherItems);
    }
    if (airQuality != null) {
      $result.airQuality = airQuality;
    }
    if (rainfallProbability != null) {
      $result.rainfallProbability = rainfallProbability;
    }
    if (humidity != null) {
      $result.humidity = humidity;
    }
    if (ultravioletIntensity != null) {
      $result.ultravioletIntensity = ultravioletIntensity;
    }
    if (windSpeed != null) {
      $result.windSpeed = windSpeed;
    }
    if (windLevel != null) {
      $result.windLevel = windLevel;
    }
    if (windDirection != null) {
      $result.windDirection = windDirection;
    }
    if (futureItems != null) {
      $result.futureItems.addAll(futureItems);
    }
    if (sunriseItem != null) {
      $result.sunriseItem = sunriseItem;
    }
    if (location != null) {
      $result.location = location;
    }
    if (atmosHpa != null) {
      $result.atmosHpa = atmosHpa;
    }
    if (uvItems != null) {
      $result.uvItems.addAll(uvItems);
    }
    if (moonItem != null) {
      $result.moonItem.addAll(moonItem);
    }
    if (sunriseItems != null) {
      $result.sunriseItems.addAll(sunriseItems);
    }
    return $result;
  }
  protocol_weather_detail_data_item._() : super();
  factory protocol_weather_detail_data_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_weather_detail_data_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_weather_detail_data_item', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'min', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'week', $pb.PbFieldType.OU3)
    ..e<weather_type>(6, _omitFieldNames ? '' : 'weatherType', $pb.PbFieldType.OE, defaultOrMaker: weather_type.TORNADO, valueOf: weather_type.valueOf, enumValues: weather_type.values)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'curTemp', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'curMaxTemp', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'curMinTemp', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'cityName', $pb.PbFieldType.OY)
    ..pc<protocol_weather_hour_weather_item>(11, _omitFieldNames ? '' : 'hoursWeatherItems', $pb.PbFieldType.PM, subBuilder: protocol_weather_hour_weather_item.create)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'airQuality', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'rainfallProbability', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'humidity', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'ultravioletIntensity', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'windSpeed', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'windLevel', $pb.PbFieldType.OU3)
    ..e<wind_direction_type>(18, _omitFieldNames ? '' : 'windDirection', $pb.PbFieldType.OE, defaultOrMaker: wind_direction_type.WEATHER_DIRECTION_N, valueOf: wind_direction_type.valueOf, enumValues: wind_direction_type.values)
    ..pc<protocol_weather_future_item>(19, _omitFieldNames ? '' : 'futureItems', $pb.PbFieldType.PM, subBuilder: protocol_weather_future_item.create)
    ..aOM<protocol_weather_sunrise_item>(20, _omitFieldNames ? '' : 'sunriseItem', subBuilder: protocol_weather_sunrise_item.create)
    ..aOB(21, _omitFieldNames ? '' : 'location')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'atmosHpa', $pb.PbFieldType.OU3)
    ..p<$core.int>(23, _omitFieldNames ? '' : 'uvItems', $pb.PbFieldType.KU3)
    ..pc<protocol_weather_moon_item>(24, _omitFieldNames ? '' : 'moonItem', $pb.PbFieldType.PM, subBuilder: protocol_weather_moon_item.create)
    ..pc<protocol_weather_sunrise_item>(25, _omitFieldNames ? '' : 'sunriseItems', $pb.PbFieldType.PM, subBuilder: protocol_weather_sunrise_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_weather_detail_data_item clone() => protocol_weather_detail_data_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_weather_detail_data_item copyWith(void Function(protocol_weather_detail_data_item) updates) => super.copyWith((message) => updates(message as protocol_weather_detail_data_item)) as protocol_weather_detail_data_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_weather_detail_data_item create() => protocol_weather_detail_data_item._();
  protocol_weather_detail_data_item createEmptyInstance() => create();
  static $pb.PbList<protocol_weather_detail_data_item> createRepeated() => $pb.PbList<protocol_weather_detail_data_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_weather_detail_data_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_weather_detail_data_item>(create);
  static protocol_weather_detail_data_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get month => $_getIZ(0);
  @$pb.TagNumber(1)
  set month($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMonth() => $_has(0);
  @$pb.TagNumber(1)
  void clearMonth() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get day => $_getIZ(1);
  @$pb.TagNumber(2)
  set day($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDay() => $_has(1);
  @$pb.TagNumber(2)
  void clearDay() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get hour => $_getIZ(2);
  @$pb.TagNumber(3)
  set hour($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHour() => $_has(2);
  @$pb.TagNumber(3)
  void clearHour() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get min => $_getIZ(3);
  @$pb.TagNumber(4)
  set min($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMin() => $_has(3);
  @$pb.TagNumber(4)
  void clearMin() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get week => $_getIZ(4);
  @$pb.TagNumber(5)
  set week($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWeek() => $_has(4);
  @$pb.TagNumber(5)
  void clearWeek() => clearField(5);

  @$pb.TagNumber(6)
  weather_type get weatherType => $_getN(5);
  @$pb.TagNumber(6)
  set weatherType(weather_type v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasWeatherType() => $_has(5);
  @$pb.TagNumber(6)
  void clearWeatherType() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get curTemp => $_getIZ(6);
  @$pb.TagNumber(7)
  set curTemp($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCurTemp() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurTemp() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get curMaxTemp => $_getIZ(7);
  @$pb.TagNumber(8)
  set curMaxTemp($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCurMaxTemp() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurMaxTemp() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get curMinTemp => $_getIZ(8);
  @$pb.TagNumber(9)
  set curMinTemp($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCurMinTemp() => $_has(8);
  @$pb.TagNumber(9)
  void clearCurMinTemp() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get cityName => $_getN(9);
  @$pb.TagNumber(10)
  set cityName($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCityName() => $_has(9);
  @$pb.TagNumber(10)
  void clearCityName() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<protocol_weather_hour_weather_item> get hoursWeatherItems => $_getList(10);

  @$pb.TagNumber(12)
  $core.int get airQuality => $_getIZ(11);
  @$pb.TagNumber(12)
  set airQuality($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAirQuality() => $_has(11);
  @$pb.TagNumber(12)
  void clearAirQuality() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get rainfallProbability => $_getIZ(12);
  @$pb.TagNumber(13)
  set rainfallProbability($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRainfallProbability() => $_has(12);
  @$pb.TagNumber(13)
  void clearRainfallProbability() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get humidity => $_getIZ(13);
  @$pb.TagNumber(14)
  set humidity($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasHumidity() => $_has(13);
  @$pb.TagNumber(14)
  void clearHumidity() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get ultravioletIntensity => $_getIZ(14);
  @$pb.TagNumber(15)
  set ultravioletIntensity($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasUltravioletIntensity() => $_has(14);
  @$pb.TagNumber(15)
  void clearUltravioletIntensity() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get windSpeed => $_getIZ(15);
  @$pb.TagNumber(16)
  set windSpeed($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasWindSpeed() => $_has(15);
  @$pb.TagNumber(16)
  void clearWindSpeed() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get windLevel => $_getIZ(16);
  @$pb.TagNumber(17)
  set windLevel($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasWindLevel() => $_has(16);
  @$pb.TagNumber(17)
  void clearWindLevel() => clearField(17);

  @$pb.TagNumber(18)
  wind_direction_type get windDirection => $_getN(17);
  @$pb.TagNumber(18)
  set windDirection(wind_direction_type v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasWindDirection() => $_has(17);
  @$pb.TagNumber(18)
  void clearWindDirection() => clearField(18);

  @$pb.TagNumber(19)
  $core.List<protocol_weather_future_item> get futureItems => $_getList(18);

  @$pb.TagNumber(20)
  protocol_weather_sunrise_item get sunriseItem => $_getN(19);
  @$pb.TagNumber(20)
  set sunriseItem(protocol_weather_sunrise_item v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasSunriseItem() => $_has(19);
  @$pb.TagNumber(20)
  void clearSunriseItem() => clearField(20);
  @$pb.TagNumber(20)
  protocol_weather_sunrise_item ensureSunriseItem() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.bool get location => $_getBF(20);
  @$pb.TagNumber(21)
  set location($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasLocation() => $_has(20);
  @$pb.TagNumber(21)
  void clearLocation() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get atmosHpa => $_getIZ(21);
  @$pb.TagNumber(22)
  set atmosHpa($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasAtmosHpa() => $_has(21);
  @$pb.TagNumber(22)
  void clearAtmosHpa() => clearField(22);

  @$pb.TagNumber(23)
  $core.List<$core.int> get uvItems => $_getList(22);

  @$pb.TagNumber(24)
  $core.List<protocol_weather_moon_item> get moonItem => $_getList(23);

  @$pb.TagNumber(25)
  $core.List<protocol_weather_sunrise_item> get sunriseItems => $_getList(24);
}

class protocol_weather_operate extends $pb.GeneratedMessage {
  factory protocol_weather_operate({
    operate_type? operate,
    $core.bool? switchFlag,
    $core.Iterable<protocol_weather_detail_data_item>? detailDataItem,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (switchFlag != null) {
      $result.switchFlag = switchFlag;
    }
    if (detailDataItem != null) {
      $result.detailDataItem.addAll(detailDataItem);
    }
    return $result;
  }
  protocol_weather_operate._() : super();
  factory protocol_weather_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_weather_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_weather_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'switchFlag')
    ..pc<protocol_weather_detail_data_item>(3, _omitFieldNames ? '' : 'detailDataItem', $pb.PbFieldType.PM, subBuilder: protocol_weather_detail_data_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_weather_operate clone() => protocol_weather_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_weather_operate copyWith(void Function(protocol_weather_operate) updates) => super.copyWith((message) => updates(message as protocol_weather_operate)) as protocol_weather_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_weather_operate create() => protocol_weather_operate._();
  protocol_weather_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_weather_operate> createRepeated() => $pb.PbList<protocol_weather_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_weather_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_weather_operate>(create);
  static protocol_weather_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get switchFlag => $_getBF(1);
  @$pb.TagNumber(2)
  set switchFlag($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSwitchFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearSwitchFlag() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<protocol_weather_detail_data_item> get detailDataItem => $_getList(2);
}

class protocol_weather_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_weather_inquire_reply({
    $core.int? funcTable,
    $core.int? weatherSupportMax,
    operate_type? operate,
  }) {
    final $result = create();
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (weatherSupportMax != null) {
      $result.weatherSupportMax = weatherSupportMax;
    }
    if (operate != null) {
      $result.operate = operate;
    }
    return $result;
  }
  protocol_weather_inquire_reply._() : super();
  factory protocol_weather_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_weather_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_weather_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'weatherSupportMax', $pb.PbFieldType.OU3)
    ..e<operate_type>(3, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_weather_inquire_reply clone() => protocol_weather_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_weather_inquire_reply copyWith(void Function(protocol_weather_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_weather_inquire_reply)) as protocol_weather_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_weather_inquire_reply create() => protocol_weather_inquire_reply._();
  protocol_weather_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_weather_inquire_reply> createRepeated() => $pb.PbList<protocol_weather_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_weather_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_weather_inquire_reply>(create);
  static protocol_weather_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get funcTable => $_getIZ(0);
  @$pb.TagNumber(1)
  set funcTable($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get weatherSupportMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set weatherSupportMax($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeatherSupportMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeatherSupportMax() => clearField(2);

  @$pb.TagNumber(3)
  operate_type get operate => $_getN(2);
  @$pb.TagNumber(3)
  set operate(operate_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperate() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperate() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
