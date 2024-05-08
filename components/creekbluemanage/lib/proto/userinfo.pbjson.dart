//
//  Generated code. Do not modify.
//  source: userinfo.proto
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

@$core.Deprecated('Use gender_typeDescriptor instead')
const gender_type$json = {
  '1': 'gender_type',
  '2': [
    {'1': 'GENDER_MALE', '2': 0},
    {'1': 'GENDER_FEMALE', '2': 1},
    {'1': 'GENDER_OTHER', '2': 2},
  ],
};

/// Descriptor for `gender_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gender_typeDescriptor = $convert.base64Decode(
    'CgtnZW5kZXJfdHlwZRIPCgtHRU5ERVJfTUFMRRAAEhEKDUdFTkRFUl9GRU1BTEUQARIQCgxHRU'
    '5ERVJfT1RIRVIQAg==');

@$core.Deprecated('Use notify_typeDescriptor instead')
const notify_type$json = {
  '1': 'notify_type',
  '2': [
    {'1': 'ALLOW', '2': 0},
    {'1': 'SILENT', '2': 1},
    {'1': 'CLOSE', '2': 2},
  ],
};

/// Descriptor for `notify_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List notify_typeDescriptor = $convert.base64Decode(
    'Cgtub3RpZnlfdHlwZRIJCgVBTExPVxAAEgoKBlNJTEVOVBABEgkKBUNMT1NFEAI=');

@$core.Deprecated('Use protocol_personal_infoDescriptor instead')
const protocol_personal_info$json = {
  '1': 'protocol_personal_info',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 13, '10': 'height'},
    {'1': 'weight', '3': 2, '4': 1, '5': 13, '10': 'weight'},
    {'1': 'gender', '3': 3, '4': 1, '5': 14, '6': '.gender_type', '10': 'gender'},
    {'1': 'year', '3': 4, '4': 1, '5': 13, '10': 'year'},
    {'1': 'month', '3': 5, '4': 1, '5': 13, '10': 'month'},
    {'1': 'day', '3': 6, '4': 1, '5': 13, '10': 'day'},
  ],
};

/// Descriptor for `protocol_personal_info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_personal_infoDescriptor = $convert.base64Decode(
    'ChZwcm90b2NvbF9wZXJzb25hbF9pbmZvEhYKBmhlaWdodBgBIAEoDVIGaGVpZ2h0EhYKBndlaW'
    'dodBgCIAEoDVIGd2VpZ2h0EiQKBmdlbmRlchgDIAEoDjIMLmdlbmRlcl90eXBlUgZnZW5kZXIS'
    'EgoEeWVhchgEIAEoDVIEeWVhchIUCgVtb250aBgFIAEoDVIFbW9udGgSEAoDZGF5GAYgASgNUg'
    'NkYXk=');

@$core.Deprecated('Use protocol_perferencesDescriptor instead')
const protocol_perferences$json = {
  '1': 'protocol_perferences',
  '2': [
    {'1': 'dist_unit', '3': 1, '4': 1, '5': 13, '10': 'distUnit'},
    {'1': 'weight_unit', '3': 2, '4': 1, '5': 13, '10': 'weightUnit'},
    {'1': 'air_temp_unit', '3': 3, '4': 1, '5': 13, '10': 'airTempUnit'},
    {'1': 'skin_temp_unit', '3': 4, '4': 1, '5': 13, '10': 'skinTempUnit'},
    {'1': 'is_12hour_format', '3': 5, '4': 1, '5': 13, '10': 'is12hourFormat'},
    {'1': 'week_start_day', '3': 6, '4': 1, '5': 13, '10': 'weekStartDay'},
    {'1': 'calorie_unit', '3': 7, '4': 1, '5': 13, '10': 'calorieUnit'},
    {'1': 'swim_pool_unit', '3': 8, '4': 1, '5': 13, '10': 'swimPoolUnit'},
    {'1': 'cycling_unit', '3': 9, '4': 1, '5': 13, '10': 'cyclingUnit'},
    {'1': 'walking_running_unit', '3': 10, '4': 1, '5': 13, '10': 'walkingRunningUnit'},
    {'1': 'stride_unit', '3': 11, '4': 1, '5': 13, '10': 'strideUnit'},
    {'1': 'height_unit', '3': 12, '4': 1, '5': 13, '10': 'heightUnit'},
    {'1': 'altitude_unit', '3': 13, '4': 1, '5': 13, '10': 'altitudeUnit'},
  ],
};

/// Descriptor for `protocol_perferences`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_perferencesDescriptor = $convert.base64Decode(
    'ChRwcm90b2NvbF9wZXJmZXJlbmNlcxIbCglkaXN0X3VuaXQYASABKA1SCGRpc3RVbml0Eh8KC3'
    'dlaWdodF91bml0GAIgASgNUgp3ZWlnaHRVbml0EiIKDWFpcl90ZW1wX3VuaXQYAyABKA1SC2Fp'
    'clRlbXBVbml0EiQKDnNraW5fdGVtcF91bml0GAQgASgNUgxza2luVGVtcFVuaXQSKAoQaXNfMT'
    'Job3VyX2Zvcm1hdBgFIAEoDVIOaXMxMmhvdXJGb3JtYXQSJAoOd2Vla19zdGFydF9kYXkYBiAB'
    'KA1SDHdlZWtTdGFydERheRIhCgxjYWxvcmllX3VuaXQYByABKA1SC2NhbG9yaWVVbml0EiQKDn'
    'N3aW1fcG9vbF91bml0GAggASgNUgxzd2ltUG9vbFVuaXQSIQoMY3ljbGluZ191bml0GAkgASgN'
    'UgtjeWNsaW5nVW5pdBIwChR3YWxraW5nX3J1bm5pbmdfdW5pdBgKIAEoDVISd2Fsa2luZ1J1bm'
    '5pbmdVbml0Eh8KC3N0cmlkZV91bml0GAsgASgNUgpzdHJpZGVVbml0Eh8KC2hlaWdodF91bml0'
    'GAwgASgNUgpoZWlnaHRVbml0EiMKDWFsdGl0dWRlX3VuaXQYDSABKA1SDGFsdGl0dWRlVW5pdA'
    '==');

