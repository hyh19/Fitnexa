//
//  Generated code. Do not modify.
//  source: findphone.proto
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

@$core.Deprecated('Use protocol_find_phone_watch_operateDescriptor instead')
const protocol_find_phone_watch_operate$json = {
  '1': 'protocol_find_phone_watch_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'find_watch_switch', '3': 2, '4': 1, '5': 8, '10': 'findWatchSwitch'},
    {'1': 'find_watch_flag', '3': 3, '4': 1, '5': 8, '10': 'findWatchFlag'},
  ],
};

/// Descriptor for `protocol_find_phone_watch_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_find_phone_watch_operateDescriptor = $convert.base64Decode(
    'CiFwcm90b2NvbF9maW5kX3Bob25lX3dhdGNoX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDjINLm'
    '9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIqChFmaW5kX3dhdGNoX3N3aXRjaBgCIAEoCFIPZmluZFdh'
    'dGNoU3dpdGNoEiYKD2ZpbmRfd2F0Y2hfZmxhZxgDIAEoCFINZmluZFdhdGNoRmxhZw==');

@$core.Deprecated('Use protocol_find_phone_watch_inquire_replyDescriptor instead')
const protocol_find_phone_watch_inquire_reply$json = {
  '1': 'protocol_find_phone_watch_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'func_table', '3': 2, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'find_watch_switch', '3': 3, '4': 1, '5': 8, '10': 'findWatchSwitch'},
    {'1': 'find_watch_support', '3': 4, '4': 1, '5': 8, '10': 'findWatchSupport'},
  ],
};

/// Descriptor for `protocol_find_phone_watch_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_find_phone_watch_inquire_replyDescriptor = $convert.base64Decode(
    'Cidwcm90b2NvbF9maW5kX3Bob25lX3dhdGNoX2lucXVpcmVfcmVwbHkSJwoHb3BlcmF0ZRgBIA'
    'EoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIdCgpmdW5jX3RhYmxlGAIgASgNUglmdW5jVGFi'
    'bGUSKgoRZmluZF93YXRjaF9zd2l0Y2gYAyABKAhSD2ZpbmRXYXRjaFN3aXRjaBIsChJmaW5kX3'
    'dhdGNoX3N1cHBvcnQYBCABKAhSEGZpbmRXYXRjaFN1cHBvcnQ=');

