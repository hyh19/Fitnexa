//
//  Generated code. Do not modify.
//  source: SyncSport.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use syncSportDescriptor instead')
const SyncSport$json = {
  '1': 'SyncSport',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    {'1': 'start_time', '3': 3, '4': 1, '5': 9, '10': 'startTime'},
    {'1': 'end_time', '3': 4, '4': 1, '5': 9, '10': 'endTime'},
    {'1': 'is_connect_app', '3': 5, '4': 1, '5': 13, '10': 'isConnectApp'},
    {'1': 'sport_type', '3': 6, '4': 1, '5': 13, '10': 'sportType'},
    {'1': 'sport_initiator', '3': 7, '4': 1, '5': 13, '10': 'sportInitiator'},
    {'1': 'sport_duration', '3': 8, '4': 1, '5': 13, '10': 'sportDuration'},
    {'1': 'sport_goal_type', '3': 9, '4': 1, '5': 13, '10': 'sportGoalType'},
    {'1': 'sport_goal_value', '3': 10, '4': 1, '5': 13, '10': 'sportGoalValue'},
    {'1': 'hr_average', '3': 11, '4': 1, '5': 13, '10': 'hrAverage'},
    {'1': 'hr_max', '3': 12, '4': 1, '5': 13, '10': 'hrMax'},
    {'1': 'hr_min', '3': 13, '4': 1, '5': 13, '10': 'hrMin'},
    {'1': 'warm_up_duration', '3': 14, '4': 1, '5': 13, '10': 'warmUpDuration'},
    {'1': 'fat_burning_duration', '3': 15, '4': 1, '5': 13, '10': 'fatBurningDuration'},
    {'1': 'aerobic_exercise_duration', '3': 16, '4': 1, '5': 13, '10': 'aerobicExerciseDuration'},
    {'1': 'anaerobic_exercise_duration', '3': 17, '4': 1, '5': 13, '10': 'anaerobicExerciseDuration'},
    {'1': 'extreme_exercise_duration', '3': 18, '4': 1, '5': 13, '10': 'extremeExerciseDuration'},
    {'1': 'total_step', '3': 19, '4': 1, '5': 13, '10': 'totalStep'},
    {'1': 'total_calories', '3': 20, '4': 1, '5': 13, '10': 'totalCalories'},
    {'1': 'total_distance', '3': 21, '4': 1, '5': 13, '10': 'totalDistance'},
    {'1': 'swim_distance', '3': 22, '4': 1, '5': 13, '10': 'swimDistance'},
    {'1': 'km_pace_average', '3': 23, '4': 1, '5': 13, '10': 'kmPaceAverage'},
    {'1': 'km_pace_fast', '3': 24, '4': 1, '5': 13, '10': 'kmPaceFast'},
    {'1': 'speed_average', '3': 25, '4': 1, '5': 13, '10': 'speedAverage'},
    {'1': 'speed_fast', '3': 26, '4': 1, '5': 13, '10': 'speedFast'},
    {'1': 'step_frequency_average', '3': 27, '4': 1, '5': 13, '10': 'stepFrequencyAverage'},
    {'1': 'step_frequency_max', '3': 28, '4': 1, '5': 13, '10': 'stepFrequencyMax'},
    {'1': 'step_stride_average', '3': 29, '4': 1, '5': 13, '10': 'stepStrideAverage'},
    {'1': 'step_stride_max', '3': 30, '4': 1, '5': 13, '10': 'stepStrideMax'},
    {'1': 'altitude_max', '3': 31, '4': 1, '5': 13, '10': 'altitudeMax'},
    {'1': 'altitude_min', '3': 32, '4': 1, '5': 13, '10': 'altitudeMin'},
    {'1': 'altitude_average', '3': 33, '4': 1, '5': 13, '10': 'altitudeAverage'},
    {'1': 'altitude_rise', '3': 34, '4': 1, '5': 13, '10': 'altitudeRise'},
    {'1': 'train_score', '3': 35, '4': 1, '5': 13, '10': 'trainScore'},
    {'1': 'vo2_max', '3': 36, '4': 1, '5': 13, '10': 'vo2Max'},
    {'1': 'vo2_grade', '3': 37, '4': 1, '5': 13, '10': 'vo2Grade'},
    {'1': 'recovery_duration', '3': 38, '4': 1, '5': 13, '10': 'recoveryDuration'},
    {'1': 'mets', '3': 39, '4': 1, '5': 13, '10': 'mets'},
    {'1': 'hr_count', '3': 40, '4': 1, '5': 13, '10': 'hrCount'},
    {'1': 'km_speed_count', '3': 41, '4': 1, '5': 13, '10': 'kmSpeedCount'},
    {'1': 'km_pace_count', '3': 42, '4': 1, '5': 13, '10': 'kmPaceCount'},
    {'1': 'step_frequency_count', '3': 43, '4': 1, '5': 13, '10': 'stepFrequencyCount'},
    {'1': 'step_stride_count', '3': 44, '4': 1, '5': 13, '10': 'stepStrideCount'},
    {'1': 'sport_track_count', '3': 45, '4': 1, '5': 13, '10': 'sportTrackCount'},
    {'1': 'hr_datas', '3': 46, '4': 1, '5': 9, '10': 'hrDatas'},
    {'1': 'km_speed_datas', '3': 47, '4': 1, '5': 9, '10': 'kmSpeedDatas'},
    {'1': 'km_pace_datas', '3': 48, '4': 1, '5': 9, '10': 'kmPaceDatas'},
    {'1': 'step_frequency_datas', '3': 49, '4': 1, '5': 9, '10': 'stepFrequencyDatas'},
    {'1': 'step_stride_datas', '3': 50, '4': 1, '5': 9, '10': 'stepStrideDatas'},
    {'1': 'sport_track_datas', '3': 51, '4': 1, '5': 9, '10': 'sportTrackDatas'},
    {'1': 'mi_speed_datas', '3': 52, '4': 1, '5': 9, '10': 'miSpeedDatas'},
    {'1': 'mi_pace_datas', '3': 53, '4': 1, '5': 9, '10': 'miPaceDatas'},
    {'1': 'altitude_datas', '3': 54, '4': 1, '5': 9, '10': 'altitudeDatas'},
    {'1': 'id', '3': 55, '4': 1, '5': 4, '10': 'id'},
    {'1': 'power', '3': 56, '4': 1, '5': 13, '10': 'power'},
    {'1': 'is_support_power', '3': 57, '4': 1, '5': 13, '10': 'isSupportPower'},
    {'1': 'is_support_mets', '3': 58, '4': 1, '5': 13, '10': 'isSupportMets'},
    {'1': 'is_support_altitude', '3': 59, '4': 1, '5': 13, '10': 'isSupportAltitude'},
  ],
};

