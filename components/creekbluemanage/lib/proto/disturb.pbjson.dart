///
//  Generated code. Do not modify.
//  source: disturb.proto
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
@$core.Deprecated('Use protocol_set_disturb_itemDescriptor instead')
const protocol_set_disturb_item$json = const {
  '1': 'protocol_set_disturb_item',
  '2': const [
    const {'1': 'disturb_id', '3': 1, '4': 1, '5': 13, '10': 'disturbId'},
    const {'1': 'start_hour', '3': 2, '4': 1, '5': 13, '10': 'startHour'},
    const {'1': 'start_minute', '3': 3, '4': 1, '5': 13, '10': 'startMinute'},
    const {'1': 'end_hour', '3': 4, '4': 1, '5': 13, '10': 'endHour'},
    const {'1': 'end_minute', '3': 5, '4': 1, '5': 13, '10': 'endMinute'},
    const {'1': 'repeat', '3': 6, '4': 3, '5': 8, '10': 'repeat'},
    const {'1': 'switch_flag', '3': 7, '4': 1, '5': 8, '10': 'switchFlag'},
  ],
};

/// Descriptor for `protocol_set_disturb_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_set_disturb_itemDescriptor = $convert.base64Decode('Chlwcm90b2NvbF9zZXRfZGlzdHVyYl9pdGVtEh0KCmRpc3R1cmJfaWQYASABKA1SCWRpc3R1cmJJZBIdCgpzdGFydF9ob3VyGAIgASgNUglzdGFydEhvdXISIQoMc3RhcnRfbWludXRlGAMgASgNUgtzdGFydE1pbnV0ZRIZCghlbmRfaG91chgEIAEoDVIHZW5kSG91chIdCgplbmRfbWludXRlGAUgASgNUgllbmRNaW51dGUSFgoGcmVwZWF0GAYgAygIUgZyZXBlYXQSHwoLc3dpdGNoX2ZsYWcYByABKAhSCnN3aXRjaEZsYWc=');
@$core.Deprecated('Use protocol_disturb_operateDescriptor instead')
const protocol_disturb_operate$json = const {
  '1': 'protocol_disturb_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'num', '3': 2, '4': 1, '5': 13, '10': 'num'},
    const {'1': 'disturb_on_off', '3': 3, '4': 1, '5': 8, '10': 'disturbOnOff'},
    const {'1': 'disturb_item', '3': 4, '4': 3, '5': 11, '6': '.protocol_set_disturb_item', '10': 'disturbItem'},
  ],
};

/// Descriptor for `protocol_disturb_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_disturb_operateDescriptor = $convert.base64Decode('Chhwcm90b2NvbF9kaXN0dXJiX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIQCgNudW0YAiABKA1SA251bRIkCg5kaXN0dXJiX29uX29mZhgDIAEoCFIMZGlzdHVyYk9uT2ZmEj0KDGRpc3R1cmJfaXRlbRgEIAMoCzIaLnByb3RvY29sX3NldF9kaXN0dXJiX2l0ZW1SC2Rpc3R1cmJJdGVt');
@$core.Deprecated('Use protocol_disturb_inquire_replyDescriptor instead')
const protocol_disturb_inquire_reply$json = const {
  '1': 'protocol_disturb_inquire_reply',
  '2': const [
    const {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    const {'1': 'disturb_max', '3': 2, '4': 1, '5': 13, '10': 'disturbMax'},
    const {'1': 'operate', '3': 3, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'num', '3': 4, '4': 1, '5': 13, '10': 'num'},
    const {'1': 'disturb_on_off', '3': 5, '4': 1, '5': 8, '10': 'disturbOnOff'},
    const {'1': 'disturb_item', '3': 6, '4': 3, '5': 11, '6': '.protocol_set_disturb_item', '10': 'disturbItem'},
  ],
};

/// Descriptor for `protocol_disturb_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_disturb_inquire_replyDescriptor = $convert.base64Decode('Ch5wcm90b2NvbF9kaXN0dXJiX2lucXVpcmVfcmVwbHkSHQoKZnVuY190YWJsZRgBIAEoDVIJZnVuY1RhYmxlEh8KC2Rpc3R1cmJfbWF4GAIgASgNUgpkaXN0dXJiTWF4EicKB29wZXJhdGUYAyABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSEAoDbnVtGAQgASgNUgNudW0SJAoOZGlzdHVyYl9vbl9vZmYYBSABKAhSDGRpc3R1cmJPbk9mZhI9CgxkaXN0dXJiX2l0ZW0YBiADKAsyGi5wcm90b2NvbF9zZXRfZGlzdHVyYl9pdGVtUgtkaXN0dXJiSXRlbQ==');
