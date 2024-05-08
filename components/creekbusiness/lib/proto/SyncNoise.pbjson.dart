///
//  Generated code. Do not modify.
//  source: SyncNoise.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use syncNoiseDescriptor instead')
const SyncNoise$json = const {
  '1': 'SyncNoise',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    const {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    const {'1': 'data_date', '3': 3, '4': 1, '5': 9, '10': 'dataDate'},
    const {'1': 'offset_last', '3': 4, '4': 1, '5': 13, '10': 'offsetLast'},
    const {'1': 'noise_max', '3': 5, '4': 1, '5': 13, '10': 'noiseMax'},
    const {'1': 'noise_min', '3': 6, '4': 1, '5': 13, '10': 'noiseMin'},
    const {'1': 'noise_average', '3': 7, '4': 1, '5': 13, '10': 'noiseAverage'},
    const {'1': 'datas', '3': 8, '4': 1, '5': 9, '10': 'datas'},
    const {'1': 'id', '3': 9, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `SyncNoise`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncNoiseDescriptor = $convert.base64Decode('CglTeW5jTm9pc2USFwoHdXNlcl9pZBgBIAEoBFIGdXNlcklkEhUKBm1hY19pZBgCIAEoCVIFbWFjSWQSGwoJZGF0YV9kYXRlGAMgASgJUghkYXRhRGF0ZRIfCgtvZmZzZXRfbGFzdBgEIAEoDVIKb2Zmc2V0TGFzdBIbCglub2lzZV9tYXgYBSABKA1SCG5vaXNlTWF4EhsKCW5vaXNlX21pbhgGIAEoDVIIbm9pc2VNaW4SIwoNbm9pc2VfYXZlcmFnZRgHIAEoDVIMbm9pc2VBdmVyYWdlEhQKBWRhdGFzGAggASgJUgVkYXRhcxIOCgJpZBgJIAEoBFICaWQ=');
@$core.Deprecated('Use syncNoiseListDescriptor instead')
const SyncNoiseList$json = const {
  '1': 'SyncNoiseList',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncNoise', '10': 'list'},
  ],
};

/// Descriptor for `SyncNoiseList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncNoiseListDescriptor = $convert.base64Decode('Cg1TeW5jTm9pc2VMaXN0Eh4KBGxpc3QYASADKAsyCi5TeW5jTm9pc2VSBGxpc3Q=');
