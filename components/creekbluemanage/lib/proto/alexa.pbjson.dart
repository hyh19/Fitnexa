//
//  Generated code. Do not modify.
//  source: alexa.proto
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

@$core.Deprecated('Use tran_direction_typeDescriptor instead')
const tran_direction_type$json = {
  '1': 'tran_direction_type',
  '2': [
    {'1': 'WATCH_TRAN', '2': 0},
    {'1': 'APP_TRAN', '2': 1},
  ],
};

/// Descriptor for `tran_direction_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tran_direction_typeDescriptor = $convert.base64Decode(
    'ChN0cmFuX2RpcmVjdGlvbl90eXBlEg4KCldBVENIX1RSQU4QABIMCghBUFBfVFJBThAB');

@$core.Deprecated('Use alexa_operate_typeDescriptor instead')
const alexa_operate_type$json = {
  '1': 'alexa_operate_type',
  '2': [
    {'1': 'ALEXA_OPERATE_NULL', '2': 0},
    {'1': 'ALEXA_MIC_OPEN', '2': 1},
    {'1': 'ALEXA_MIC_CLOSE', '2': 2},
    {'1': 'ALEXA_VOICE_OPEN', '2': 4},
    {'1': 'ALEXA_VOICE_CLOSE', '2': 5},
  ],
};

/// Descriptor for `alexa_operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alexa_operate_typeDescriptor = $convert.base64Decode(
    'ChJhbGV4YV9vcGVyYXRlX3R5cGUSFgoSQUxFWEFfT1BFUkFURV9OVUxMEAASEgoOQUxFWEFfTU'
    'lDX09QRU4QARITCg9BTEVYQV9NSUNfQ0xPU0UQAhIUChBBTEVYQV9WT0lDRV9PUEVOEAQSFQoR'
    'QUxFWEFfVk9JQ0VfQ0xPU0UQBQ==');

@$core.Deprecated('Use alexa_status_typeDescriptor instead')
const alexa_status_type$json = {
  '1': 'alexa_status_type',
  '2': [
    {'1': 'ALEXA_STATUS_NULL', '2': 0},
    {'1': 'ALEXA_STATUS_SUCCESS', '2': 1},
    {'1': 'ALEXA_STATUS_SET_UP', '2': 2},
    {'1': 'ALEXA_STATUS_DISCONNECT', '2': 3},
    {'1': 'ALEXA_STATUS_NETWORK_ERROR', '2': 4},
    {'1': 'ALEXA_STATUS_UNIDENTIFY', '2': 5},
    {'1': 'ALEXA_STATUS_RELOGIN', '2': 6},
  ],
};

/// Descriptor for `alexa_status_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alexa_status_typeDescriptor = $convert.base64Decode(
    'ChFhbGV4YV9zdGF0dXNfdHlwZRIVChFBTEVYQV9TVEFUVVNfTlVMTBAAEhgKFEFMRVhBX1NUQV'
    'RVU19TVUNDRVNTEAESFwoTQUxFWEFfU1RBVFVTX1NFVF9VUBACEhsKF0FMRVhBX1NUQVRVU19E'
    'SVNDT05ORUNUEAMSHgoaQUxFWEFfU1RBVFVTX05FVFdPUktfRVJST1IQBBIbChdBTEVYQV9TVE'
    'FUVVNfVU5JREVOVElGWRAFEhgKFEFMRVhBX1NUQVRVU19SRUxPR0lOEAY=');

@$core.Deprecated('Use alexa_noitce_typeDescriptor instead')
const alexa_noitce_type$json = {
  '1': 'alexa_noitce_type',
  '2': [
    {'1': 'ALEXA_NOTICE_NULL', '2': 0},
    {'1': 'ALEXA_NOTICE_REQUEST', '2': 1},
    {'1': 'ALEXA_NOTICE_EXIT', '2': 2},
    {'1': 'ALEXA_NOTICE_IRQ_REQUEST', '2': 3},
  ],
};

/// Descriptor for `alexa_noitce_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alexa_noitce_typeDescriptor = $convert.base64Decode(
    'ChFhbGV4YV9ub2l0Y2VfdHlwZRIVChFBTEVYQV9OT1RJQ0VfTlVMTBAAEhgKFEFMRVhBX05PVE'
    'lDRV9SRVFVRVNUEAESFQoRQUxFWEFfTk9USUNFX0VYSVQQAhIcChhBTEVYQV9OT1RJQ0VfSVJR'
    'X1JFUVVFU1QQAw==');

