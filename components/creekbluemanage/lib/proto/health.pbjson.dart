///
//  Generated code. Do not modify.
//  source: health.proto
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
@$core.Deprecated('Use protocol_health_get_data_size_itemDescriptor instead')
const protocol_health_get_data_size_item$json = const {
  '1': 'protocol_health_get_data_size_item',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.sync_type', '10': 'type'},
    const {'1': 'data_offset', '3': 2, '4': 1, '5': 13, '10': 'dataOffset'},
  ],
};

/// Descriptor for `protocol_health_get_data_size_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_get_data_size_itemDescriptor = $convert.base64Decode('CiJwcm90b2NvbF9oZWFsdGhfZ2V0X2RhdGFfc2l6ZV9pdGVtEh4KBHR5cGUYASABKA4yCi5zeW5jX3R5cGVSBHR5cGUSHwoLZGF0YV9vZmZzZXQYAiABKA1SCmRhdGFPZmZzZXQ=');
@$core.Deprecated('Use protocol_health_get_data_size_operateDescriptor instead')
const protocol_health_get_data_size_operate$json = const {
  '1': 'protocol_health_get_data_size_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'item', '3': 2, '4': 3, '5': 11, '6': '.protocol_health_get_data_size_item', '10': 'item'},
  ],
};

/// Descriptor for `protocol_health_get_data_size_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_get_data_size_operateDescriptor = $convert.base64Decode('CiVwcm90b2NvbF9oZWFsdGhfZ2V0X2RhdGFfc2l6ZV9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSNwoEaXRlbRgCIAMoCzIjLnByb3RvY29sX2hlYWx0aF9nZXRfZGF0YV9zaXplX2l0ZW1SBGl0ZW0=');
@$core.Deprecated('Use protocol_health_get_data_size_set_replyDescriptor instead')
const protocol_health_get_data_size_set_reply$json = const {
  '1': 'protocol_health_get_data_size_set_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'total_size', '3': 2, '4': 1, '5': 13, '10': 'totalSize'},
    const {'1': 'error_code', '3': 3, '4': 1, '5': 13, '10': 'errorCode'},
  ],
};

/// Descriptor for `protocol_health_get_data_size_set_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_get_data_size_set_replyDescriptor = $convert.base64Decode('Cidwcm90b2NvbF9oZWFsdGhfZ2V0X2RhdGFfc2l6ZV9zZXRfcmVwbHkSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIdCgp0b3RhbF9zaXplGAIgASgNUgl0b3RhbFNpemUSHQoKZXJyb3JfY29kZRgDIAEoDVIJZXJyb3JDb2Rl');
@$core.Deprecated('Use protocol_health_get_data_size_inquire_replyDescriptor instead')
const protocol_health_get_data_size_inquire_reply$json = const {
  '1': 'protocol_health_get_data_size_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'hear_rate_support', '3': 2, '4': 1, '5': 8, '10': 'hearRateSupport'},
    const {'1': 'stress_support', '3': 3, '4': 1, '5': 8, '10': 'stressSupport'},
    const {'1': 'spo2_support', '3': 4, '4': 1, '5': 8, '10': 'spo2Support'},
    const {'1': 'sleep_support', '3': 5, '4': 1, '5': 8, '10': 'sleepSupport'},
    const {'1': 'exercise_support', '3': 6, '4': 1, '5': 8, '10': 'exerciseSupport'},
    const {'1': 'activity_support', '3': 7, '4': 1, '5': 8, '10': 'activitySupport'},
    const {'1': 'swim_support', '3': 8, '4': 1, '5': 8, '10': 'swimSupport'},
    const {'1': 'hrv_support', '3': 9, '4': 1, '5': 8, '10': 'hrvSupport'},
    const {'1': 'noise_support', '3': 10, '4': 1, '5': 8, '10': 'noiseSupport'},
    const {'1': 'body_energy_support', '3': 11, '4': 1, '5': 8, '10': 'bodyEnergySupport'},
    const {'1': 'respiratory_rate_support', '3': 12, '4': 1, '5': 8, '10': 'respiratoryRateSupport'},
    const {'1': 'skin_temperature_support', '3': 13, '4': 1, '5': 8, '10': 'skinTemperatureSupport'},
  ],
};

/// Descriptor for `protocol_health_get_data_size_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_get_data_size_inquire_replyDescriptor = $convert.base64Decode('Citwcm90b2NvbF9oZWFsdGhfZ2V0X2RhdGFfc2l6ZV9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSKgoRaGVhcl9yYXRlX3N1cHBvcnQYAiABKAhSD2hlYXJSYXRlU3VwcG9ydBIlCg5zdHJlc3Nfc3VwcG9ydBgDIAEoCFINc3RyZXNzU3VwcG9ydBIhCgxzcG8yX3N1cHBvcnQYBCABKAhSC3NwbzJTdXBwb3J0EiMKDXNsZWVwX3N1cHBvcnQYBSABKAhSDHNsZWVwU3VwcG9ydBIpChBleGVyY2lzZV9zdXBwb3J0GAYgASgIUg9leGVyY2lzZVN1cHBvcnQSKQoQYWN0aXZpdHlfc3VwcG9ydBgHIAEoCFIPYWN0aXZpdHlTdXBwb3J0EiEKDHN3aW1fc3VwcG9ydBgIIAEoCFILc3dpbVN1cHBvcnQSHwoLaHJ2X3N1cHBvcnQYCSABKAhSCmhydlN1cHBvcnQSIwoNbm9pc2Vfc3VwcG9ydBgKIAEoCFIMbm9pc2VTdXBwb3J0Ei4KE2JvZHlfZW5lcmd5X3N1cHBvcnQYCyABKAhSEWJvZHlFbmVyZ3lTdXBwb3J0EjgKGHJlc3BpcmF0b3J5X3JhdGVfc3VwcG9ydBgMIAEoCFIWcmVzcGlyYXRvcnlSYXRlU3VwcG9ydBI4Chhza2luX3RlbXBlcmF0dXJlX3N1cHBvcnQYDSABKAhSFnNraW5UZW1wZXJhdHVyZVN1cHBvcnQ=');
