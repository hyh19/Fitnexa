///
//  Generated code. Do not modify.
//  source: SyncPressure.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use syncPressureDescriptor instead')
const SyncPressure$json = const {
  '1': 'SyncPressure',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    const {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    const {'1': 'data_date', '3': 3, '4': 1, '5': 9, '10': 'dataDate'},
    const {'1': 'offset_last', '3': 4, '4': 1, '5': 13, '10': 'offsetLast'},
    const {'1': 'pressure_max', '3': 5, '4': 1, '5': 13, '10': 'pressureMax'},
    const {'1': 'pressure_min', '3': 6, '4': 1, '5': 13, '10': 'pressureMin'},
    const {'1': 'pressure_average', '3': 7, '4': 1, '5': 13, '10': 'pressureAverage'},
    const {'1': 'ratio_low', '3': 8, '4': 1, '5': 13, '10': 'ratioLow'},
    const {'1': 'ratio_usual', '3': 9, '4': 1, '5': 13, '10': 'ratioUsual'},
    const {'1': 'ratio_high', '3': 10, '4': 1, '5': 13, '10': 'ratioHigh'},
    const {'1': 'ratio_very_high', '3': 11, '4': 1, '5': 13, '10': 'ratioVeryHigh'},
    const {'1': 'datas', '3': 12, '4': 1, '5': 9, '10': 'datas'},
    const {'1': 'id', '3': 13, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `SyncPressure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncPressureDescriptor = $convert.base64Decode('CgxTeW5jUHJlc3N1cmUSFwoHdXNlcl9pZBgBIAEoBFIGdXNlcklkEhUKBm1hY19pZBgCIAEoCVIFbWFjSWQSGwoJZGF0YV9kYXRlGAMgASgJUghkYXRhRGF0ZRIfCgtvZmZzZXRfbGFzdBgEIAEoDVIKb2Zmc2V0TGFzdBIhCgxwcmVzc3VyZV9tYXgYBSABKA1SC3ByZXNzdXJlTWF4EiEKDHByZXNzdXJlX21pbhgGIAEoDVILcHJlc3N1cmVNaW4SKQoQcHJlc3N1cmVfYXZlcmFnZRgHIAEoDVIPcHJlc3N1cmVBdmVyYWdlEhsKCXJhdGlvX2xvdxgIIAEoDVIIcmF0aW9Mb3cSHwoLcmF0aW9fdXN1YWwYCSABKA1SCnJhdGlvVXN1YWwSHQoKcmF0aW9faGlnaBgKIAEoDVIJcmF0aW9IaWdoEiYKD3JhdGlvX3ZlcnlfaGlnaBgLIAEoDVINcmF0aW9WZXJ5SGlnaBIUCgVkYXRhcxgMIAEoCVIFZGF0YXMSDgoCaWQYDSABKARSAmlk');
@$core.Deprecated('Use syncPressureListDescriptor instead')
const SyncPressureList$json = const {
  '1': 'SyncPressureList',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncPressure', '10': 'list'},
  ],
};

/// Descriptor for `SyncPressureList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncPressureListDescriptor = $convert.base64Decode('ChBTeW5jUHJlc3N1cmVMaXN0EiEKBGxpc3QYASADKAsyDS5TeW5jUHJlc3N1cmVSBGxpc3Q=');
