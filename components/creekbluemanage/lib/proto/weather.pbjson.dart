//
//  Generated code. Do not modify.
//  source: weather.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use operate_typeDescriptor instead')
const operate_type$json = {
  '1': 'operate_type',
  '2': [
    {'1': 'INVALID', '2': 0},
    {'1': 'INQUIRE', '2': 1},
    {'1': 'SET', '2': 2},
  ],
};

/// Descriptor for `operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operate_typeDescriptor = $convert.base64Decode(
    'CgxvcGVyYXRlX3R5cGUSCwoHSU5WQUxJRBAAEgsKB0lOUVVJUkUQARIHCgNTRVQQAg==');

@$core.Deprecated('Use weather_typeDescriptor instead')
const weather_type$json = {
  '1': 'weather_type',
  '2': [
    {'1': 'TORNADO', '2': 0},
    {'1': 'TROPICAL_STORM', '2': 1},
    {'1': 'HURRICANE', '2': 2},
    {'1': 'STRONG_STORMS', '2': 3},
    {'1': 'THUNDERSTORMS', '2': 4},
    {'1': 'RAIN_SNOW', '2': 5},
    {'1': 'RAIN_SLEET', '2': 6},
    {'1': 'WINTRY_MIX', '2': 7},
    {'1': 'FREEZING_DRIZZLE', '2': 8},
    {'1': 'DRIZZLE', '2': 9},
    {'1': 'FREEZING_RAIN', '2': 10},
    {'1': 'SHOWERS', '2': 11},
    {'1': 'RAIN', '2': 12},
    {'1': 'FLURRIES', '2': 13},
    {'1': 'SNOW_SHOWERS', '2': 14},
    {'1': 'DRIFTING_SNOW', '2': 15},
    {'1': 'SNOW', '2': 16},
    {'1': 'HAIL', '2': 17},
    {'1': 'SLEET', '2': 18},
    {'1': 'BLOWING_DUST_SANDSTORM', '2': 19},
    {'1': 'FOGGY', '2': 20},
    {'1': 'HAZE', '2': 21},
    {'1': 'SMOKE', '2': 22},
    {'1': 'BREEZY', '2': 23},
    {'1': 'WINDY', '2': 24},
    {'1': 'ICE_CRYSTALS', '2': 25},
    {'1': 'CLOUDY', '2': 26},
    {'1': 'MOSTLY_CLOUDY_NIGHT', '2': 27},
    {'1': 'MOSTLY_CLOUDY_DAY', '2': 28},
    {'1': 'PARTLY_CLOUDY_NIGHT', '2': 29},
    {'1': 'PARTLY_CLOUDY_DAY', '2': 30},
    {'1': 'CLEAR', '2': 31},
    {'1': 'SUNNY', '2': 32},
    {'1': 'MOSTLY_CLEAR', '2': 33},
    {'1': 'MOSTLY_SUNNY', '2': 34},
    {'1': 'MIXED_RAIN_HAIL', '2': 35},
    {'1': 'HOt', '2': 36},
    {'1': 'ISOLATED_THUNDERSTORMS', '2': 37},
    {'1': 'SCATTERED_THUNDERSTORMS_D', '2': 38},
    {'1': 'SCATTERED_SHOWERS_NIGHT', '2': 39},
    {'1': 'HEAVY_RAIN', '2': 40},
    {'1': 'SCATTERED_SNOW_SHOWERS_D', '2': 41},
    {'1': 'HEAVY_SNOW', '2': 42},
    {'1': 'BLIZZARD', '2': 43},
    {'1': 'NOT_AVAILABLE', '2': 44},
    {'1': 'SCATTERED_SNOW_SHOWERS_N', '2': 45},
    {'1': 'SCATTERED_SHOWERS', '2': 46},
    {'1': 'SCATTERED_THUNDERSTORMS_N', '2': 47},
  ],
};

