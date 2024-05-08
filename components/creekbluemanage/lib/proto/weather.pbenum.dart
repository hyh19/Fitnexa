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

import 'package:protobuf/protobuf.dart' as $pb;


class weather_type extends $pb.ProtobufEnum {
  static const weather_type TORNADO = weather_type._(0, _omitEnumNames ? '' : 'TORNADO');
  static const weather_type TROPICAL_STORM = weather_type._(1, _omitEnumNames ? '' : 'TROPICAL_STORM');
  static const weather_type HURRICANE = weather_type._(2, _omitEnumNames ? '' : 'HURRICANE');
  static const weather_type STRONG_STORMS = weather_type._(3, _omitEnumNames ? '' : 'STRONG_STORMS');
  static const weather_type THUNDERSTORMS = weather_type._(4, _omitEnumNames ? '' : 'THUNDERSTORMS');
  static const weather_type RAIN_SNOW = weather_type._(5, _omitEnumNames ? '' : 'RAIN_SNOW');
  static const weather_type RAIN_SLEET = weather_type._(6, _omitEnumNames ? '' : 'RAIN_SLEET');
  static const weather_type WINTRY_MIX = weather_type._(7, _omitEnumNames ? '' : 'WINTRY_MIX');
  static const weather_type FREEZING_DRIZZLE = weather_type._(8, _omitEnumNames ? '' : 'FREEZING_DRIZZLE');
  static const weather_type DRIZZLE = weather_type._(9, _omitEnumNames ? '' : 'DRIZZLE');
  static const weather_type FREEZING_RAIN = weather_type._(10, _omitEnumNames ? '' : 'FREEZING_RAIN');
  static const weather_type SHOWERS = weather_type._(11, _omitEnumNames ? '' : 'SHOWERS');
  static const weather_type RAIN = weather_type._(12, _omitEnumNames ? '' : 'RAIN');
  static const weather_type FLURRIES = weather_type._(13, _omitEnumNames ? '' : 'FLURRIES');
  static const weather_type SNOW_SHOWERS = weather_type._(14, _omitEnumNames ? '' : 'SNOW_SHOWERS');
  static const weather_type DRIFTING_SNOW = weather_type._(15, _omitEnumNames ? '' : 'DRIFTING_SNOW');
  static const weather_type SNOW = weather_type._(16, _omitEnumNames ? '' : 'SNOW');
  static const weather_type HAIL = weather_type._(17, _omitEnumNames ? '' : 'HAIL');
  static const weather_type SLEET = weather_type._(18, _omitEnumNames ? '' : 'SLEET');
  static const weather_type BLOWING_DUST_SANDSTORM = weather_type._(19, _omitEnumNames ? '' : 'BLOWING_DUST_SANDSTORM');
  static const weather_type FOGGY = weather_type._(20, _omitEnumNames ? '' : 'FOGGY');
  static const weather_type HAZE = weather_type._(21, _omitEnumNames ? '' : 'HAZE');
  static const weather_type SMOKE = weather_type._(22, _omitEnumNames ? '' : 'SMOKE');
  static const weather_type BREEZY = weather_type._(23, _omitEnumNames ? '' : 'BREEZY');
  static const weather_type WINDY = weather_type._(24, _omitEnumNames ? '' : 'WINDY');
  static const weather_type ICE_CRYSTALS = weather_type._(25, _omitEnumNames ? '' : 'ICE_CRYSTALS');
  static const weather_type CLOUDY = weather_type._(26, _omitEnumNames ? '' : 'CLOUDY');
  static const weather_type MOSTLY_CLOUDY_NIGHT = weather_type._(27, _omitEnumNames ? '' : 'MOSTLY_CLOUDY_NIGHT');
  static const weather_type MOSTLY_CLOUDY_DAY = weather_type._(28, _omitEnumNames ? '' : 'MOSTLY_CLOUDY_DAY');
  static const weather_type PARTLY_CLOUDY_NIGHT = weather_type._(29, _omitEnumNames ? '' : 'PARTLY_CLOUDY_NIGHT');
  static const weather_type PARTLY_CLOUDY_DAY = weather_type._(30, _omitEnumNames ? '' : 'PARTLY_CLOUDY_DAY');
  static const weather_type CLEAR = weather_type._(31, _omitEnumNames ? '' : 'CLEAR');
  static const weather_type SUNNY = weather_type._(32, _omitEnumNames ? '' : 'SUNNY');
  static const weather_type MOSTLY_CLEAR = weather_type._(33, _omitEnumNames ? '' : 'MOSTLY_CLEAR');
  static const weather_type MOSTLY_SUNNY = weather_type._(34, _omitEnumNames ? '' : 'MOSTLY_SUNNY');
  static const weather_type MIXED_RAIN_HAIL = weather_type._(35, _omitEnumNames ? '' : 'MIXED_RAIN_HAIL');
  static const weather_type HOt = weather_type._(36, _omitEnumNames ? '' : 'HOt');
  static const weather_type ISOLATED_THUNDERSTORMS = weather_type._(37, _omitEnumNames ? '' : 'ISOLATED_THUNDERSTORMS');
  static const weather_type SCATTERED_THUNDERSTORMS_D = weather_type._(38, _omitEnumNames ? '' : 'SCATTERED_THUNDERSTORMS_D');
  static const weather_type SCATTERED_SHOWERS_NIGHT = weather_type._(39, _omitEnumNames ? '' : 'SCATTERED_SHOWERS_NIGHT');
  static const weather_type HEAVY_RAIN = weather_type._(40, _omitEnumNames ? '' : 'HEAVY_RAIN');
  static const weather_type SCATTERED_SNOW_SHOWERS_D = weather_type._(41, _omitEnumNames ? '' : 'SCATTERED_SNOW_SHOWERS_D');
  static const weather_type HEAVY_SNOW = weather_type._(42, _omitEnumNames ? '' : 'HEAVY_SNOW');
  static const weather_type BLIZZARD = weather_type._(43, _omitEnumNames ? '' : 'BLIZZARD');
  static const weather_type NOT_AVAILABLE = weather_type._(44, _omitEnumNames ? '' : 'NOT_AVAILABLE');
  static const weather_type SCATTERED_SNOW_SHOWERS_N = weather_type._(45, _omitEnumNames ? '' : 'SCATTERED_SNOW_SHOWERS_N');
  static const weather_type SCATTERED_SHOWERS = weather_type._(46, _omitEnumNames ? '' : 'SCATTERED_SHOWERS');
  static const weather_type SCATTERED_THUNDERSTORMS_N = weather_type._(47, _omitEnumNames ? '' : 'SCATTERED_THUNDERSTORMS_N');