@$core.Deprecated('Use alexa_timer_operateDescriptor instead')
const alexa_timer_operate$json = {
  '1': 'alexa_timer_operate',
  '2': [
    {'1': 'TIMER_INSERT', '2': 0},
    {'1': 'TIMER_DELETE', '2': 1},
    {'1': 'TIMER_DELETE_ALL', '2': 2},
  ],
};

/// Descriptor for `alexa_timer_operate`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alexa_timer_operateDescriptor = $convert.base64Decode(
    'ChNhbGV4YV90aW1lcl9vcGVyYXRlEhAKDFRJTUVSX0lOU0VSVBAAEhAKDFRJTUVSX0RFTEVURR'
    'ABEhQKEFRJTUVSX0RFTEVURV9BTEwQAg==');

@$core.Deprecated('Use protocol_alexa_tran_operateDescriptor instead')
const protocol_alexa_tran_operate$json = {
  '1': 'protocol_alexa_tran_operate',
  '2': [
    {'1': 'tran_type', '3': 1, '4': 1, '5': 14, '6': '.tran_direction_type', '10': 'tranType'},
    {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.alexa_operate_type', '10': 'operate'},
    {'1': 'err_code', '3': 3, '4': 1, '5': 13, '10': 'errCode'},
  ],
};

/// Descriptor for `protocol_alexa_tran_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_tran_operateDescriptor = $convert.base64Decode(
    'Chtwcm90b2NvbF9hbGV4YV90cmFuX29wZXJhdGUSMQoJdHJhbl90eXBlGAEgASgOMhQudHJhbl'
    '9kaXJlY3Rpb25fdHlwZVIIdHJhblR5cGUSLQoHb3BlcmF0ZRgCIAEoDjITLmFsZXhhX29wZXJh'
    'dGVfdHlwZVIHb3BlcmF0ZRIZCghlcnJfY29kZRgDIAEoDVIHZXJyQ29kZQ==');

@$core.Deprecated('Use protocol_alexa_status_operateDescriptor instead')
const protocol_alexa_status_operate$json = {
  '1': 'protocol_alexa_status_operate',
  '2': [
    {'1': 'tran_type', '3': 1, '4': 1, '5': 14, '6': '.tran_direction_type', '10': 'tranType'},
    {'1': 'notice_type', '3': 2, '4': 1, '5': 14, '6': '.alexa_noitce_type', '10': 'noticeType'},
    {'1': 'status_type', '3': 3, '4': 1, '5': 14, '6': '.alexa_status_type', '10': 'statusType'},
  ],
};

/// Descriptor for `protocol_alexa_status_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_status_operateDescriptor = $convert.base64Decode(
    'Ch1wcm90b2NvbF9hbGV4YV9zdGF0dXNfb3BlcmF0ZRIxCgl0cmFuX3R5cGUYASABKA4yFC50cm'
    'FuX2RpcmVjdGlvbl90eXBlUgh0cmFuVHlwZRIzCgtub3RpY2VfdHlwZRgCIAEoDjISLmFsZXhh'
    'X25vaXRjZV90eXBlUgpub3RpY2VUeXBlEjMKC3N0YXR1c190eXBlGAMgASgOMhIuYWxleGFfc3'
    'RhdHVzX3R5cGVSCnN0YXR1c1R5cGU=');