/// Descriptor for `weather_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List weather_typeDescriptor = $convert.base64Decode(
    'Cgx3ZWF0aGVyX3R5cGUSCwoHVE9STkFETxAAEhIKDlRST1BJQ0FMX1NUT1JNEAESDQoJSFVSUk'
    'lDQU5FEAISEQoNU1RST05HX1NUT1JNUxADEhEKDVRIVU5ERVJTVE9STVMQBBINCglSQUlOX1NO'
    'T1cQBRIOCgpSQUlOX1NMRUVUEAYSDgoKV0lOVFJZX01JWBAHEhQKEEZSRUVaSU5HX0RSSVpaTE'
    'UQCBILCgdEUklaWkxFEAkSEQoNRlJFRVpJTkdfUkFJThAKEgsKB1NIT1dFUlMQCxIICgRSQUlO'
    'EAwSDAoIRkxVUlJJRVMQDRIQCgxTTk9XX1NIT1dFUlMQDhIRCg1EUklGVElOR19TTk9XEA8SCA'
    'oEU05PVxAQEggKBEhBSUwQERIJCgVTTEVFVBASEhoKFkJMT1dJTkdfRFVTVF9TQU5EU1RPUk0Q'
    'ExIJCgVGT0dHWRAUEggKBEhBWkUQFRIJCgVTTU9LRRAWEgoKBkJSRUVaWRAXEgkKBVdJTkRZEB'
    'gSEAoMSUNFX0NSWVNUQUxTEBkSCgoGQ0xPVURZEBoSFwoTTU9TVExZX0NMT1VEWV9OSUdIVBAb'
    'EhUKEU1PU1RMWV9DTE9VRFlfREFZEBwSFwoTUEFSVExZX0NMT1VEWV9OSUdIVBAdEhUKEVBBUl'
    'RMWV9DTE9VRFlfREFZEB4SCQoFQ0xFQVIQHxIJCgVTVU5OWRAgEhAKDE1PU1RMWV9DTEVBUhAh'
    'EhAKDE1PU1RMWV9TVU5OWRAiEhMKD01JWEVEX1JBSU5fSEFJTBAjEgcKA0hPdBAkEhoKFklTT0'
    'xBVEVEX1RIVU5ERVJTVE9STVMQJRIdChlTQ0FUVEVSRURfVEhVTkRFUlNUT1JNU19EECYSGwoX'
    'U0NBVFRFUkVEX1NIT1dFUlNfTklHSFQQJxIOCgpIRUFWWV9SQUlOECgSHAoYU0NBVFRFUkVEX1'
    'NOT1dfU0hPV0VSU19EECkSDgoKSEVBVllfU05PVxAqEgwKCEJMSVpaQVJEECsSEQoNTk9UX0FW'
    'QUlMQUJMRRAsEhwKGFNDQVRURVJFRF9TTk9XX1NIT1dFUlNfThAtEhUKEVNDQVRURVJFRF9TSE'
    '9XRVJTEC4SHQoZU0NBVFRFUkVEX1RIVU5ERVJTVE9STVNfThAv');

@$core.Deprecated('Use wind_direction_typeDescriptor instead')
const wind_direction_type$json = {
  '1': 'wind_direction_type',
  '2': [
    {'1': 'WEATHER_DIRECTION_N', '2': 0},
    {'1': 'WEATHER_DIRECTION_NNE', '2': 1},
    {'1': 'WEATHER_DIRECTION_NE', '2': 2},
    {'1': 'WEATHER_DIRECTION_ENE', '2': 3},
    {'1': 'WEATHER_DIRECTION_E', '2': 4},
    {'1': 'WEATHER_DIRECTION_ESE', '2': 5},
    {'1': 'WEATHER_DIRECTION_SE', '2': 6},
    {'1': 'WEATHER_DIRECTION_SSE', '2': 7},
    {'1': 'WEATHER_DIRECTION_S', '2': 8},
    {'1': 'WEATHER_DIRECTION_SSW', '2': 9},
    {'1': 'WEATHER_DIRECTION_SW', '2': 10},
    {'1': 'WEATHER_DIRECTION_WSW', '2': 11},
    {'1': 'WEATHER_DIRECTION_W', '2': 12},
    {'1': 'WEATHER_DIRECTION_WNWM', '2': 13},
    {'1': 'WEATHER_DIRECTION_NW', '2': 14},
    {'1': 'WEATHER_DIRECTION_NNW', '2': 15},
  ],
};