  static const $core.List<weather_type> values = <weather_type> [
    TORNADO,
    TROPICAL_STORM,
    HURRICANE,
    STRONG_STORMS,
    THUNDERSTORMS,
    RAIN_SNOW,
    RAIN_SLEET,
    WINTRY_MIX,
    FREEZING_DRIZZLE,
    DRIZZLE,
    FREEZING_RAIN,
    SHOWERS,
    RAIN,
    FLURRIES,
    SNOW_SHOWERS,
    DRIFTING_SNOW,
    SNOW,
    HAIL,
    SLEET,
    BLOWING_DUST_SANDSTORM,
    FOGGY,
    HAZE,
    SMOKE,
    BREEZY,
    WINDY,
    ICE_CRYSTALS,
    CLOUDY,
    MOSTLY_CLOUDY_NIGHT,
    MOSTLY_CLOUDY_DAY,
    PARTLY_CLOUDY_NIGHT,
    PARTLY_CLOUDY_DAY,
    CLEAR,
    SUNNY,
    MOSTLY_CLEAR,
    MOSTLY_SUNNY,
    MIXED_RAIN_HAIL,
    HOt,
    ISOLATED_THUNDERSTORMS,
    SCATTERED_THUNDERSTORMS_D,
    SCATTERED_SHOWERS_NIGHT,
    HEAVY_RAIN,
    SCATTERED_SNOW_SHOWERS_D,
    HEAVY_SNOW,
    BLIZZARD,
    NOT_AVAILABLE,
    SCATTERED_SNOW_SHOWERS_N,
    SCATTERED_SHOWERS,
    SCATTERED_THUNDERSTORMS_N,
  ];

  static final $core.Map<$core.int, weather_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static weather_type? valueOf($core.int value) => _byValue[value];

  const weather_type._($core.int v, $core.String n) : super(v, n);
}