/// Descriptor for `SyncSport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSportDescriptor = $convert.base64Decode(
    'CglTeW5jU3BvcnQSFwoHdXNlcl9pZBgBIAEoBFIGdXNlcklkEhUKBm1hY19pZBgCIAEoCVIFbW'
    'FjSWQSHQoKc3RhcnRfdGltZRgDIAEoCVIJc3RhcnRUaW1lEhkKCGVuZF90aW1lGAQgASgJUgdl'
    'bmRUaW1lEiQKDmlzX2Nvbm5lY3RfYXBwGAUgASgNUgxpc0Nvbm5lY3RBcHASHQoKc3BvcnRfdH'
    'lwZRgGIAEoDVIJc3BvcnRUeXBlEicKD3Nwb3J0X2luaXRpYXRvchgHIAEoDVIOc3BvcnRJbml0'
    'aWF0b3ISJQoOc3BvcnRfZHVyYXRpb24YCCABKA1SDXNwb3J0RHVyYXRpb24SJgoPc3BvcnRfZ2'
    '9hbF90eXBlGAkgASgNUg1zcG9ydEdvYWxUeXBlEigKEHNwb3J0X2dvYWxfdmFsdWUYCiABKA1S'
    'DnNwb3J0R29hbFZhbHVlEh0KCmhyX2F2ZXJhZ2UYCyABKA1SCWhyQXZlcmFnZRIVCgZocl9tYX'
    'gYDCABKA1SBWhyTWF4EhUKBmhyX21pbhgNIAEoDVIFaHJNaW4SKAoQd2FybV91cF9kdXJhdGlv'
    'bhgOIAEoDVIOd2FybVVwRHVyYXRpb24SMAoUZmF0X2J1cm5pbmdfZHVyYXRpb24YDyABKA1SEm'
    'ZhdEJ1cm5pbmdEdXJhdGlvbhI6ChlhZXJvYmljX2V4ZXJjaXNlX2R1cmF0aW9uGBAgASgNUhdh'
    'ZXJvYmljRXhlcmNpc2VEdXJhdGlvbhI+ChthbmFlcm9iaWNfZXhlcmNpc2VfZHVyYXRpb24YES'
    'ABKA1SGWFuYWVyb2JpY0V4ZXJjaXNlRHVyYXRpb24SOgoZZXh0cmVtZV9leGVyY2lzZV9kdXJh'
    'dGlvbhgSIAEoDVIXZXh0cmVtZUV4ZXJjaXNlRHVyYXRpb24SHQoKdG90YWxfc3RlcBgTIAEoDV'
    'IJdG90YWxTdGVwEiUKDnRvdGFsX2NhbG9yaWVzGBQgASgNUg10b3RhbENhbG9yaWVzEiUKDnRv'
    'dGFsX2Rpc3RhbmNlGBUgASgNUg10b3RhbERpc3RhbmNlEiMKDXN3aW1fZGlzdGFuY2UYFiABKA'
    '1SDHN3aW1EaXN0YW5jZRImCg9rbV9wYWNlX2F2ZXJhZ2UYFyABKA1SDWttUGFjZUF2ZXJhZ2US'
    'IAoMa21fcGFjZV9mYXN0GBggASgNUgprbVBhY2VGYXN0EiMKDXNwZWVkX2F2ZXJhZ2UYGSABKA'
    '1SDHNwZWVkQXZlcmFnZRIdCgpzcGVlZF9mYXN0GBogASgNUglzcGVlZEZhc3QSNAoWc3RlcF9m'
    'cmVxdWVuY3lfYXZlcmFnZRgbIAEoDVIUc3RlcEZyZXF1ZW5jeUF2ZXJhZ2USLAoSc3RlcF9mcm'
    'VxdWVuY3lfbWF4GBwgASgNUhBzdGVwRnJlcXVlbmN5TWF4Ei4KE3N0ZXBfc3RyaWRlX2F2ZXJh'
    'Z2UYHSABKA1SEXN0ZXBTdHJpZGVBdmVyYWdlEiYKD3N0ZXBfc3RyaWRlX21heBgeIAEoDVINc3'
    'RlcFN0cmlkZU1heBIhCgxhbHRpdHVkZV9tYXgYHyABKA1SC2FsdGl0dWRlTWF4EiEKDGFsdGl0'
    'dWRlX21pbhggIAEoDVILYWx0aXR1ZGVNaW4SKQoQYWx0aXR1ZGVfYXZlcmFnZRghIAEoDVIPYW'
    'x0aXR1ZGVBdmVyYWdlEiMKDWFsdGl0dWRlX3Jpc2UYIiABKA1SDGFsdGl0dWRlUmlzZRIfCgt0'
    'cmFpbl9zY29yZRgjIAEoDVIKdHJhaW5TY29yZRIXCgd2bzJfbWF4GCQgASgNUgZ2bzJNYXgSGw'
    'oJdm8yX2dyYWRlGCUgASgNUgh2bzJHcmFkZRIrChFyZWNvdmVyeV9kdXJhdGlvbhgmIAEoDVIQ'
    'cmVjb3ZlcnlEdXJhdGlvbhISCgRtZXRzGCcgASgNUgRtZXRzEhkKCGhyX2NvdW50GCggASgNUg'
    'dockNvdW50EiQKDmttX3NwZWVkX2NvdW50GCkgASgNUgxrbVNwZWVkQ291bnQSIgoNa21fcGFj'
    'ZV9jb3VudBgqIAEoDVILa21QYWNlQ291bnQSMAoUc3RlcF9mcmVxdWVuY3lfY291bnQYKyABKA'
    '1SEnN0ZXBGcmVxdWVuY3lDb3VudBIqChFzdGVwX3N0cmlkZV9jb3VudBgsIAEoDVIPc3RlcFN0'
    'cmlkZUNvdW50EioKEXNwb3J0X3RyYWNrX2NvdW50GC0gASgNUg9zcG9ydFRyYWNrQ291bnQSGQ'
    'oIaHJfZGF0YXMYLiABKAlSB2hyRGF0YXMSJAoOa21fc3BlZWRfZGF0YXMYLyABKAlSDGttU3Bl'
    'ZWREYXRhcxIiCg1rbV9wYWNlX2RhdGFzGDAgASgJUgtrbVBhY2VEYXRhcxIwChRzdGVwX2ZyZX'
    'F1ZW5jeV9kYXRhcxgxIAEoCVISc3RlcEZyZXF1ZW5jeURhdGFzEioKEXN0ZXBfc3RyaWRlX2Rh'
    'dGFzGDIgASgJUg9zdGVwU3RyaWRlRGF0YXMSKgoRc3BvcnRfdHJhY2tfZGF0YXMYMyABKAlSD3'
    'Nwb3J0VHJhY2tEYXRhcxIkCg5taV9zcGVlZF9kYXRhcxg0IAEoCVIMbWlTcGVlZERhdGFzEiIK'
    'DW1pX3BhY2VfZGF0YXMYNSABKAlSC21pUGFjZURhdGFzEiUKDmFsdGl0dWRlX2RhdGFzGDYgAS'
    'gJUg1hbHRpdHVkZURhdGFzEg4KAmlkGDcgASgEUgJpZBIUCgVwb3dlchg4IAEoDVIFcG93ZXIS'
    'KAoQaXNfc3VwcG9ydF9wb3dlchg5IAEoDVIOaXNTdXBwb3J0UG93ZXISJgoPaXNfc3VwcG9ydF'
    '9tZXRzGDogASgNUg1pc1N1cHBvcnRNZXRzEi4KE2lzX3N1cHBvcnRfYWx0aXR1ZGUYOyABKA1S'
    'EWlzU3VwcG9ydEFsdGl0dWRl');

@$core.Deprecated('Use syncSportListDescriptor instead')
const SyncSportList$json = {
  '1': 'SyncSportList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncSport', '10': 'list'},
  ],
};

/// Descriptor for `SyncSportList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSportListDescriptor = $convert.base64Decode(
    'Cg1TeW5jU3BvcnRMaXN0Eh4KBGxpc3QYASADKAsyCi5TeW5jU3BvcnRSBGxpc3Q=');

