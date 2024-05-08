//
//  Generated code. Do not modify.
//  source: sensor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use operate_typeDescriptor instead')
const operate_type$json = {
  '1': 'operate_type',
  '2': [
    {'1': 'INVALID', '2': 0},
    {'1': 'INQUIRE', '2': 1},
    {'1': 'SET', '2': 2},
  ],
};

/// Descriptor for `operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operate_typeDescriptor = $convert.base64Decode(
    'CgxvcGVyYXRlX3R5cGUSCwoHSU5WQUxJRBAAEgsKB0lOUVVJUkUQARIHCgNTRVQQAg==');

@$core.Deprecated('Use sensor_operate_typeDescriptor instead')
const sensor_operate_type$json = {
  '1': 'sensor_operate_type',
  '2': [
    {'1': 'SENSOR_TRAN_START', '2': 0},
    {'1': 'SENSOR_TRAN_END', '2': 1},
    {'1': 'OFF_LINE_TRAN_START', '2': 2},
    {'1': 'OFF_LINE_TRAN_END', '2': 3},
    {'1': 'SENSOR_AUTO_TRAN', '2': 4},
  ],
};

/// Descriptor for `sensor_operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sensor_operate_typeDescriptor = $convert.base64Decode(
    'ChNzZW5zb3Jfb3BlcmF0ZV90eXBlEhUKEVNFTlNPUl9UUkFOX1NUQVJUEAASEwoPU0VOU09SX1'
    'RSQU5fRU5EEAESFwoTT0ZGX0xJTkVfVFJBTl9TVEFSVBACEhUKEU9GRl9MSU5FX1RSQU5fRU5E'
    'EAMSFAoQU0VOU09SX0FVVE9fVFJBThAE');

@$core.Deprecated('Use protocol_sensor_rawdata_tran_operateDescriptor instead')
const protocol_sensor_rawdata_tran_operate$json = {
  '1': 'protocol_sensor_rawdata_tran_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'sensor_operate', '3': 2, '4': 1, '5': 14, '6': '.sensor_operate_type', '10': 'sensorOperate'},
    {'1': 'ppg_g_data', '3': 3, '4': 1, '5': 8, '10': 'ppgGData'},
    {'1': 'ppg_r_data', '3': 4, '4': 1, '5': 8, '10': 'ppgRData'},
    {'1': 'ppg_ir_data', '3': 5, '4': 1, '5': 8, '10': 'ppgIrData'},
    {'1': 'acc_data', '3': 6, '4': 1, '5': 8, '10': 'accData'},
    {'1': 'gyro_data', '3': 7, '4': 1, '5': 8, '10': 'gyroData'},
    {'1': 'geomagnetic_data', '3': 8, '4': 1, '5': 8, '10': 'geomagneticData'},
    {'1': 'gnss_data', '3': 9, '4': 1, '5': 8, '10': 'gnssData'},
    {'1': 'audio_data', '3': 10, '4': 1, '5': 8, '10': 'audioData'},
    {'1': 'infrared_data', '3': 11, '4': 1, '5': 8, '10': 'infraredData'},
    {'1': 'sar_data', '3': 12, '4': 1, '5': 8, '10': 'sarData'},
    {'1': 'auto_stop_utc_time', '3': 13, '4': 1, '5': 13, '10': 'autoStopUtcTime'},
    {'1': 'hrv_data', '3': 14, '4': 1, '5': 8, '10': 'hrvData'},
    {'1': 'three_lights_100hz_data', '3': 15, '4': 1, '5': 8, '10': 'threeLights100hzData'},
  ],
};

/// Descriptor for `protocol_sensor_rawdata_tran_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_sensor_rawdata_tran_operateDescriptor = $convert.base64Decode(
    'CiRwcm90b2NvbF9zZW5zb3JfcmF3ZGF0YV90cmFuX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDj'
    'INLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRI7Cg5zZW5zb3Jfb3BlcmF0ZRgCIAEoDjIULnNlbnNv'
    'cl9vcGVyYXRlX3R5cGVSDXNlbnNvck9wZXJhdGUSHAoKcHBnX2dfZGF0YRgDIAEoCFIIcHBnR0'
    'RhdGESHAoKcHBnX3JfZGF0YRgEIAEoCFIIcHBnUkRhdGESHgoLcHBnX2lyX2RhdGEYBSABKAhS'
    'CXBwZ0lyRGF0YRIZCghhY2NfZGF0YRgGIAEoCFIHYWNjRGF0YRIbCglneXJvX2RhdGEYByABKA'
    'hSCGd5cm9EYXRhEikKEGdlb21hZ25ldGljX2RhdGEYCCABKAhSD2dlb21hZ25ldGljRGF0YRIb'
    'CglnbnNzX2RhdGEYCSABKAhSCGduc3NEYXRhEh0KCmF1ZGlvX2RhdGEYCiABKAhSCWF1ZGlvRG'
    'F0YRIjCg1pbmZyYXJlZF9kYXRhGAsgASgIUgxpbmZyYXJlZERhdGESGQoIc2FyX2RhdGEYDCAB'
    'KAhSB3NhckRhdGESKwoSYXV0b19zdG9wX3V0Y190aW1lGA0gASgNUg9hdXRvU3RvcFV0Y1RpbW'
    'USGQoIaHJ2X2RhdGEYDiABKAhSB2hydkRhdGESNQoXdGhyZWVfbGlnaHRzXzEwMGh6X2RhdGEY'
    'DyABKAhSFHRocmVlTGlnaHRzMTAwaHpEYXRh');

