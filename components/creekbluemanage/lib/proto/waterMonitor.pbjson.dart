///
//  Generated code. Do not modify.
//  source: waterMonitor.proto
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
@$core.Deprecated('Use notify_typeDescriptor instead')
const notify_type$json = const {
  '1': 'notify_type',
  '2': const [
    const {'1': 'ALLOW', '2': 0},
    const {'1': 'SILENT', '2': 1},
    const {'1': 'CLOSE', '2': 2},
  ],
};

/// Descriptor for `notify_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List notify_typeDescriptor = $convert.base64Decode('Cgtub3RpZnlfdHlwZRIJCgVBTExPVxAAEgoKBlNJTEVOVBABEgkKBUNMT1NFEAI=');
@$core.Deprecated('Use protocol_drink_water_operateDescriptor instead')
const protocol_drink_water_operate$json = const {
  '1': 'protocol_drink_water_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'switch_flag', '3': 2, '4': 1, '5': 8, '10': 'switchFlag'},
    const {'1': 'notify_flag', '3': 3, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
    const {'1': 'start_hour', '3': 4, '4': 1, '5': 13, '10': 'startHour'},
    const {'1': 'start_minute', '3': 5, '4': 1, '5': 13, '10': 'startMinute'},
    const {'1': 'end_hour', '3': 6, '4': 1, '5': 13, '10': 'endHour'},
    const {'1': 'end_minute', '3': 7, '4': 1, '5': 13, '10': 'endMinute'},
    const {'1': 'repeat', '3': 8, '4': 3, '5': 8, '10': 'repeat'},
    const {'1': 'interval', '3': 9, '4': 1, '5': 13, '10': 'interval'},
  ],
};

/// Descriptor for `protocol_drink_water_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_drink_water_operateDescriptor = $convert.base64Decode('Chxwcm90b2NvbF9kcmlua193YXRlcl9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSHwoLc3dpdGNoX2ZsYWcYAiABKAhSCnN3aXRjaEZsYWcSLQoLbm90aWZ5X2ZsYWcYAyABKA4yDC5ub3RpZnlfdHlwZVIKbm90aWZ5RmxhZxIdCgpzdGFydF9ob3VyGAQgASgNUglzdGFydEhvdXISIQoMc3RhcnRfbWludXRlGAUgASgNUgtzdGFydE1pbnV0ZRIZCghlbmRfaG91chgGIAEoDVIHZW5kSG91chIdCgplbmRfbWludXRlGAcgASgNUgllbmRNaW51dGUSFgoGcmVwZWF0GAggAygIUgZyZXBlYXQSGgoIaW50ZXJ2YWwYCSABKA1SCGludGVydmFs');
@$core.Deprecated('Use protocol_drink_water_inquire_replyDescriptor instead')
const protocol_drink_water_inquire_reply$json = const {
  '1': 'protocol_drink_water_inquire_reply',
  '2': const [
    const {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    const {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'switch_flag', '3': 3, '4': 1, '5': 8, '10': 'switchFlag'},
    const {'1': 'notify_flag', '3': 4, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
    const {'1': 'start_hour', '3': 5, '4': 1, '5': 13, '10': 'startHour'},
    const {'1': 'start_minute', '3': 6, '4': 1, '5': 13, '10': 'startMinute'},
    const {'1': 'end_hour', '3': 7, '4': 1, '5': 13, '10': 'endHour'},
    const {'1': 'end_minute', '3': 8, '4': 1, '5': 13, '10': 'endMinute'},
    const {'1': 'repeat', '3': 9, '4': 3, '5': 8, '10': 'repeat'},
    const {'1': 'interval', '3': 10, '4': 1, '5': 13, '10': 'interval'},
  ],
};

/// Descriptor for `protocol_drink_water_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_drink_water_inquire_replyDescriptor = $convert.base64Decode('CiJwcm90b2NvbF9kcmlua193YXRlcl9pbnF1aXJlX3JlcGx5Eh0KCmZ1bmNfdGFibGUYASABKA1SCWZ1bmNUYWJsZRInCgdvcGVyYXRlGAIgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEh8KC3N3aXRjaF9mbGFnGAMgASgIUgpzd2l0Y2hGbGFnEi0KC25vdGlmeV9mbGFnGAQgASgOMgwubm90aWZ5X3R5cGVSCm5vdGlmeUZsYWcSHQoKc3RhcnRfaG91chgFIAEoDVIJc3RhcnRIb3VyEiEKDHN0YXJ0X21pbnV0ZRgGIAEoDVILc3RhcnRNaW51dGUSGQoIZW5kX2hvdXIYByABKA1SB2VuZEhvdXISHQoKZW5kX21pbnV0ZRgIIAEoDVIJZW5kTWludXRlEhYKBnJlcGVhdBgJIAMoCFIGcmVwZWF0EhoKCGludGVydmFsGAogASgNUghpbnRlcnZhbA==');
