///
//  Generated code. Do not modify.
//  source: hotKey.proto
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
@$core.Deprecated('Use long_2s_press_typeDescriptor instead')
const long_2s_press_type$json = const {
  '1': 'long_2s_press_type',
  '2': const [
    const {'1': 'PRESS_TYPE_NULL', '2': 0},
    const {'1': 'PRESS_TYPE_SOS', '2': 1},
    const {'1': 'PRESS_TYPE_WORKOUT', '2': 2},
  ],
};

/// Descriptor for `long_2s_press_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List long_2s_press_typeDescriptor = $convert.base64Decode('ChJsb25nXzJzX3ByZXNzX3R5cGUSEwoPUFJFU1NfVFlQRV9OVUxMEAASEgoOUFJFU1NfVFlQRV9TT1MQARIWChJQUkVTU19UWVBFX1dPUktPVVQQAg==');
@$core.Deprecated('Use protocol_button_crown_operateDescriptor instead')
const protocol_button_crown_operate$json = const {
  '1': 'protocol_button_crown_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'long_type', '3': 2, '4': 1, '5': 14, '6': '.long_2s_press_type', '10': 'longType'},
    const {'1': 'pause_workout', '3': 3, '4': 1, '5': 8, '10': 'pauseWorkout'},
  ],
};

/// Descriptor for `protocol_button_crown_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_button_crown_operateDescriptor = $convert.base64Decode('Ch1wcm90b2NvbF9idXR0b25fY3Jvd25fb3BlcmF0ZRInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEjAKCWxvbmdfdHlwZRgCIAEoDjITLmxvbmdfMnNfcHJlc3NfdHlwZVIIbG9uZ1R5cGUSIwoNcGF1c2Vfd29ya291dBgDIAEoCFIMcGF1c2VXb3Jrb3V0');
@$core.Deprecated('Use protocol_button_crown_inquire_replyDescriptor instead')
const protocol_button_crown_inquire_reply$json = const {
  '1': 'protocol_button_crown_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'long_type', '3': 2, '4': 1, '5': 14, '6': '.long_2s_press_type', '10': 'longType'},
    const {'1': 'pause_workout', '3': 3, '4': 1, '5': 8, '10': 'pauseWorkout'},
  ],
};

/// Descriptor for `protocol_button_crown_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_button_crown_inquire_replyDescriptor = $convert.base64Decode('CiNwcm90b2NvbF9idXR0b25fY3Jvd25faW5xdWlyZV9yZXBseRInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEjAKCWxvbmdfdHlwZRgCIAEoDjITLmxvbmdfMnNfcHJlc3NfdHlwZVIIbG9uZ1R5cGUSIwoNcGF1c2Vfd29ya291dBgDIAEoCFIMcGF1c2VXb3Jrb3V0');
