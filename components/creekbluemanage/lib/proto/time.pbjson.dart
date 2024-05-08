///
//  Generated code. Do not modify.
//  source: time.proto
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
@$core.Deprecated('Use protocol_timeDescriptor instead')
const protocol_time$json = const {
  '1': 'protocol_time',
  '2': const [
    const {'1': 'year', '3': 1, '4': 1, '5': 13, '10': 'year'},
    const {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    const {'1': 'day', '3': 3, '4': 1, '5': 13, '10': 'day'},
    const {'1': 'hour', '3': 4, '4': 1, '5': 13, '10': 'hour'},
    const {'1': 'minute', '3': 5, '4': 1, '5': 13, '10': 'minute'},
    const {'1': 'second', '3': 6, '4': 1, '5': 13, '10': 'second'},
    const {'1': 'week', '3': 7, '4': 1, '5': 13, '10': 'week'},
    const {'1': 'utc_time', '3': 8, '4': 1, '5': 13, '10': 'utcTime'},
    const {'1': 'time_zone', '3': 9, '4': 1, '5': 13, '10': 'timeZone'},
  ],
};

/// Descriptor for `protocol_time`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_timeDescriptor = $convert.base64Decode('Cg1wcm90b2NvbF90aW1lEhIKBHllYXIYASABKA1SBHllYXISFAoFbW9udGgYAiABKA1SBW1vbnRoEhAKA2RheRgDIAEoDVIDZGF5EhIKBGhvdXIYBCABKA1SBGhvdXISFgoGbWludXRlGAUgASgNUgZtaW51dGUSFgoGc2Vjb25kGAYgASgNUgZzZWNvbmQSEgoEd2VlaxgHIAEoDVIEd2VlaxIZCgh1dGNfdGltZRgIIAEoDVIHdXRjVGltZRIbCgl0aW1lX3pvbmUYCSABKA1SCHRpbWVab25l');
@$core.Deprecated('Use protocol_device_time_operateDescriptor instead')
const protocol_device_time_operate$json = const {
  '1': 'protocol_device_time_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'time', '3': 2, '4': 1, '5': 11, '6': '.protocol_time', '10': 'time'},
  ],
};

/// Descriptor for `protocol_device_time_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_device_time_operateDescriptor = $convert.base64Decode('Chxwcm90b2NvbF9kZXZpY2VfdGltZV9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSIgoEdGltZRgCIAEoCzIOLnByb3RvY29sX3RpbWVSBHRpbWU=');
@$core.Deprecated('Use protocol_device_time_inquire_replyDescriptor instead')
const protocol_device_time_inquire_reply$json = const {
  '1': 'protocol_device_time_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'time', '3': 2, '4': 1, '5': 11, '6': '.protocol_time', '10': 'time'},
  ],
};

/// Descriptor for `protocol_device_time_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_device_time_inquire_replyDescriptor = $convert.base64Decode('CiJwcm90b2NvbF9kZXZpY2VfdGltZV9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSIgoEdGltZRgCIAEoCzIOLnByb3RvY29sX3RpbWVSBHRpbWU=');
