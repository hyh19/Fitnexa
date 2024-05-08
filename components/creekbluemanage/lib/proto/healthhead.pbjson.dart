///
//  Generated code. Do not modify.
//  source: healthhead.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sync_typeDescriptor instead')
const sync_type$json = const {
  '1': 'sync_type',
  '2': const [
    const {'1': 'SYNC_HEART_RATE', '2': 0},
    const {'1': 'SYNC_STRESS', '2': 1},
    const {'1': 'SYNC_SPO2', '2': 2},
    const {'1': 'SYNC_SLEEP', '2': 3},
    const {'1': 'SYNC_WORKOUT', '2': 4},
    const {'1': 'SYNC_ACTIVITY', '2': 5},
    const {'1': 'SYNC_SWIMMING', '2': 6},
    const {'1': 'SYNC_HRV', '2': 7},
    const {'1': 'SYNC_NOISE', '2': 8},
    const {'1': 'SYNC_BODY_ENERGY', '2': 9},
    const {'1': 'SYNC_RESPIRATORY_RATE', '2': 10},
    const {'1': 'SYNC_SKIN_TEMPERATURE', '2': 11},
  ],
};

/// Descriptor for `sync_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sync_typeDescriptor = $convert.base64Decode('CglzeW5jX3R5cGUSEwoPU1lOQ19IRUFSVF9SQVRFEAASDwoLU1lOQ19TVFJFU1MQARINCglTWU5DX1NQTzIQAhIOCgpTWU5DX1NMRUVQEAMSEAoMU1lOQ19XT1JLT1VUEAQSEQoNU1lOQ19BQ1RJVklUWRAFEhEKDVNZTkNfU1dJTU1JTkcQBhIMCghTWU5DX0hSVhAHEg4KClNZTkNfTk9JU0UQCBIUChBTWU5DX0JPRFlfRU5FUkdZEAkSGQoVU1lOQ19SRVNQSVJBVE9SWV9SQVRFEAoSGQoVU1lOQ19TS0lOX1RFTVBFUkFUVVJFEAs=');
@$core.Deprecated('Use sync_operateDescriptor instead')
const sync_operate$json = const {
  '1': 'sync_operate',
  '2': const [
    const {'1': 'START_SYNC', '2': 0},
    const {'1': 'END_SYNC', '2': 1},
  ],
};

/// Descriptor for `sync_operate`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sync_operateDescriptor = $convert.base64Decode('CgxzeW5jX29wZXJhdGUSDgoKU1RBUlRfU1lOQxAAEgwKCEVORF9TWU5DEAE=');
@$core.Deprecated('Use protocol_health_sync_headDescriptor instead')
const protocol_health_sync_head$json = const {
  '1': 'protocol_health_sync_head',
  '2': const [
    const {'1': 'sync_operate', '3': 1, '4': 1, '5': 14, '6': '.sync_operate', '10': 'syncOperate'},
    const {'1': 'sync_type', '3': 2, '4': 1, '5': 14, '6': '.sync_type', '10': 'syncType'},
    const {'1': 'data_offset', '3': 3, '4': 1, '5': 13, '10': 'dataOffset'},
  ],
};

/// Descriptor for `protocol_health_sync_head`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_sync_headDescriptor = $convert.base64Decode('Chlwcm90b2NvbF9oZWFsdGhfc3luY19oZWFkEjAKDHN5bmNfb3BlcmF0ZRgBIAEoDjINLnN5bmNfb3BlcmF0ZVILc3luY09wZXJhdGUSJwoJc3luY190eXBlGAIgASgOMgouc3luY190eXBlUghzeW5jVHlwZRIfCgtkYXRhX29mZnNldBgDIAEoDVIKZGF0YU9mZnNldA==');
@$core.Deprecated('Use protocol_health_sync_head_replyDescriptor instead')
const protocol_health_sync_head_reply$json = const {
  '1': 'protocol_health_sync_head_reply',
  '2': const [
    const {'1': 'sync_operate', '3': 1, '4': 1, '5': 14, '6': '.sync_operate', '10': 'syncOperate'},
    const {'1': 'sync_type', '3': 2, '4': 1, '5': 14, '6': '.sync_type', '10': 'syncType'},
    const {'1': 'data_offsetr', '3': 3, '4': 1, '5': 13, '10': 'dataOffsetr'},
    const {'1': 'data_size', '3': 4, '4': 1, '5': 13, '10': 'dataSize'},
    const {'1': 'have_next_data', '3': 5, '4': 1, '5': 8, '10': 'haveNextData'},
  ],
};

/// Descriptor for `protocol_health_sync_head_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_sync_head_replyDescriptor = $convert.base64Decode('Ch9wcm90b2NvbF9oZWFsdGhfc3luY19oZWFkX3JlcGx5EjAKDHN5bmNfb3BlcmF0ZRgBIAEoDjINLnN5bmNfb3BlcmF0ZVILc3luY09wZXJhdGUSJwoJc3luY190eXBlGAIgASgOMgouc3luY190eXBlUghzeW5jVHlwZRIhCgxkYXRhX29mZnNldHIYAyABKA1SC2RhdGFPZmZzZXRyEhsKCWRhdGFfc2l6ZRgEIAEoDVIIZGF0YVNpemUSJAoOaGF2ZV9uZXh0X2RhdGEYBSABKAhSDGhhdmVOZXh0RGF0YQ==');
