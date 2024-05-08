///
//  Generated code. Do not modify.
//  source: wordtime.proto
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
@$core.Deprecated('Use protocol_world_time_itemDescriptor instead')
const protocol_world_time_item$json = const {
  '1': 'protocol_world_time_item',
  '2': const [
    const {'1': 'offest_min', '3': 1, '4': 1, '5': 5, '10': 'offestMin'},
    const {'1': 'city_name', '3': 2, '4': 1, '5': 12, '10': 'cityName'},
  ],
};

/// Descriptor for `protocol_world_time_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_world_time_itemDescriptor = $convert.base64Decode('Chhwcm90b2NvbF93b3JsZF90aW1lX2l0ZW0SHQoKb2ZmZXN0X21pbhgBIAEoBVIJb2ZmZXN0TWluEhsKCWNpdHlfbmFtZRgCIAEoDFIIY2l0eU5hbWU=');
@$core.Deprecated('Use protocol_world_time_operateDescriptor instead')
const protocol_world_time_operate$json = const {
  '1': 'protocol_world_time_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'world_time_item', '3': 2, '4': 3, '5': 11, '6': '.protocol_world_time_item', '10': 'worldTimeItem'},
  ],
};

/// Descriptor for `protocol_world_time_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_world_time_operateDescriptor = $convert.base64Decode('Chtwcm90b2NvbF93b3JsZF90aW1lX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRJBCg93b3JsZF90aW1lX2l0ZW0YAiADKAsyGS5wcm90b2NvbF93b3JsZF90aW1lX2l0ZW1SDXdvcmxkVGltZUl0ZW0=');
@$core.Deprecated('Use protocol_world_time_inquire_replyDescriptor instead')
const protocol_world_time_inquire_reply$json = const {
  '1': 'protocol_world_time_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'word_time_support_max', '3': 2, '4': 1, '5': 13, '10': 'wordTimeSupportMax'},
    const {'1': 'world_time_item', '3': 3, '4': 3, '5': 11, '6': '.protocol_world_time_item', '10': 'worldTimeItem'},
  ],
};

/// Descriptor for `protocol_world_time_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_world_time_inquire_replyDescriptor = $convert.base64Decode('CiFwcm90b2NvbF93b3JsZF90aW1lX2lucXVpcmVfcmVwbHkSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIxChV3b3JkX3RpbWVfc3VwcG9ydF9tYXgYAiABKA1SEndvcmRUaW1lU3VwcG9ydE1heBJBCg93b3JsZF90aW1lX2l0ZW0YAyADKAsyGS5wcm90b2NvbF93b3JsZF90aW1lX2l0ZW1SDXdvcmxkVGltZUl0ZW0=');
