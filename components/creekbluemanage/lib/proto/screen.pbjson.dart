//
//  Generated code. Do not modify.
//  source: screen.proto
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

@$core.Deprecated('Use aod_modeDescriptor instead')
const aod_mode$json = {
  '1': 'aod_mode',
  '2': [
    {'1': 'INTELLIGENT_MODE', '2': 0},
    {'1': 'TIMER_MDOE', '2': 1},
  ],
};

/// Descriptor for `aod_mode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aod_modeDescriptor = $convert.base64Decode(
    'Cghhb2RfbW9kZRIUChBJTlRFTExJR0VOVF9NT0RFEAASDgoKVElNRVJfTURPRRAB');

@$core.Deprecated('Use protocol_screen_night_auto_adjustDescriptor instead')
const protocol_screen_night_auto_adjust$json = {
  '1': 'protocol_screen_night_auto_adjust',
  '2': [
    {'1': 'switch_flag', '3': 1, '4': 1, '5': 8, '10': 'switchFlag'},
    {'1': 'start_hour', '3': 2, '4': 1, '5': 13, '10': 'startHour'},
    {'1': 'start_minute', '3': 3, '4': 1, '5': 13, '10': 'startMinute'},
    {'1': 'end_hour', '3': 4, '4': 1, '5': 13, '10': 'endHour'},
    {'1': 'end_minute', '3': 5, '4': 1, '5': 13, '10': 'endMinute'},
    {'1': 'night_level', '3': 6, '4': 1, '5': 13, '10': 'nightLevel'},
  ],
};

/// Descriptor for `protocol_screen_night_auto_adjust`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_screen_night_auto_adjustDescriptor = $convert.base64Decode(
    'CiFwcm90b2NvbF9zY3JlZW5fbmlnaHRfYXV0b19hZGp1c3QSHwoLc3dpdGNoX2ZsYWcYASABKA'
    'hSCnN3aXRjaEZsYWcSHQoKc3RhcnRfaG91chgCIAEoDVIJc3RhcnRIb3VyEiEKDHN0YXJ0X21p'
    'bnV0ZRgDIAEoDVILc3RhcnRNaW51dGUSGQoIZW5kX2hvdXIYBCABKA1SB2VuZEhvdXISHQoKZW'
    '5kX21pbnV0ZRgFIAEoDVIJZW5kTWludXRlEh8KC25pZ2h0X2xldmVsGAYgASgNUgpuaWdodExl'
    'dmVs');

@$core.Deprecated('Use protocol_screen_aod_time_settingDescriptor instead')
const protocol_screen_aod_time_setting$json = {
  '1': 'protocol_screen_aod_time_setting',
  '2': [
    {'1': 'mode', '3': 1, '4': 1, '5': 14, '6': '.aod_mode', '10': 'mode'},
    {'1': 'start_hour', '3': 2, '4': 1, '5': 13, '10': 'startHour'},
    {'1': 'start_minute', '3': 3, '4': 1, '5': 13, '10': 'startMinute'},
    {'1': 'end_hour', '3': 4, '4': 1, '5': 13, '10': 'endHour'},
    {'1': 'end_minute', '3': 5, '4': 1, '5': 13, '10': 'endMinute'},
  ],
};

/// Descriptor for `protocol_screen_aod_time_setting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_screen_aod_time_settingDescriptor = $convert.base64Decode(
    'CiBwcm90b2NvbF9zY3JlZW5fYW9kX3RpbWVfc2V0dGluZxIdCgRtb2RlGAEgASgOMgkuYW9kX2'
    '1vZGVSBG1vZGUSHQoKc3RhcnRfaG91chgCIAEoDVIJc3RhcnRIb3VyEiEKDHN0YXJ0X21pbnV0'
    'ZRgDIAEoDVILc3RhcnRNaW51dGUSGQoIZW5kX2hvdXIYBCABKA1SB2VuZEhvdXISHQoKZW5kX2'
    '1pbnV0ZRgFIAEoDVIJZW5kTWludXRl');

@$core.Deprecated('Use protocol_screen_brightness_operateDescriptor instead')
const protocol_screen_brightness_operate$json = {
  '1': 'protocol_screen_brightness_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'level', '3': 2, '4': 1, '5': 13, '10': 'level'},
    {'1': 'show_interval', '3': 3, '4': 1, '5': 13, '10': 'showInterval'},
    {'1': 'night_auto_adjust', '3': 4, '4': 1, '5': 11, '6': '.protocol_screen_night_auto_adjust', '10': 'nightAutoAdjust'},
    {'1': 'aod_switch_flag', '3': 5, '4': 1, '5': 8, '10': 'aodSwitchFlag'},
    {'1': 'raise_wrist_switch_flag', '3': 6, '4': 1, '5': 8, '10': 'raiseWristSwitchFlag'},
    {'1': 'aod_time_setting', '3': 7, '4': 1, '5': 11, '6': '.protocol_screen_aod_time_setting', '10': 'aodTimeSetting'},
    {'1': 'level_flag', '3': 8, '4': 1, '5': 8, '10': 'levelFlag'},
  ],
};

