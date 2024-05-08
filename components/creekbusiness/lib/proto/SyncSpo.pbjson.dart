///
//  Generated code. Do not modify.
//  source: SyncSpo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use syncSpoDescriptor instead')
const SyncSpo$json = const {
  '1': 'SyncSpo',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    const {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    const {'1': 'data_date', '3': 3, '4': 1, '5': 9, '10': 'dataDate'},
    const {'1': 'offset_last', '3': 4, '4': 1, '5': 13, '10': 'offsetLast'},
    const {'1': 'spo_max', '3': 5, '4': 1, '5': 13, '10': 'spoMax'},
    const {'1': 'spo_min', '3': 6, '4': 1, '5': 13, '10': 'spoMin'},
    const {'1': 'spo_average', '3': 7, '4': 1, '5': 13, '10': 'spoAverage'},
    const {'1': 'datas', '3': 8, '4': 1, '5': 9, '10': 'datas'},
    const {'1': 'id', '3': 9, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `SyncSpo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSpoDescriptor = $convert.base64Decode('CgdTeW5jU3BvEhcKB3VzZXJfaWQYASABKARSBnVzZXJJZBIVCgZtYWNfaWQYAiABKAlSBW1hY0lkEhsKCWRhdGFfZGF0ZRgDIAEoCVIIZGF0YURhdGUSHwoLb2Zmc2V0X2xhc3QYBCABKA1SCm9mZnNldExhc3QSFwoHc3BvX21heBgFIAEoDVIGc3BvTWF4EhcKB3Nwb19taW4YBiABKA1SBnNwb01pbhIfCgtzcG9fYXZlcmFnZRgHIAEoDVIKc3BvQXZlcmFnZRIUCgVkYXRhcxgIIAEoCVIFZGF0YXMSDgoCaWQYCSABKARSAmlk');
@$core.Deprecated('Use syncSpoListDescriptor instead')
const SyncSpoList$json = const {
  '1': 'SyncSpoList',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncSpo', '10': 'list'},
  ],
};

/// Descriptor for `SyncSpoList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSpoListDescriptor = $convert.base64Decode('CgtTeW5jU3BvTGlzdBIcCgRsaXN0GAEgAygLMgguU3luY1Nwb1IEbGlzdA==');