@$core.Deprecated('Use protocol_alexa_result_operateDescriptor instead')
const protocol_alexa_result_operate$json = {
  '1': 'protocol_alexa_result_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'is_question', '3': 2, '4': 1, '5': 8, '10': 'isQuestion'},
    {'1': 'content', '3': 3, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `protocol_alexa_result_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_result_operateDescriptor = $convert.base64Decode(
    'Ch1wcm90b2NvbF9hbGV4YV9yZXN1bHRfb3BlcmF0ZRInCgdvcGVyYXRlGAEgASgOMg0ub3Blcm'
    'F0ZV90eXBlUgdvcGVyYXRlEh8KC2lzX3F1ZXN0aW9uGAIgASgIUgppc1F1ZXN0aW9uEhgKB2Nv'
    'bnRlbnQYAyABKAxSB2NvbnRlbnQ=');

@$core.Deprecated('Use alexa_alarm_itemDescriptor instead')
const alexa_alarm_item$json = {
  '1': 'alexa_alarm_item',
  '2': [
    {'1': 'year', '3': 1, '4': 1, '5': 13, '10': 'year'},
    {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    {'1': 'day', '3': 3, '4': 1, '5': 13, '10': 'day'},
    {'1': 'hour', '3': 4, '4': 1, '5': 13, '10': 'hour'},
    {'1': 'minute', '3': 5, '4': 1, '5': 13, '10': 'minute'},
    {'1': 'switch_flag', '3': 6, '4': 1, '5': 8, '10': 'switchFlag'},
    {'1': 'repeat', '3': 7, '4': 3, '5': 8, '10': 'repeat'},
  ],
};

/// Descriptor for `alexa_alarm_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexa_alarm_itemDescriptor = $convert.base64Decode(
    'ChBhbGV4YV9hbGFybV9pdGVtEhIKBHllYXIYASABKA1SBHllYXISFAoFbW9udGgYAiABKA1SBW'
    '1vbnRoEhAKA2RheRgDIAEoDVIDZGF5EhIKBGhvdXIYBCABKA1SBGhvdXISFgoGbWludXRlGAUg'
    'ASgNUgZtaW51dGUSHwoLc3dpdGNoX2ZsYWcYBiABKAhSCnN3aXRjaEZsYWcSFgoGcmVwZWF0GA'
    'cgAygIUgZyZXBlYXQ=');

@$core.Deprecated('Use protocol_alexa_alarm_operateDescriptor instead')
const protocol_alexa_alarm_operate$json = {
  '1': 'protocol_alexa_alarm_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'alarm_item', '3': 2, '4': 3, '5': 11, '6': '.alexa_alarm_item', '10': 'alarmItem'},
  ],
};

/// Descriptor for `protocol_alexa_alarm_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_alarm_operateDescriptor = $convert.base64Decode(
    'Chxwcm90b2NvbF9hbGV4YV9hbGFybV9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYX'
    'RlX3R5cGVSB29wZXJhdGUSMAoKYWxhcm1faXRlbRgCIAMoCzIRLmFsZXhhX2FsYXJtX2l0ZW1S'
    'CWFsYXJtSXRlbQ==');

@$core.Deprecated('Use protocol_alexa_alarm_inquire_replyDescriptor instead')
const protocol_alexa_alarm_inquire_reply$json = {
  '1': 'protocol_alexa_alarm_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'func_table', '3': 2, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'alarm_support_max', '3': 3, '4': 1, '5': 13, '10': 'alarmSupportMax'},
    {'1': 'alarm_item', '3': 4, '4': 3, '5': 11, '6': '.alexa_alarm_item', '10': 'alarmItem'},
  ],
};

/// Descriptor for `protocol_alexa_alarm_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_alarm_inquire_replyDescriptor = $convert.base64Decode(
    'CiJwcm90b2NvbF9hbGV4YV9hbGFybV9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS'
    '5vcGVyYXRlX3R5cGVSB29wZXJhdGUSHQoKZnVuY190YWJsZRgCIAEoDVIJZnVuY1RhYmxlEioK'
    'EWFsYXJtX3N1cHBvcnRfbWF4GAMgASgNUg9hbGFybVN1cHBvcnRNYXgSMAoKYWxhcm1faXRlbR'
    'gEIAMoCzIRLmFsZXhhX2FsYXJtX2l0ZW1SCWFsYXJtSXRlbQ==');