/// Descriptor for `wind_direction_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wind_direction_typeDescriptor = $convert.base64Decode(
    'ChN3aW5kX2RpcmVjdGlvbl90eXBlEhcKE1dFQVRIRVJfRElSRUNUSU9OX04QABIZChVXRUFUSE'
    'VSX0RJUkVDVElPTl9OTkUQARIYChRXRUFUSEVSX0RJUkVDVElPTl9ORRACEhkKFVdFQVRIRVJf'
    'RElSRUNUSU9OX0VORRADEhcKE1dFQVRIRVJfRElSRUNUSU9OX0UQBBIZChVXRUFUSEVSX0RJUk'
    'VDVElPTl9FU0UQBRIYChRXRUFUSEVSX0RJUkVDVElPTl9TRRAGEhkKFVdFQVRIRVJfRElSRUNU'
    'SU9OX1NTRRAHEhcKE1dFQVRIRVJfRElSRUNUSU9OX1MQCBIZChVXRUFUSEVSX0RJUkVDVElPTl'
    '9TU1cQCRIYChRXRUFUSEVSX0RJUkVDVElPTl9TVxAKEhkKFVdFQVRIRVJfRElSRUNUSU9OX1dT'
    'VxALEhcKE1dFQVRIRVJfRElSRUNUSU9OX1cQDBIaChZXRUFUSEVSX0RJUkVDVElPTl9XTldNEA'
    '0SGAoUV0VBVEhFUl9ESVJFQ1RJT05fTlcQDhIZChVXRUFUSEVSX0RJUkVDVElPTl9OTlcQDw==');

@$core.Deprecated('Use moon_phaseDescriptor instead')
const moon_phase$json = {
  '1': 'moon_phase',
  '2': [
    {'1': 'NEW_MOON', '2': 0},
    {'1': 'WAXING_CRESCENT', '2': 1},
    {'1': 'FIRST_QUARTER', '2': 2},
    {'1': 'WAXING_GIBBOUS', '2': 3},
    {'1': 'FULL_MOON', '2': 4},
    {'1': 'WANING_GIBBOUS', '2': 5},
    {'1': 'LAST_QUARTER', '2': 6},
    {'1': 'WANING_MOON', '2': 7},
  ],
};

/// Descriptor for `moon_phase`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List moon_phaseDescriptor = $convert.base64Decode(
    'Cgptb29uX3BoYXNlEgwKCE5FV19NT09OEAASEwoPV0FYSU5HX0NSRVNDRU5UEAESEQoNRklSU1'
    'RfUVVBUlRFUhACEhIKDldBWElOR19HSUJCT1VTEAMSDQoJRlVMTF9NT09OEAQSEgoOV0FOSU5H'
    'X0dJQkJPVVMQBRIQCgxMQVNUX1FVQVJURVIQBhIPCgtXQU5JTkdfTU9PThAH');

@$core.Deprecated('Use protocol_weather_future_itemDescriptor instead')
const protocol_weather_future_item$json = {
  '1': 'protocol_weather_future_item',
  '2': [
    {'1': 'weather_type', '3': 1, '4': 1, '5': 14, '6': '.weather_type', '10': 'weatherType'},
    {'1': 'max_temp', '3': 2, '4': 1, '5': 5, '10': 'maxTemp'},
    {'1': 'min_temp', '3': 3, '4': 1, '5': 5, '10': 'minTemp'},
  ],
};

/// Descriptor for `protocol_weather_future_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_weather_future_itemDescriptor = $convert.base64Decode(
    'Chxwcm90b2NvbF93ZWF0aGVyX2Z1dHVyZV9pdGVtEjAKDHdlYXRoZXJfdHlwZRgBIAEoDjINLn'
    'dlYXRoZXJfdHlwZVILd2VhdGhlclR5cGUSGQoIbWF4X3RlbXAYAiABKAVSB21heFRlbXASGQoI'
    'bWluX3RlbXAYAyABKAVSB21pblRlbXA=');

@$core.Deprecated('Use protocol_weather_hour_weather_itemDescriptor instead')
const protocol_weather_hour_weather_item$json = {
  '1': 'protocol_weather_hour_weather_item',
  '2': [
    {'1': 'weather_type', '3': 1, '4': 1, '5': 14, '6': '.weather_type', '10': 'weatherType'},
    {'1': 'temperature', '3': 2, '4': 1, '5': 5, '10': 'temperature'},
  ],
};

