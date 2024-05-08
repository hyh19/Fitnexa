//
//  Generated code. Do not modify.
//  source: SyncSleep.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use syncSleepDescriptor instead')
const SyncSleep$json = {
  '1': 'SyncSleep',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    {'1': 'fall_asleep_time', '3': 3, '4': 1, '5': 9, '10': 'fallAsleepTime'},
    {'1': 'get_up_time', '3': 4, '4': 1, '5': 9, '10': 'getUpTime'},
    {'1': 'total_sleep_duration', '3': 5, '4': 1, '5': 13, '10': 'totalSleepDuration'},
    {'1': 'total_wake_duration', '3': 6, '4': 1, '5': 13, '10': 'totalWakeDuration'},
    {'1': 'total_sleep_light_duration', '3': 7, '4': 1, '5': 13, '10': 'totalSleepLightDuration'},
    {'1': 'total_sleep_deep_duration', '3': 8, '4': 1, '5': 13, '10': 'totalSleepDeepDuration'},
    {'1': 'total_rem_duration', '3': 9, '4': 1, '5': 13, '10': 'totalRemDuration'},
    {'1': 'wake_count', '3': 10, '4': 1, '5': 13, '10': 'wakeCount'},
    {'1': 'sleep_light_count', '3': 11, '4': 1, '5': 13, '10': 'sleepLightCount'},
    {'1': 'sleep_deep_count', '3': 12, '4': 1, '5': 13, '10': 'sleepDeepCount'},
    {'1': 'rem_count', '3': 13, '4': 1, '5': 13, '10': 'remCount'},
    {'1': 'sleep_score', '3': 14, '4': 1, '5': 13, '10': 'sleepScore'},
    {'1': 'datas', '3': 15, '4': 1, '5': 9, '10': 'datas'},
    {'1': 'id', '3': 16, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `SyncSleep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSleepDescriptor = $convert.base64Decode(
    'CglTeW5jU2xlZXASFwoHdXNlcl9pZBgBIAEoBFIGdXNlcklkEhUKBm1hY19pZBgCIAEoCVIFbW'
    'FjSWQSKAoQZmFsbF9hc2xlZXBfdGltZRgDIAEoCVIOZmFsbEFzbGVlcFRpbWUSHgoLZ2V0X3Vw'
    'X3RpbWUYBCABKAlSCWdldFVwVGltZRIwChR0b3RhbF9zbGVlcF9kdXJhdGlvbhgFIAEoDVISdG'
    '90YWxTbGVlcER1cmF0aW9uEi4KE3RvdGFsX3dha2VfZHVyYXRpb24YBiABKA1SEXRvdGFsV2Fr'
    'ZUR1cmF0aW9uEjsKGnRvdGFsX3NsZWVwX2xpZ2h0X2R1cmF0aW9uGAcgASgNUhd0b3RhbFNsZW'
    'VwTGlnaHREdXJhdGlvbhI5Chl0b3RhbF9zbGVlcF9kZWVwX2R1cmF0aW9uGAggASgNUhZ0b3Rh'
    'bFNsZWVwRGVlcER1cmF0aW9uEiwKEnRvdGFsX3JlbV9kdXJhdGlvbhgJIAEoDVIQdG90YWxSZW'
    '1EdXJhdGlvbhIdCgp3YWtlX2NvdW50GAogASgNUgl3YWtlQ291bnQSKgoRc2xlZXBfbGlnaHRf'
    'Y291bnQYCyABKA1SD3NsZWVwTGlnaHRDb3VudBIoChBzbGVlcF9kZWVwX2NvdW50GAwgASgNUg'
    '5zbGVlcERlZXBDb3VudBIbCglyZW1fY291bnQYDSABKA1SCHJlbUNvdW50Eh8KC3NsZWVwX3Nj'
    'b3JlGA4gASgNUgpzbGVlcFNjb3JlEhQKBWRhdGFzGA8gASgJUgVkYXRhcxIOCgJpZBgQIAEoBF'
    'ICaWQ=');

@$core.Deprecated('Use syncSleepListDescriptor instead')
const SyncSleepList$json = {
  '1': 'SyncSleepList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncSleep', '10': 'list'},
  ],
};

/// Descriptor for `SyncSleepList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSleepListDescriptor = $convert.base64Decode(
    'Cg1TeW5jU2xlZXBMaXN0Eh4KBGxpc3QYASADKAsyCi5TeW5jU2xlZXBSBGxpc3Q=');

@$core.Deprecated('Use syncSleepGroupDescriptor instead')
const SyncSleepGroup$json = {
  '1': 'SyncSleepGroup',
  '2': [
    {'1': 'groupDate', '3': 1, '4': 1, '5': 9, '10': 'groupDate'},
    {'1': 'list', '3': 2, '4': 3, '5': 11, '6': '.SyncSleep', '10': 'list'},
  ],
};

/// Descriptor for `SyncSleepGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSleepGroupDescriptor = $convert.base64Decode(
    'Cg5TeW5jU2xlZXBHcm91cBIcCglncm91cERhdGUYASABKAlSCWdyb3VwRGF0ZRIeCgRsaXN0GA'
    'IgAygLMgouU3luY1NsZWVwUgRsaXN0');

@$core.Deprecated('Use syncSleepGroupProtoDescriptor instead')
const SyncSleepGroupProto$json = {
  '1': 'SyncSleepGroupProto',
  '2': [
    {'1': 'sleepGroup', '3': 1, '4': 3, '5': 11, '6': '.SyncSleepGroup', '10': 'sleepGroup'},
  ],
};

/// Descriptor for `SyncSleepGroupProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSleepGroupProtoDescriptor = $convert.base64Decode(
    'ChNTeW5jU2xlZXBHcm91cFByb3RvEi8KCnNsZWVwR3JvdXAYASADKAsyDy5TeW5jU2xlZXBHcm'
    '91cFIKc2xlZXBHcm91cA==');