@$core.Deprecated('Use alexa_reminder_itemDescriptor instead')
const alexa_reminder_item$json = {
  '1': 'alexa_reminder_item',
  '2': [
    {'1': 'year', '3': 1, '4': 1, '5': 13, '10': 'year'},
    {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    {'1': 'day', '3': 3, '4': 1, '5': 13, '10': 'day'},
    {'1': 'hour', '3': 4, '4': 1, '5': 13, '10': 'hour'},
    {'1': 'minute', '3': 5, '4': 1, '5': 13, '10': 'minute'},
    {'1': 'content', '3': 6, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `alexa_reminder_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexa_reminder_itemDescriptor = $convert.base64Decode(
    'ChNhbGV4YV9yZW1pbmRlcl9pdGVtEhIKBHllYXIYASABKA1SBHllYXISFAoFbW9udGgYAiABKA'
    '1SBW1vbnRoEhAKA2RheRgDIAEoDVIDZGF5EhIKBGhvdXIYBCABKA1SBGhvdXISFgoGbWludXRl'
    'GAUgASgNUgZtaW51dGUSGAoHY29udGVudBgGIAEoDFIHY29udGVudA==');

@$core.Deprecated('Use protocol_alexa_reminder_operateDescriptor instead')
const protocol_alexa_reminder_operate$json = {
  '1': 'protocol_alexa_reminder_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'reminder_item', '3': 2, '4': 3, '5': 11, '6': '.alexa_reminder_item', '10': 'reminderItem'},
  ],
};

/// Descriptor for `protocol_alexa_reminder_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_reminder_operateDescriptor = $convert.base64Decode(
    'Ch9wcm90b2NvbF9hbGV4YV9yZW1pbmRlcl9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcG'
    'VyYXRlX3R5cGVSB29wZXJhdGUSOQoNcmVtaW5kZXJfaXRlbRgCIAMoCzIULmFsZXhhX3JlbWlu'
    'ZGVyX2l0ZW1SDHJlbWluZGVySXRlbQ==');

@$core.Deprecated('Use protocol_alexa_reminder_inquire_replyDescriptor instead')
const protocol_alexa_reminder_inquire_reply$json = {
  '1': 'protocol_alexa_reminder_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'func_table', '3': 2, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'reminder_support_max', '3': 3, '4': 1, '5': 13, '10': 'reminderSupportMax'},
    {'1': 'reminder_item', '3': 4, '4': 3, '5': 11, '6': '.alexa_reminder_item', '10': 'reminderItem'},
  ],
};

/// Descriptor for `protocol_alexa_reminder_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_reminder_inquire_replyDescriptor = $convert.base64Decode(
    'CiVwcm90b2NvbF9hbGV4YV9yZW1pbmRlcl9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA'
    '4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSHQoKZnVuY190YWJsZRgCIAEoDVIJZnVuY1RhYmxl'
    'EjAKFHJlbWluZGVyX3N1cHBvcnRfbWF4GAMgASgNUhJyZW1pbmRlclN1cHBvcnRNYXgSOQoNcm'
    'VtaW5kZXJfaXRlbRgEIAMoCzIULmFsZXhhX3JlbWluZGVyX2l0ZW1SDHJlbWluZGVySXRlbQ==');

@$core.Deprecated('Use alexa_timer_itemDescriptor instead')
const alexa_timer_item$json = {
  '1': 'alexa_timer_item',
  '2': [
    {'1': 'index', '3': 1, '4': 1, '5': 13, '10': 'index'},
    {'1': 'timer_sec', '3': 2, '4': 1, '5': 13, '10': 'timerSec'},
  ],
};

/// Descriptor for `alexa_timer_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexa_timer_itemDescriptor = $convert.base64Decode(
    'ChBhbGV4YV90aW1lcl9pdGVtEhQKBWluZGV4GAEgASgNUgVpbmRleBIbCgl0aW1lcl9zZWMYAi'
    'ABKA1SCHRpbWVyU2Vj');

@$core.Deprecated('Use protocol_alexa_timer_operateDescriptor instead')
const protocol_alexa_timer_operate$json = {
  '1': 'protocol_alexa_timer_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'timer_operate', '3': 2, '4': 1, '5': 14, '6': '.alexa_timer_operate', '10': 'timerOperate'},
    {'1': 'index', '3': 3, '4': 1, '5': 13, '10': 'index'},
    {'1': 'timer_sec', '3': 4, '4': 1, '5': 13, '10': 'timerSec'},
  ],
};

/// Descriptor for `protocol_alexa_timer_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_timer_operateDescriptor = $convert.base64Decode(
    'Chxwcm90b2NvbF9hbGV4YV90aW1lcl9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYX'
    'RlX3R5cGVSB29wZXJhdGUSOQoNdGltZXJfb3BlcmF0ZRgCIAEoDjIULmFsZXhhX3RpbWVyX29w'
    'ZXJhdGVSDHRpbWVyT3BlcmF0ZRIUCgVpbmRleBgDIAEoDVIFaW5kZXgSGwoJdGltZXJfc2VjGA'
    'QgASgNUgh0aW1lclNlYw==');