/// Descriptor for `protocol_weather_hour_weather_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_weather_hour_weather_itemDescriptor = $convert.base64Decode(
    'CiJwcm90b2NvbF93ZWF0aGVyX2hvdXJfd2VhdGhlcl9pdGVtEjAKDHdlYXRoZXJfdHlwZRgBIA'
    'EoDjINLndlYXRoZXJfdHlwZVILd2VhdGhlclR5cGUSIAoLdGVtcGVyYXR1cmUYAiABKAVSC3Rl'
    'bXBlcmF0dXJl');

@$core.Deprecated('Use protocol_weather_sunrise_itemDescriptor instead')
const protocol_weather_sunrise_item$json = {
  '1': 'protocol_weather_sunrise_item',
  '2': [
    {'1': 'sunrise_hour', '3': 1, '4': 1, '5': 13, '10': 'sunriseHour'},
    {'1': 'sunrise_min', '3': 2, '4': 1, '5': 13, '10': 'sunriseMin'},
    {'1': 'sunset_hour', '3': 3, '4': 1, '5': 13, '10': 'sunsetHour'},
    {'1': 'sunset_min', '3': 4, '4': 1, '5': 13, '10': 'sunsetMin'},
  ],
};

/// Descriptor for `protocol_weather_sunrise_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_weather_sunrise_itemDescriptor = $convert.base64Decode(
    'Ch1wcm90b2NvbF93ZWF0aGVyX3N1bnJpc2VfaXRlbRIhCgxzdW5yaXNlX2hvdXIYASABKA1SC3'
    'N1bnJpc2VIb3VyEh8KC3N1bnJpc2VfbWluGAIgASgNUgpzdW5yaXNlTWluEh8KC3N1bnNldF9o'
    'b3VyGAMgASgNUgpzdW5zZXRIb3VyEh0KCnN1bnNldF9taW4YBCABKA1SCXN1bnNldE1pbg==');

@$core.Deprecated('Use protocol_weather_moon_itemDescriptor instead')
const protocol_weather_moon_item$json = {
  '1': 'protocol_weather_moon_item',
  '2': [
    {'1': 'moonrise_hour', '3': 1, '4': 1, '5': 13, '10': 'moonriseHour'},
    {'1': 'moonrise_min', '3': 2, '4': 1, '5': 13, '10': 'moonriseMin'},
    {'1': 'moonset_hour', '3': 3, '4': 1, '5': 13, '10': 'moonsetHour'},
    {'1': 'moonset_min', '3': 4, '4': 1, '5': 13, '10': 'moonsetMin'},
    {'1': 'phase', '3': 5, '4': 1, '5': 14, '6': '.moon_phase', '10': 'phase'},
  ],
};

/// Descriptor for `protocol_weather_moon_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_weather_moon_itemDescriptor = $convert.base64Decode(
    'Chpwcm90b2NvbF93ZWF0aGVyX21vb25faXRlbRIjCg1tb29ucmlzZV9ob3VyGAEgASgNUgxtb2'
    '9ucmlzZUhvdXISIQoMbW9vbnJpc2VfbWluGAIgASgNUgttb29ucmlzZU1pbhIhCgxtb29uc2V0'
    'X2hvdXIYAyABKA1SC21vb25zZXRIb3VyEh8KC21vb25zZXRfbWluGAQgASgNUgptb29uc2V0TW'
    'luEiEKBXBoYXNlGAUgASgOMgsubW9vbl9waGFzZVIFcGhhc2U=');

