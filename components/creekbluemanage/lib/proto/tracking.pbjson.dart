//
//  Generated code. Do not modify.
//  source: tracking.proto
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

@$core.Deprecated('Use protocol_event_tracking_operateDescriptor instead')
const protocol_event_tracking_operate$json = {
  '1': 'protocol_event_tracking_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
  ],
};

/// Descriptor for `protocol_event_tracking_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_event_tracking_operateDescriptor = $convert.base64Decode(
    'Ch9wcm90b2NvbF9ldmVudF90cmFja2luZ19vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcG'
    'VyYXRlX3R5cGVSB29wZXJhdGU=');

@$core.Deprecated('Use protocol_event_tracking_inquire_replyDescriptor instead')
const protocol_event_tracking_inquire_reply$json = {
  '1': 'protocol_event_tracking_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'phone_func', '3': 2, '4': 3, '5': 13, '10': 'phoneFunc'},
    {'1': 'click_dial', '3': 3, '4': 3, '5': 13, '10': 'clickDial'},
    {'1': 'click_answer', '3': 4, '4': 3, '5': 13, '10': 'clickAnswer'},
  ],
};

/// Descriptor for `protocol_event_tracking_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_event_tracking_inquire_replyDescriptor = $convert.base64Decode(
    'CiVwcm90b2NvbF9ldmVudF90cmFja2luZ19pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA'
    '4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSHQoKcGhvbmVfZnVuYxgCIAMoDVIJcGhvbmVGdW5j'
    'Eh0KCmNsaWNrX2RpYWwYAyADKA1SCWNsaWNrRGlhbBIhCgxjbGlja19hbnN3ZXIYBCADKA1SC2'
    'NsaWNrQW5zd2Vy');