@$core.Deprecated('Use protocol_alexa_timer_inquire_replyDescriptor instead')
const protocol_alexa_timer_inquire_reply$json = {
  '1': 'protocol_alexa_timer_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'func_table', '3': 2, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'timer_support_max', '3': 3, '4': 1, '5': 13, '10': 'timerSupportMax'},
    {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.alexa_timer_item', '10': 'items'},
  ],
};

/// Descriptor for `protocol_alexa_timer_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_timer_inquire_replyDescriptor = $convert.base64Decode(
    'CiJwcm90b2NvbF9hbGV4YV90aW1lcl9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS'
    '5vcGVyYXRlX3R5cGVSB29wZXJhdGUSHQoKZnVuY190YWJsZRgCIAEoDVIJZnVuY1RhYmxlEioK'
    'EXRpbWVyX3N1cHBvcnRfbWF4GAMgASgNUg90aW1lclN1cHBvcnRNYXgSJwoFaXRlbXMYBCADKA'
    'syES5hbGV4YV90aW1lcl9pdGVtUgVpdGVtcw==');

@$core.Deprecated('Use alexa_weather_future_itemDescriptor instead')
const alexa_weather_future_item$json = {
  '1': 'alexa_weather_future_item',
  '2': [
    {'1': 'weather_type', '3': 1, '4': 1, '5': 12, '10': 'weatherType'},
    {'1': 'max_temp', '3': 2, '4': 1, '5': 5, '10': 'maxTemp'},
    {'1': 'min_temp', '3': 3, '4': 1, '5': 5, '10': 'minTemp'},
  ],
};

/// Descriptor for `alexa_weather_future_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexa_weather_future_itemDescriptor = $convert.base64Decode(
    'ChlhbGV4YV93ZWF0aGVyX2Z1dHVyZV9pdGVtEiEKDHdlYXRoZXJfdHlwZRgBIAEoDFILd2VhdG'
    'hlclR5cGUSGQoIbWF4X3RlbXAYAiABKAVSB21heFRlbXASGQoIbWluX3RlbXAYAyABKAVSB21p'
    'blRlbXA=');

@$core.Deprecated('Use alexa_weather_detail_data_itemDescriptor instead')
const alexa_weather_detail_data_item$json = {
  '1': 'alexa_weather_detail_data_item',
  '2': [
    {'1': 'year', '3': 1, '4': 1, '5': 13, '10': 'year'},
    {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    {'1': 'day', '3': 3, '4': 1, '5': 13, '10': 'day'},
    {'1': 'hour', '3': 4, '4': 1, '5': 13, '10': 'hour'},
    {'1': 'min', '3': 5, '4': 1, '5': 13, '10': 'min'},
    {'1': 'week', '3': 6, '4': 1, '5': 13, '10': 'week'},
    {'1': 'weather_type', '3': 7, '4': 1, '5': 12, '10': 'weatherType'},
    {'1': 'cur_temp', '3': 8, '4': 1, '5': 5, '10': 'curTemp'},
    {'1': 'cur_max_temp', '3': 9, '4': 1, '5': 5, '10': 'curMaxTemp'},
    {'1': 'cur_min_temp', '3': 10, '4': 1, '5': 5, '10': 'curMinTemp'},
    {'1': 'city_name', '3': 11, '4': 1, '5': 12, '10': 'cityName'},
    {'1': 'future_items', '3': 12, '4': 3, '5': 11, '6': '.alexa_weather_future_item', '10': 'futureItems'},
    {'1': 'temp_unit', '3': 13, '4': 1, '5': 13, '10': 'tempUnit'},
  ],
};

/// Descriptor for `alexa_weather_detail_data_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexa_weather_detail_data_itemDescriptor = $convert.base64Decode(
    'Ch5hbGV4YV93ZWF0aGVyX2RldGFpbF9kYXRhX2l0ZW0SEgoEeWVhchgBIAEoDVIEeWVhchIUCg'
    'Vtb250aBgCIAEoDVIFbW9udGgSEAoDZGF5GAMgASgNUgNkYXkSEgoEaG91chgEIAEoDVIEaG91'
    'chIQCgNtaW4YBSABKA1SA21pbhISCgR3ZWVrGAYgASgNUgR3ZWVrEiEKDHdlYXRoZXJfdHlwZR'
    'gHIAEoDFILd2VhdGhlclR5cGUSGQoIY3VyX3RlbXAYCCABKAVSB2N1clRlbXASIAoMY3VyX21h'
    'eF90ZW1wGAkgASgFUgpjdXJNYXhUZW1wEiAKDGN1cl9taW5fdGVtcBgKIAEoBVIKY3VyTWluVG'
    'VtcBIbCgljaXR5X25hbWUYCyABKAxSCGNpdHlOYW1lEj0KDGZ1dHVyZV9pdGVtcxgMIAMoCzIa'
    'LmFsZXhhX3dlYXRoZXJfZnV0dXJlX2l0ZW1SC2Z1dHVyZUl0ZW1zEhsKCXRlbXBfdW5pdBgNIA'
    'EoDVIIdGVtcFVuaXQ=');