/// Descriptor for `protocol_screen_brightness_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_screen_brightness_operateDescriptor = $convert.base64Decode(
    'CiJwcm90b2NvbF9zY3JlZW5fYnJpZ2h0bmVzc19vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS'
    '5vcGVyYXRlX3R5cGVSB29wZXJhdGUSFAoFbGV2ZWwYAiABKA1SBWxldmVsEiMKDXNob3dfaW50'
    'ZXJ2YWwYAyABKA1SDHNob3dJbnRlcnZhbBJOChFuaWdodF9hdXRvX2FkanVzdBgEIAEoCzIiLn'
    'Byb3RvY29sX3NjcmVlbl9uaWdodF9hdXRvX2FkanVzdFIPbmlnaHRBdXRvQWRqdXN0EiYKD2Fv'
    'ZF9zd2l0Y2hfZmxhZxgFIAEoCFINYW9kU3dpdGNoRmxhZxI1ChdyYWlzZV93cmlzdF9zd2l0Y2'
    'hfZmxhZxgGIAEoCFIUcmFpc2VXcmlzdFN3aXRjaEZsYWcSSwoQYW9kX3RpbWVfc2V0dGluZxgH'
    'IAEoCzIhLnByb3RvY29sX3NjcmVlbl9hb2RfdGltZV9zZXR0aW5nUg5hb2RUaW1lU2V0dGluZx'
    'IdCgpsZXZlbF9mbGFnGAggASgIUglsZXZlbEZsYWc=');

@$core.Deprecated('Use protocol_screen_brightness_inquire_replyDescriptor instead')
const protocol_screen_brightness_inquire_reply$json = {
  '1': 'protocol_screen_brightness_inquire_reply',
  '2': [
    {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'level', '3': 3, '4': 1, '5': 13, '10': 'level'},
    {'1': 'show_interval', '3': 4, '4': 1, '5': 13, '10': 'showInterval'},
    {'1': 'night_auto_adjust', '3': 5, '4': 1, '5': 11, '6': '.protocol_screen_night_auto_adjust', '10': 'nightAutoAdjust'},
    {'1': 'aod_switch_flag', '3': 6, '4': 1, '5': 8, '10': 'aodSwitchFlag'},
    {'1': 'raise_wrist_switch_flag', '3': 7, '4': 1, '5': 8, '10': 'raiseWristSwitchFlag'},
    {'1': 'aod_time_setting', '3': 8, '4': 1, '5': 11, '6': '.protocol_screen_aod_time_setting', '10': 'aodTimeSetting'},
  ],
};

/// Descriptor for `protocol_screen_brightness_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_screen_brightness_inquire_replyDescriptor = $convert.base64Decode(
    'Cihwcm90b2NvbF9zY3JlZW5fYnJpZ2h0bmVzc19pbnF1aXJlX3JlcGx5Eh0KCmZ1bmNfdGFibG'
    'UYASABKA1SCWZ1bmNUYWJsZRInCgdvcGVyYXRlGAIgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVy'
    'YXRlEhQKBWxldmVsGAMgASgNUgVsZXZlbBIjCg1zaG93X2ludGVydmFsGAQgASgNUgxzaG93SW'
    '50ZXJ2YWwSTgoRbmlnaHRfYXV0b19hZGp1c3QYBSABKAsyIi5wcm90b2NvbF9zY3JlZW5fbmln'
    'aHRfYXV0b19hZGp1c3RSD25pZ2h0QXV0b0FkanVzdBImCg9hb2Rfc3dpdGNoX2ZsYWcYBiABKA'
    'hSDWFvZFN3aXRjaEZsYWcSNQoXcmFpc2Vfd3Jpc3Rfc3dpdGNoX2ZsYWcYByABKAhSFHJhaXNl'
    'V3Jpc3RTd2l0Y2hGbGFnEksKEGFvZF90aW1lX3NldHRpbmcYCCABKAsyIS5wcm90b2NvbF9zY3'
    'JlZW5fYW9kX3RpbWVfc2V0dGluZ1IOYW9kVGltZVNldHRpbmc=');