@$core.Deprecated('Use protocol_goal_settingDescriptor instead')
const protocol_goal_setting$json = {
  '1': 'protocol_goal_setting',
  '2': [
    {'1': 'exercise_min', '3': 1, '4': 1, '5': 13, '10': 'exerciseMin'},
    {'1': 'standing_hour', '3': 2, '4': 1, '5': 13, '10': 'standingHour'},
    {'1': 'kcal', '3': 3, '4': 1, '5': 13, '10': 'kcal'},
    {'1': 'steps', '3': 4, '4': 1, '5': 13, '10': 'steps'},
    {'1': 'distance', '3': 5, '4': 1, '5': 13, '10': 'distance'},
    {'1': 'workout_day', '3': 6, '4': 1, '5': 13, '10': 'workoutDay'},
    {'1': 'notify_switch_flag', '3': 7, '4': 1, '5': 8, '10': 'notifySwitchFlag'},
    {'1': 'notify_flag', '3': 8, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
  ],
};

/// Descriptor for `protocol_goal_setting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_goal_settingDescriptor = $convert.base64Decode(
    'ChVwcm90b2NvbF9nb2FsX3NldHRpbmcSIQoMZXhlcmNpc2VfbWluGAEgASgNUgtleGVyY2lzZU'
    '1pbhIjCg1zdGFuZGluZ19ob3VyGAIgASgNUgxzdGFuZGluZ0hvdXISEgoEa2NhbBgDIAEoDVIE'
    'a2NhbBIUCgVzdGVwcxgEIAEoDVIFc3RlcHMSGgoIZGlzdGFuY2UYBSABKA1SCGRpc3RhbmNlEh'
    '8KC3dvcmtvdXRfZGF5GAYgASgNUgp3b3Jrb3V0RGF5EiwKEm5vdGlmeV9zd2l0Y2hfZmxhZxgH'
    'IAEoCFIQbm90aWZ5U3dpdGNoRmxhZxItCgtub3RpZnlfZmxhZxgIIAEoDjIMLm5vdGlmeV90eX'
    'BlUgpub3RpZnlGbGFn');

@$core.Deprecated('Use protocol_user_info_operateDescriptor instead')
const protocol_user_info_operate$json = {
  '1': 'protocol_user_info_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'personal_info', '3': 2, '4': 1, '5': 11, '6': '.protocol_personal_info', '10': 'personalInfo'},
    {'1': 'perferences', '3': 3, '4': 1, '5': 11, '6': '.protocol_perferences', '10': 'perferences'},
    {'1': 'goal_setting', '3': 4, '4': 1, '5': 11, '6': '.protocol_goal_setting', '10': 'goalSetting'},
  ],
};

/// Descriptor for `protocol_user_info_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_user_info_operateDescriptor = $convert.base64Decode(
    'Chpwcm90b2NvbF91c2VyX2luZm9fb3BlcmF0ZRInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV'
    '90eXBlUgdvcGVyYXRlEjwKDXBlcnNvbmFsX2luZm8YAiABKAsyFy5wcm90b2NvbF9wZXJzb25h'
    'bF9pbmZvUgxwZXJzb25hbEluZm8SNwoLcGVyZmVyZW5jZXMYAyABKAsyFS5wcm90b2NvbF9wZX'
    'JmZXJlbmNlc1ILcGVyZmVyZW5jZXMSOQoMZ29hbF9zZXR0aW5nGAQgASgLMhYucHJvdG9jb2xf'
    'Z29hbF9zZXR0aW5nUgtnb2FsU2V0dGluZw==');

@$core.Deprecated('Use protocol_user_info_inquire_replyDescriptor instead')
const protocol_user_info_inquire_reply$json = {
  '1': 'protocol_user_info_inquire_reply',
  '2': [
    {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'personal_info', '3': 3, '4': 1, '5': 11, '6': '.protocol_personal_info', '10': 'personalInfo'},
    {'1': 'perferences', '3': 4, '4': 1, '5': 11, '6': '.protocol_perferences', '10': 'perferences'},
    {'1': 'goal_setting', '3': 5, '4': 1, '5': 11, '6': '.protocol_goal_setting', '10': 'goalSetting'},
  ],
};

/// Descriptor for `protocol_user_info_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_user_info_inquire_replyDescriptor = $convert.base64Decode(
    'CiBwcm90b2NvbF91c2VyX2luZm9faW5xdWlyZV9yZXBseRIdCgpmdW5jX3RhYmxlGAEgASgNUg'
    'lmdW5jVGFibGUSJwoHb3BlcmF0ZRgCIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRI8Cg1w'
    'ZXJzb25hbF9pbmZvGAMgASgLMhcucHJvdG9jb2xfcGVyc29uYWxfaW5mb1IMcGVyc29uYWxJbm'
    'ZvEjcKC3BlcmZlcmVuY2VzGAQgASgLMhUucHJvdG9jb2xfcGVyZmVyZW5jZXNSC3BlcmZlcmVu'
    'Y2VzEjkKDGdvYWxfc2V0dGluZxgFIAEoCzIWLnByb3RvY29sX2dvYWxfc2V0dGluZ1ILZ29hbF'
    'NldHRpbmc=');