@$core.Deprecated('Use protocol_sensor_rawdata_tran_inquire_replyDescriptor instead')
const protocol_sensor_rawdata_tran_inquire_reply$json = {
  '1': 'protocol_sensor_rawdata_tran_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'hr_version', '3': 2, '4': 1, '5': 13, '10': 'hrVersion'},
    {'1': 'spo2_version', '3': 3, '4': 1, '5': 13, '10': 'spo2Version'},
    {'1': 'stress_version', '3': 4, '4': 1, '5': 13, '10': 'stressVersion'},
    {'1': 'hrv_version', '3': 5, '4': 1, '5': 13, '10': 'hrvVersion'},
    {'1': 'pedo_version', '3': 6, '4': 1, '5': 13, '10': 'pedoVersion'},
    {'1': 'calorie_version', '3': 7, '4': 1, '5': 13, '10': 'calorieVersion'},
    {'1': 'distance_version', '3': 8, '4': 1, '5': 13, '10': 'distanceVersion'},
    {'1': 'activity_level_version', '3': 9, '4': 1, '5': 13, '10': 'activityLevelVersion'},
    {'1': 'gesture_version', '3': 10, '4': 1, '5': 13, '10': 'gestureVersion'},
    {'1': 'wear_version', '3': 11, '4': 1, '5': 13, '10': 'wearVersion'},
    {'1': 'noise_version', '3': 12, '4': 1, '5': 13, '10': 'noiseVersion'},
    {'1': 'exercise_duration_version', '3': 13, '4': 1, '5': 13, '10': 'exerciseDurationVersion'},
    {'1': 'sleep_version', '3': 14, '4': 1, '5': 13, '10': 'sleepVersion'},
    {'1': 'gnss_version', '3': 15, '4': 1, '5': 13, '10': 'gnssVersion'},
    {'1': 'motion_recognition_version', '3': 16, '4': 1, '5': 13, '10': 'motionRecognitionVersion'},
  ],
};

/// Descriptor for `protocol_sensor_rawdata_tran_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_sensor_rawdata_tran_inquire_replyDescriptor = $convert.base64Decode(
    'Cipwcm90b2NvbF9zZW5zb3JfcmF3ZGF0YV90cmFuX2lucXVpcmVfcmVwbHkSJwoHb3BlcmF0ZR'
    'gBIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIdCgpocl92ZXJzaW9uGAIgASgNUgloclZl'
    'cnNpb24SIQoMc3BvMl92ZXJzaW9uGAMgASgNUgtzcG8yVmVyc2lvbhIlCg5zdHJlc3NfdmVyc2'
    'lvbhgEIAEoDVINc3RyZXNzVmVyc2lvbhIfCgtocnZfdmVyc2lvbhgFIAEoDVIKaHJ2VmVyc2lv'
    'bhIhCgxwZWRvX3ZlcnNpb24YBiABKA1SC3BlZG9WZXJzaW9uEicKD2NhbG9yaWVfdmVyc2lvbh'
    'gHIAEoDVIOY2Fsb3JpZVZlcnNpb24SKQoQZGlzdGFuY2VfdmVyc2lvbhgIIAEoDVIPZGlzdGFu'
    'Y2VWZXJzaW9uEjQKFmFjdGl2aXR5X2xldmVsX3ZlcnNpb24YCSABKA1SFGFjdGl2aXR5TGV2ZW'
    'xWZXJzaW9uEicKD2dlc3R1cmVfdmVyc2lvbhgKIAEoDVIOZ2VzdHVyZVZlcnNpb24SIQoMd2Vh'
    'cl92ZXJzaW9uGAsgASgNUgt3ZWFyVmVyc2lvbhIjCg1ub2lzZV92ZXJzaW9uGAwgASgNUgxub2'
    'lzZVZlcnNpb24SOgoZZXhlcmNpc2VfZHVyYXRpb25fdmVyc2lvbhgNIAEoDVIXZXhlcmNpc2VE'
    'dXJhdGlvblZlcnNpb24SIwoNc2xlZXBfdmVyc2lvbhgOIAEoDVIMc2xlZXBWZXJzaW9uEiEKDG'
    'duc3NfdmVyc2lvbhgPIAEoDVILZ25zc1ZlcnNpb24SPAoabW90aW9uX3JlY29nbml0aW9uX3Zl'
    'cnNpb24YECABKA1SGG1vdGlvblJlY29nbml0aW9uVmVyc2lvbg==');

