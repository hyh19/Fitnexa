///
//  Generated code. Do not modify.
//  source: SyncGoal.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use syncGoalDescriptor instead')
const SyncGoal$json = const {
  '1': 'SyncGoal',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    const {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    const {'1': 'data_date', '3': 3, '4': 1, '5': 9, '10': 'dataDate'},
    const {'1': 'exercise_duration', '3': 4, '4': 1, '5': 13, '10': 'exerciseDuration'},
    const {'1': 'stand_duration', '3': 5, '4': 1, '5': 13, '10': 'standDuration'},
    const {'1': 'calorie', '3': 6, '4': 1, '5': 13, '10': 'calorie'},
    const {'1': 'step_count', '3': 7, '4': 1, '5': 13, '10': 'stepCount'},
    const {'1': 'distance', '3': 8, '4': 1, '5': 13, '10': 'distance'},
    const {'1': 'sport_day', '3': 9, '4': 1, '5': 13, '10': 'sportDay'},
    const {'1': 'sleep_duration', '3': 10, '4': 1, '5': 13, '10': 'sleepDuration'},
    const {'1': 'notify_switch', '3': 11, '4': 1, '5': 13, '10': 'notifySwitch'},
    const {'1': 'notify_type', '3': 12, '4': 1, '5': 13, '10': 'notifyType'},
    const {'1': 'id', '3': 13, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `SyncGoal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncGoalDescriptor = $convert.base64Decode('CghTeW5jR29hbBIXCgd1c2VyX2lkGAEgASgEUgZ1c2VySWQSFQoGbWFjX2lkGAIgASgJUgVtYWNJZBIbCglkYXRhX2RhdGUYAyABKAlSCGRhdGFEYXRlEisKEWV4ZXJjaXNlX2R1cmF0aW9uGAQgASgNUhBleGVyY2lzZUR1cmF0aW9uEiUKDnN0YW5kX2R1cmF0aW9uGAUgASgNUg1zdGFuZER1cmF0aW9uEhgKB2NhbG9yaWUYBiABKA1SB2NhbG9yaWUSHQoKc3RlcF9jb3VudBgHIAEoDVIJc3RlcENvdW50EhoKCGRpc3RhbmNlGAggASgNUghkaXN0YW5jZRIbCglzcG9ydF9kYXkYCSABKA1SCHNwb3J0RGF5EiUKDnNsZWVwX2R1cmF0aW9uGAogASgNUg1zbGVlcER1cmF0aW9uEiMKDW5vdGlmeV9zd2l0Y2gYCyABKA1SDG5vdGlmeVN3aXRjaBIfCgtub3RpZnlfdHlwZRgMIAEoDVIKbm90aWZ5VHlwZRIOCgJpZBgNIAEoBFICaWQ=');
@$core.Deprecated('Use syncGoalListDescriptor instead')
const SyncGoalList$json = const {
  '1': 'SyncGoalList',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncGoal', '10': 'list'},
  ],
};

/// Descriptor for `SyncGoalList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncGoalListDescriptor = $convert.base64Decode('CgxTeW5jR29hbExpc3QSHQoEbGlzdBgBIAMoCzIJLlN5bmNHb2FsUgRsaXN0');