@$core.Deprecated('Use protocol_weather_detail_data_itemDescriptor instead')
const protocol_weather_detail_data_item$json = {
  '1': 'protocol_weather_detail_data_item',
  '2': [
    {'1': 'month', '3': 1, '4': 1, '5': 13, '10': 'month'},
    {'1': 'day', '3': 2, '4': 1, '5': 13, '10': 'day'},
    {'1': 'hour', '3': 3, '4': 1, '5': 13, '10': 'hour'},
    {'1': 'min', '3': 4, '4': 1, '5': 13, '10': 'min'},
    {'1': 'week', '3': 5, '4': 1, '5': 13, '10': 'week'},
    {'1': 'weather_type', '3': 6, '4': 1, '5': 14, '6': '.weather_type', '10': 'weatherType'},
    {'1': 'cur_temp', '3': 7, '4': 1, '5': 5, '10': 'curTemp'},
    {'1': 'cur_max_temp', '3': 8, '4': 1, '5': 5, '10': 'curMaxTemp'},
    {'1': 'cur_min_temp', '3': 9, '4': 1, '5': 5, '10': 'curMinTemp'},
    {'1': 'city_name', '3': 10, '4': 1, '5': 12, '10': 'cityName'},
    {'1': 'hours_weather_items', '3': 11, '4': 3, '5': 11, '6': '.protocol_weather_hour_weather_item', '10': 'hoursWeatherItems'},
    {'1': 'air_quality', '3': 12, '4': 1, '5': 13, '10': 'airQuality'},
    {'1': 'rainfall_probability', '3': 13, '4': 1, '5': 13, '10': 'rainfallProbability'},
    {'1': 'humidity', '3': 14, '4': 1, '5': 13, '10': 'humidity'},
    {'1': 'ultraviolet_intensity', '3': 15, '4': 1, '5': 13, '10': 'ultravioletIntensity'},
    {'1': 'wind_speed', '3': 16, '4': 1, '5': 13, '10': 'windSpeed'},
    {'1': 'wind_level', '3': 17, '4': 1, '5': 13, '10': 'windLevel'},
    {'1': 'wind_direction', '3': 18, '4': 1, '5': 14, '6': '.wind_direction_type', '10': 'windDirection'},
    {'1': 'future_items', '3': 19, '4': 3, '5': 11, '6': '.protocol_weather_future_item', '10': 'futureItems'},
    {'1': 'sunrise_item', '3': 20, '4': 1, '5': 11, '6': '.protocol_weather_sunrise_item', '10': 'sunriseItem'},
    {'1': 'location', '3': 21, '4': 1, '5': 8, '10': 'location'},
    {'1': 'atmos_hpa', '3': 22, '4': 1, '5': 13, '10': 'atmosHpa'},
    {'1': 'uv_items', '3': 23, '4': 3, '5': 13, '10': 'uvItems'},
    {'1': 'moon_item', '3': 24, '4': 3, '5': 11, '6': '.protocol_weather_moon_item', '10': 'moonItem'},
    {'1': 'sunrise_items', '3': 25, '4': 3, '5': 11, '6': '.protocol_weather_sunrise_item', '10': 'sunriseItems'},
  ],
};

