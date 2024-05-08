///
//  Generated code. Do not modify.
//  source: alarm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use operate_typeDescriptor instead')
const operate_type$json = const {
  '1': 'operate_type',
  '2': const [
    const {'1': 'INVALID', '2': 0},
    const {'1': 'INQUIRE', '2': 1},
    const {'1': 'SET', '2': 2},
  ],
};

/// Descriptor for `operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operate_typeDescriptor = $convert.base64Decode('CgxvcGVyYXRlX3R5cGUSCwoHSU5WQUxJRBAAEgsKB0lOUVVJUkUQARIHCgNTRVQQAg==');
@$core.Deprecated('Use disp_statusDescriptor instead')
const disp_status$json = const {
  '1': 'disp_status',
  '2': const [
    const {'1': 'DISP_OFF', '2': 0},
    const {'1': 'DISP_ON', '2': 1},
  ],
};

/// Descriptor for `disp_status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List disp_statusDescriptor = $convert.base64Decode('CgtkaXNwX3N0YXR1cxIMCghESVNQX09GRhAAEgsKB0RJU1BfT04QAQ==');
@$core.Deprecated('Use alarm_typeDescriptor instead')
const alarm_type$json = const {
  '1': 'alarm_type',
  '2': const [
    const {'1': 'GET_UP', '2': 0},
    const {'1': 'SLEEP', '2': 1},
  ],
};

/// Descriptor for `alarm_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alarm_typeDescriptor = $convert.base64Decode('CgphbGFybV90eXBlEgoKBkdFVF9VUBAAEgkKBVNMRUVQEAE=');
@$core.Deprecated('Use protocol_set_alarm_itemDescriptor instead')
const protocol_set_alarm_item$json = const {
  '1': 'protocol_set_alarm_item',
  '2': const [
    const {'1': 'alarm_id', '3': 1, '4': 1, '5': 13, '10': 'alarmId'},
    const {'1': 'disp_status', '3': 2, '4': 1, '5': 14, '6': '.disp_status', '10': 'dispStatus'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.alarm_type', '10': 'type'},
    const {'1': 'hour', '3': 4, '4': 1, '5': 13, '10': 'hour'},
    const {'1': 'minute', '3': 5, '4': 1, '5': 13, '10': 'minute'},
    const {'1': 'switch_flag', '3': 6, '4': 1, '5': 8, '10': 'switchFlag'},
    const {'1': 'repeat', '3': 7, '4': 3, '5': 8, '10': 'repeat'},
    const {'1': 'later_remind_switch_flag', '3': 8, '4': 1, '5': 8, '10': 'laterRemindSwitchFlag'},
    const {'1': 'later_remind_repeat_times', '3': 9, '4': 1, '5': 13, '10': 'laterRemindRepeatTimes'},
    const {'1': 'later_remind_min', '3': 10, '4': 1, '5': 13, '10': 'laterRemindMin'},
    const {'1': 'vibrate_on_off', '3': 11, '4': 1, '5': 8, '10': 'vibrateOnOff'},
    const {'1': 'name', '3': 12, '4': 1, '5': 12, '10': 'name'},
  ],
};

/// Descriptor for `protocol_set_alarm_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_set_alarm_itemDescriptor = $convert.base64Decode('Chdwcm90b2NvbF9zZXRfYWxhcm1faXRlbRIZCghhbGFybV9pZBgBIAEoDVIHYWxhcm1JZBItCgtkaXNwX3N0YXR1cxgCIAEoDjIMLmRpc3Bfc3RhdHVzUgpkaXNwU3RhdHVzEh8KBHR5cGUYAyABKA4yCy5hbGFybV90eXBlUgR0eXBlEhIKBGhvdXIYBCABKA1SBGhvdXISFgoGbWludXRlGAUgASgNUgZtaW51dGUSHwoLc3dpdGNoX2ZsYWcYBiABKAhSCnN3aXRjaEZsYWcSFgoGcmVwZWF0GAcgAygIUgZyZXBlYXQSNwoYbGF0ZXJfcmVtaW5kX3N3aXRjaF9mbGFnGAggASgIUhVsYXRlclJlbWluZFN3aXRjaEZsYWcSOQoZbGF0ZXJfcmVtaW5kX3JlcGVhdF90aW1lcxgJIAEoDVIWbGF0ZXJSZW1pbmRSZXBlYXRUaW1lcxIoChBsYXRlcl9yZW1pbmRfbWluGAogASgNUg5sYXRlclJlbWluZE1pbhIkCg52aWJyYXRlX29uX29mZhgLIAEoCFIMdmlicmF0ZU9uT2ZmEhIKBG5hbWUYDCABKAxSBG5hbWU=');
@$core.Deprecated('Use protocol_alarm_operateDescriptor instead')
const protocol_alarm_operate$json = const {
  '1': 'protocol_alarm_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'num', '3': 2, '4': 1, '5': 13, '10': 'num'},
    const {'1': 'alarm_item', '3': 3, '4': 3, '5': 11, '6': '.protocol_set_alarm_item', '10': 'alarmItem'},
  ],
};

/// Descriptor for `protocol_alarm_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alarm_operateDescriptor = $convert.base64Decode('ChZwcm90b2NvbF9hbGFybV9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSEAoDbnVtGAIgASgNUgNudW0SNwoKYWxhcm1faXRlbRgDIAMoCzIYLnByb3RvY29sX3NldF9hbGFybV9pdGVtUglhbGFybUl0ZW0=');
@$core.Deprecated('Use protocol_alarm_inquire_replyDescriptor instead')
const protocol_alarm_inquire_reply$json = const {
  '1': 'protocol_alarm_inquire_reply',
  '2': const [
    const {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    const {'1': 'alarm_support_max', '3': 2, '4': 1, '5': 13, '10': 'alarmSupportMax'},
    const {'1': 'operate', '3': 3, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'num', '3': 4, '4': 1, '5': 13, '10': 'num'},
    const {'1': 'alarm_item', '3': 5, '4': 3, '5': 11, '6': '.protocol_set_alarm_item', '10': 'alarmItem'},
  ],
};

/// Descriptor for `protocol_alarm_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_alarm_inquire_replyDescriptor = $convert.base64Decode('Chxwcm90b2NvbF9hbGFybV9pbnF1aXJlX3JlcGx5Eh0KCmZ1bmNfdGFibGUYASABKA1SCWZ1bmNUYWJsZRIqChFhbGFybV9zdXBwb3J0X21heBgCIAEoDVIPYWxhcm1TdXBwb3J0TWF4EicKB29wZXJhdGUYAyABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSEAoDbnVtGAQgASgNUgNudW0SNwoKYWxhcm1faXRlbRgFIAMoCzIYLnByb3RvY29sX3NldF9hbGFybV9pdGVtUglhbGFybUl0ZW0=');