@$core.Deprecated('Use protocol_alexa_weather_operateDescriptor instead')
const protocol_alexa_weather_operate$json = {
  '1': 'protocol_alexa_weather_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'detail_data_item', '3': 2, '4': 1, '5': 11, '6': '.alexa_weather_detail_data_item', '10': 'detailDataItem'},
  ],
};

/// Descriptor for `protocol_alexa_weather_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_weather_operateDescriptor = $convert.base64Decode(
    'Ch5wcm90b2NvbF9hbGV4YV93ZWF0aGVyX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZX'
    'JhdGVfdHlwZVIHb3BlcmF0ZRJJChBkZXRhaWxfZGF0YV9pdGVtGAIgASgLMh8uYWxleGFfd2Vh'
    'dGhlcl9kZXRhaWxfZGF0YV9pdGVtUg5kZXRhaWxEYXRhSXRlbQ==');

@$core.Deprecated('Use protocol_alexa_weather_inquire_replyDescriptor instead')
const protocol_alexa_weather_inquire_reply$json = {
  '1': 'protocol_alexa_weather_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'func_table', '3': 2, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'weather_support_max', '3': 3, '4': 1, '5': 13, '10': 'weatherSupportMax'},
  ],
};

/// Descriptor for `protocol_alexa_weather_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_weather_inquire_replyDescriptor = $convert.base64Decode(
    'CiRwcm90b2NvbF9hbGV4YV93ZWF0aGVyX2lucXVpcmVfcmVwbHkSJwoHb3BlcmF0ZRgBIAEoDj'
    'INLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIdCgpmdW5jX3RhYmxlGAIgASgNUglmdW5jVGFibGUS'
    'LgoTd2VhdGhlcl9zdXBwb3J0X21heBgDIAEoDVIRd2VhdGhlclN1cHBvcnRNYXg=');

@$core.Deprecated('Use protocol_alexa_notify_status_operateDescriptor instead')
const protocol_alexa_notify_status_operate$json = {
  '1': 'protocol_alexa_notify_status_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'notify_status', '3': 2, '4': 1, '5': 8, '10': 'notifyStatus'},
  ],
};

/// Descriptor for `protocol_alexa_notify_status_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_notify_status_operateDescriptor = $convert.base64Decode(
    'CiRwcm90b2NvbF9hbGV4YV9ub3RpZnlfc3RhdHVzX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDj'
    'INLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIjCg1ub3RpZnlfc3RhdHVzGAIgASgIUgxub3RpZnlT'
    'dGF0dXM=');

@$core.Deprecated('Use protocol_alexa_notify_status_inquire_replyDescriptor instead')
const protocol_alexa_notify_status_inquire_reply$json = {
  '1': 'protocol_alexa_notify_status_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'notify_status', '3': 2, '4': 1, '5': 8, '10': 'notifyStatus'},
  ],
};

/// Descriptor for `protocol_alexa_notify_status_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alexa_notify_status_inquire_replyDescriptor = $convert.base64Decode(
    'Cipwcm90b2NvbF9hbGV4YV9ub3RpZnlfc3RhdHVzX2lucXVpcmVfcmVwbHkSJwoHb3BlcmF0ZR'
    'gBIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIjCg1ub3RpZnlfc3RhdHVzGAIgASgIUgxu'
    'b3RpZnlTdGF0dXM=');