/// Descriptor for `protocol_weather_detail_data_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_weather_detail_data_itemDescriptor = $convert.base64Decode(
    'CiFwcm90b2NvbF93ZWF0aGVyX2RldGFpbF9kYXRhX2l0ZW0SFAoFbW9udGgYASABKA1SBW1vbn'
    'RoEhAKA2RheRgCIAEoDVIDZGF5EhIKBGhvdXIYAyABKA1SBGhvdXISEAoDbWluGAQgASgNUgNt'
    'aW4SEgoEd2VlaxgFIAEoDVIEd2VlaxIwCgx3ZWF0aGVyX3R5cGUYBiABKA4yDS53ZWF0aGVyX3'
    'R5cGVSC3dlYXRoZXJUeXBlEhkKCGN1cl90ZW1wGAcgASgFUgdjdXJUZW1wEiAKDGN1cl9tYXhf'
    'dGVtcBgIIAEoBVIKY3VyTWF4VGVtcBIgCgxjdXJfbWluX3RlbXAYCSABKAVSCmN1ck1pblRlbX'
    'ASGwoJY2l0eV9uYW1lGAogASgMUghjaXR5TmFtZRJTChNob3Vyc193ZWF0aGVyX2l0ZW1zGAsg'
    'AygLMiMucHJvdG9jb2xfd2VhdGhlcl9ob3VyX3dlYXRoZXJfaXRlbVIRaG91cnNXZWF0aGVySX'
    'RlbXMSHwoLYWlyX3F1YWxpdHkYDCABKA1SCmFpclF1YWxpdHkSMQoUcmFpbmZhbGxfcHJvYmFi'
    'aWxpdHkYDSABKA1SE3JhaW5mYWxsUHJvYmFiaWxpdHkSGgoIaHVtaWRpdHkYDiABKA1SCGh1bW'
    'lkaXR5EjMKFXVsdHJhdmlvbGV0X2ludGVuc2l0eRgPIAEoDVIUdWx0cmF2aW9sZXRJbnRlbnNp'
    'dHkSHQoKd2luZF9zcGVlZBgQIAEoDVIJd2luZFNwZWVkEh0KCndpbmRfbGV2ZWwYESABKA1SCX'
    'dpbmRMZXZlbBI7Cg53aW5kX2RpcmVjdGlvbhgSIAEoDjIULndpbmRfZGlyZWN0aW9uX3R5cGVS'
    'DXdpbmREaXJlY3Rpb24SQAoMZnV0dXJlX2l0ZW1zGBMgAygLMh0ucHJvdG9jb2xfd2VhdGhlcl'
    '9mdXR1cmVfaXRlbVILZnV0dXJlSXRlbXMSQQoMc3VucmlzZV9pdGVtGBQgASgLMh4ucHJvdG9j'
    'b2xfd2VhdGhlcl9zdW5yaXNlX2l0ZW1SC3N1bnJpc2VJdGVtEhoKCGxvY2F0aW9uGBUgASgIUg'
    'hsb2NhdGlvbhIbCglhdG1vc19ocGEYFiABKA1SCGF0bW9zSHBhEhkKCHV2X2l0ZW1zGBcgAygN'
    'Ugd1dkl0ZW1zEjgKCW1vb25faXRlbRgYIAMoCzIbLnByb3RvY29sX3dlYXRoZXJfbW9vbl9pdG'
    'VtUghtb29uSXRlbRJDCg1zdW5yaXNlX2l0ZW1zGBkgAygLMh4ucHJvdG9jb2xfd2VhdGhlcl9z'
    'dW5yaXNlX2l0ZW1SDHN1bnJpc2VJdGVtcw==');

@$core.Deprecated('Use protocol_weather_operateDescriptor instead')
const protocol_weather_operate$json = {
  '1': 'protocol_weather_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'switch_flag', '3': 2, '4': 1, '5': 8, '10': 'switchFlag'},
    {'1': 'detail_data_item', '3': 3, '4': 3, '5': 11, '6': '.protocol_weather_detail_data_item', '10': 'detailDataItem'},
  ],
};

/// Descriptor for `protocol_weather_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_weather_operateDescriptor = $convert.base64Decode(
    'Chhwcm90b2NvbF93ZWF0aGVyX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdGVfdH'
    'lwZVIHb3BlcmF0ZRIfCgtzd2l0Y2hfZmxhZxgCIAEoCFIKc3dpdGNoRmxhZxJMChBkZXRhaWxf'
    'ZGF0YV9pdGVtGAMgAygLMiIucHJvdG9jb2xfd2VhdGhlcl9kZXRhaWxfZGF0YV9pdGVtUg5kZX'
    'RhaWxEYXRhSXRlbQ==');

@$core.Deprecated('Use protocol_weather_inquire_replyDescriptor instead')
const protocol_weather_inquire_reply$json = {
  '1': 'protocol_weather_inquire_reply',
  '2': [
    {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'weather_support_max', '3': 2, '4': 1, '5': 13, '10': 'weatherSupportMax'},
    {'1': 'operate', '3': 3, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
  ],
};

/// Descriptor for `protocol_weather_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_weather_inquire_replyDescriptor = $convert.base64Decode(
    'Ch5wcm90b2NvbF93ZWF0aGVyX2lucXVpcmVfcmVwbHkSHQoKZnVuY190YWJsZRgBIAEoDVIJZn'
    'VuY1RhYmxlEi4KE3dlYXRoZXJfc3VwcG9ydF9tYXgYAiABKA1SEXdlYXRoZXJTdXBwb3J0TWF4'
    'EicKB29wZXJhdGUYAyABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGU=');

