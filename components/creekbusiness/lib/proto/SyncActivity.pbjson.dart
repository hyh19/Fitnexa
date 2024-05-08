//
//  Generated code. Do not modify.
//  source: SyncActivity.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use syncActivityDescriptor instead')
const SyncActivity$json = {
  '1': 'SyncActivity',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    {'1': 'data_date', '3': 3, '4': 1, '5': 9, '10': 'dataDate'},
    {'1': 'total_step_count', '3': 4, '4': 1, '5': 13, '10': 'totalStepCount'},
    {'1': 'total_exercise_duration', '3': 5, '4': 1, '5': 13, '10': 'totalExerciseDuration'},
    {'1': 'total_activity_calorie', '3': 6, '4': 1, '5': 13, '10': 'totalActivityCalorie'},
    {'1': 'total_rest_calorie', '3': 7, '4': 1, '5': 13, '10': 'totalRestCalorie'},
    {'1': 'total_distance', '3': 8, '4': 1, '5': 13, '10': 'totalDistance'},
    {'1': 'total_stand_duration', '3': 9, '4': 1, '5': 13, '10': 'totalStandDuration'},
    {'1': 'activity_item_count', '3': 10, '4': 1, '5': 13, '10': 'activityItemCount'},
    {'1': 'datas', '3': 11, '4': 1, '5': 9, '10': 'datas'},
    {'1': 'id', '3': 12, '4': 1, '5': 4, '10': 'id'},
    {'1': 'is_support_altitude_floors', '3': 13, '4': 1, '5': 13, '10': 'isSupportAltitudeFloors'},
    {'1': 'altitude_floors', '3': 14, '4': 1, '5': 13, '10': 'altitudeFloors'},
  ],
};

/// Descriptor for `SyncActivity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncActivityDescriptor = $convert.base64Decode(
    'CgxTeW5jQWN0aXZpdHkSFwoHdXNlcl9pZBgBIAEoBFIGdXNlcklkEhUKBm1hY19pZBgCIAEoCV'
    'IFbWFjSWQSGwoJZGF0YV9kYXRlGAMgASgJUghkYXRhRGF0ZRIoChB0b3RhbF9zdGVwX2NvdW50'
    'GAQgASgNUg50b3RhbFN0ZXBDb3VudBI2Chd0b3RhbF9leGVyY2lzZV9kdXJhdGlvbhgFIAEoDV'
    'IVdG90YWxFeGVyY2lzZUR1cmF0aW9uEjQKFnRvdGFsX2FjdGl2aXR5X2NhbG9yaWUYBiABKA1S'
    'FHRvdGFsQWN0aXZpdHlDYWxvcmllEiwKEnRvdGFsX3Jlc3RfY2Fsb3JpZRgHIAEoDVIQdG90YW'
    'xSZXN0Q2Fsb3JpZRIlCg50b3RhbF9kaXN0YW5jZRgIIAEoDVINdG90YWxEaXN0YW5jZRIwChR0'
    'b3RhbF9zdGFuZF9kdXJhdGlvbhgJIAEoDVISdG90YWxTdGFuZER1cmF0aW9uEi4KE2FjdGl2aX'
    'R5X2l0ZW1fY291bnQYCiABKA1SEWFjdGl2aXR5SXRlbUNvdW50EhQKBWRhdGFzGAsgASgJUgVk'
    'YXRhcxIOCgJpZBgMIAEoBFICaWQSOwoaaXNfc3VwcG9ydF9hbHRpdHVkZV9mbG9vcnMYDSABKA'
    '1SF2lzU3VwcG9ydEFsdGl0dWRlRmxvb3JzEicKD2FsdGl0dWRlX2Zsb29ycxgOIAEoDVIOYWx0'
    'aXR1ZGVGbG9vcnM=');

@$core.Deprecated('Use syncActivityListDescriptor instead')
const SyncActivityList$json = {
  '1': 'SyncActivityList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncActivity', '10': 'list'},
  ],
};

/// Descriptor for `SyncActivityList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncActivityListDescriptor = $convert.base64Decode(
    'ChBTeW5jQWN0aXZpdHlMaXN0EiEKBGxpc3QYASADKAsyDS5TeW5jQWN0aXZpdHlSBGxpc3Q=');