/// 风向
class wind_direction_type extends $pb.ProtobufEnum {
  static const wind_direction_type WEATHER_DIRECTION_N = wind_direction_type._(0, _omitEnumNames ? '' : 'WEATHER_DIRECTION_N');
  static const wind_direction_type WEATHER_DIRECTION_NNE = wind_direction_type._(1, _omitEnumNames ? '' : 'WEATHER_DIRECTION_NNE');
  static const wind_direction_type WEATHER_DIRECTION_NE = wind_direction_type._(2, _omitEnumNames ? '' : 'WEATHER_DIRECTION_NE');
  static const wind_direction_type WEATHER_DIRECTION_ENE = wind_direction_type._(3, _omitEnumNames ? '' : 'WEATHER_DIRECTION_ENE');
  static const wind_direction_type WEATHER_DIRECTION_E = wind_direction_type._(4, _omitEnumNames ? '' : 'WEATHER_DIRECTION_E');
  static const wind_direction_type WEATHER_DIRECTION_ESE = wind_direction_type._(5, _omitEnumNames ? '' : 'WEATHER_DIRECTION_ESE');
  static const wind_direction_type WEATHER_DIRECTION_SE = wind_direction_type._(6, _omitEnumNames ? '' : 'WEATHER_DIRECTION_SE');
  static const wind_direction_type WEATHER_DIRECTION_SSE = wind_direction_type._(7, _omitEnumNames ? '' : 'WEATHER_DIRECTION_SSE');
  static const wind_direction_type WEATHER_DIRECTION_S = wind_direction_type._(8, _omitEnumNames ? '' : 'WEATHER_DIRECTION_S');
  static const wind_direction_type WEATHER_DIRECTION_SSW = wind_direction_type._(9, _omitEnumNames ? '' : 'WEATHER_DIRECTION_SSW');
  static const wind_direction_type WEATHER_DIRECTION_SW = wind_direction_type._(10, _omitEnumNames ? '' : 'WEATHER_DIRECTION_SW');
  static const wind_direction_type WEATHER_DIRECTION_WSW = wind_direction_type._(11, _omitEnumNames ? '' : 'WEATHER_DIRECTION_WSW');
  static const wind_direction_type WEATHER_DIRECTION_W = wind_direction_type._(12, _omitEnumNames ? '' : 'WEATHER_DIRECTION_W');
  static const wind_direction_type WEATHER_DIRECTION_WNWM = wind_direction_type._(13, _omitEnumNames ? '' : 'WEATHER_DIRECTION_WNWM');
  static const wind_direction_type WEATHER_DIRECTION_NW = wind_direction_type._(14, _omitEnumNames ? '' : 'WEATHER_DIRECTION_NW');
  static const wind_direction_type WEATHER_DIRECTION_NNW = wind_direction_type._(15, _omitEnumNames ? '' : 'WEATHER_DIRECTION_NNW');

  static const $core.List<wind_direction_type> values = <wind_direction_type> [
    WEATHER_DIRECTION_N,
    WEATHER_DIRECTION_NNE,
    WEATHER_DIRECTION_NE,
    WEATHER_DIRECTION_ENE,
    WEATHER_DIRECTION_E,
    WEATHER_DIRECTION_ESE,
    WEATHER_DIRECTION_SE,
    WEATHER_DIRECTION_SSE,
    WEATHER_DIRECTION_S,
    WEATHER_DIRECTION_SSW,
    WEATHER_DIRECTION_SW,
    WEATHER_DIRECTION_WSW,
    WEATHER_DIRECTION_W,
    WEATHER_DIRECTION_WNWM,
    WEATHER_DIRECTION_NW,
    WEATHER_DIRECTION_NNW,
  ];

  static final $core.Map<$core.int, wind_direction_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static wind_direction_type? valueOf($core.int value) => _byValue[value];

  const wind_direction_type._($core.int v, $core.String n) : super(v, n);
}

class moon_phase extends $pb.ProtobufEnum {
  static const moon_phase NEW_MOON = moon_phase._(0, _omitEnumNames ? '' : 'NEW_MOON');
  static const moon_phase WAXING_CRESCENT = moon_phase._(1, _omitEnumNames ? '' : 'WAXING_CRESCENT');
  static const moon_phase FIRST_QUARTER = moon_phase._(2, _omitEnumNames ? '' : 'FIRST_QUARTER');
  static const moon_phase WAXING_GIBBOUS = moon_phase._(3, _omitEnumNames ? '' : 'WAXING_GIBBOUS');
  static const moon_phase FULL_MOON = moon_phase._(4, _omitEnumNames ? '' : 'FULL_MOON');
  static const moon_phase WANING_GIBBOUS = moon_phase._(5, _omitEnumNames ? '' : 'WANING_GIBBOUS');
  static const moon_phase LAST_QUARTER = moon_phase._(6, _omitEnumNames ? '' : 'LAST_QUARTER');
  static const moon_phase WANING_MOON = moon_phase._(7, _omitEnumNames ? '' : 'WANING_MOON');

  static const $core.List<moon_phase> values = <moon_phase> [
    NEW_MOON,
    WAXING_CRESCENT,
    FIRST_QUARTER,
    WAXING_GIBBOUS,
    FULL_MOON,
    WANING_GIBBOUS,
    LAST_QUARTER,
    WANING_MOON,
  ];

  static final $core.Map<$core.int, moon_phase> _byValue = $pb.ProtobufEnum.initByValue(values);
  static moon_phase? valueOf($core.int value) => _byValue[value];

  const moon_phase._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
