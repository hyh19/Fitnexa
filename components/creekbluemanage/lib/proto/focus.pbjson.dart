//
//  Generated code. Do not modify.
//  source: focus.proto
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

@$core.Deprecated('Use protocol_focus_sleep_modeDescriptor instead')
const protocol_focus_sleep_mode$json = {
  '1': 'protocol_focus_sleep_mode',
  '2': [
    {'1': 'switch_flag', '3': 1, '4': 1, '5': 8, '10': 'switchFlag'},
    {'1': 'start_hour', '3': 2, '4': 1, '5': 13, '10': 'startHour'},
    {'1': 'start_minute', '3': 3, '4': 1, '5': 13, '10': 'startMinute'},
    {'1': 'end_hour', '3': 4, '4': 1, '5': 13, '10': 'endHour'},
    {'1': 'end_minute', '3': 5, '4': 1, '5': 13, '10': 'endMinute'},
  ],
};

/// Descriptor for `protocol_focus_sleep_mode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_focus_sleep_modeDescriptor = $convert.base64Decode(
    'Chlwcm90b2NvbF9mb2N1c19zbGVlcF9tb2RlEh8KC3N3aXRjaF9mbGFnGAEgASgIUgpzd2l0Y2'
    'hGbGFnEh0KCnN0YXJ0X2hvdXIYAiABKA1SCXN0YXJ0SG91chIhCgxzdGFydF9taW51dGUYAyAB'
    'KA1SC3N0YXJ0TWludXRlEhkKCGVuZF9ob3VyGAQgASgNUgdlbmRIb3VyEh0KCmVuZF9taW51dG'
    'UYBSABKA1SCWVuZE1pbnV0ZQ==');

@$core.Deprecated('Use protocol_focus_mode_operateDescriptor instead')
const protocol_focus_mode_operate$json = {
  '1': 'protocol_focus_mode_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'sleep_mode', '3': 2, '4': 1, '5': 11, '6': '.protocol_focus_sleep_mode', '10': 'sleepMode'},
  ],
};

/// Descriptor for `protocol_focus_mode_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_focus_mode_operateDescriptor = $convert.base64Decode(
    'Chtwcm90b2NvbF9mb2N1c19tb2RlX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdG'
    'VfdHlwZVIHb3BlcmF0ZRI5CgpzbGVlcF9tb2RlGAIgASgLMhoucHJvdG9jb2xfZm9jdXNfc2xl'
    'ZXBfbW9kZVIJc2xlZXBNb2Rl');

@$core.Deprecated('Use protocol_focus_mode_inquire_replyDescriptor instead')
const protocol_focus_mode_inquire_reply$json = {
  '1': 'protocol_focus_mode_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'func_table', '3': 2, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'sleep_mode', '3': 3, '4': 1, '5': 11, '6': '.protocol_focus_sleep_mode', '10': 'sleepMode'},
  ],
};

/// Descriptor for `protocol_focus_mode_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_focus_mode_inquire_replyDescriptor = $convert.base64Decode(
    'CiFwcm90b2NvbF9mb2N1c19tb2RlX2lucXVpcmVfcmVwbHkSJwoHb3BlcmF0ZRgBIAEoDjINLm'
    '9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIdCgpmdW5jX3RhYmxlGAIgASgNUglmdW5jVGFibGUSOQoK'
    'c2xlZXBfbW9kZRgDIAEoCzIaLnByb3RvY29sX2ZvY3VzX3NsZWVwX21vZGVSCXNsZWVwTW9kZQ'
    '==');

