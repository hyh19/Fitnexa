//
//  Generated code. Do not modify.
//  source: SyncHeartRateVariability.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use syncHeartRateVariabilityDescriptor instead')
const SyncHeartRateVariability$json = {
  '1': 'SyncHeartRateVariability',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    {'1': 'data_date', '3': 3, '4': 1, '5': 9, '10': 'dataDate'},
    {'1': 'offset_last', '3': 4, '4': 1, '5': 13, '10': 'offsetLast'},
    {'1': 'hrv_max', '3': 5, '4': 1, '5': 13, '10': 'hrvMax'},
    {'1': 'hrv_min', '3': 6, '4': 1, '5': 13, '10': 'hrvMin'},
    {'1': 'hrv_average', '3': 7, '4': 1, '5': 13, '10': 'hrvAverage'},
    {'1': 'sleep_max', '3': 8, '4': 1, '5': 13, '10': 'sleepMax'},
    {'1': 'sleep_min', '3': 9, '4': 1, '5': 13, '10': 'sleepMin'},
    {'1': 'datas', '3': 10, '4': 1, '5': 9, '10': 'datas'},
    {'1': 'id', '3': 11, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `SyncHeartRateVariability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncHeartRateVariabilityDescriptor = $convert.base64Decode(
    'ChhTeW5jSGVhcnRSYXRlVmFyaWFiaWxpdHkSFwoHdXNlcl9pZBgBIAEoBFIGdXNlcklkEhUKBm'
    '1hY19pZBgCIAEoCVIFbWFjSWQSGwoJZGF0YV9kYXRlGAMgASgJUghkYXRhRGF0ZRIfCgtvZmZz'
    'ZXRfbGFzdBgEIAEoDVIKb2Zmc2V0TGFzdBIXCgdocnZfbWF4GAUgASgNUgZocnZNYXgSFwoHaH'
    'J2X21pbhgGIAEoDVIGaHJ2TWluEh8KC2hydl9hdmVyYWdlGAcgASgNUgpocnZBdmVyYWdlEhsK'
    'CXNsZWVwX21heBgIIAEoDVIIc2xlZXBNYXgSGwoJc2xlZXBfbWluGAkgASgNUghzbGVlcE1pbh'
    'IUCgVkYXRhcxgKIAEoCVIFZGF0YXMSDgoCaWQYCyABKARSAmlk');

@$core.Deprecated('Use syncHeartRateVariabilityListDescriptor instead')
const SyncHeartRateVariabilityList$json = {
  '1': 'SyncHeartRateVariabilityList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncHeartRateVariability', '10': 'list'},
  ],
};

/// Descriptor for `SyncHeartRateVariabilityList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncHeartRateVariabilityListDescriptor = $convert.base64Decode(
    'ChxTeW5jSGVhcnRSYXRlVmFyaWFiaWxpdHlMaXN0Ei0KBGxpc3QYASADKAsyGS5TeW5jSGVhcn'
    'RSYXRlVmFyaWFiaWxpdHlSBGxpc3Q=');

