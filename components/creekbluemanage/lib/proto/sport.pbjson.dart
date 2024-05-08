//
//  Generated code. Do not modify.
//  source: sport.proto
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

@$core.Deprecated('Use sport_typeDescriptor instead')
const sport_type$json = {
  '1': 'sport_type',
  '2': [
    {'1': 'ORUN', '2': 0},
    {'1': 'IRUN', '2': 1},
    {'1': 'OWALK', '2': 2},
    {'1': 'IWALK', '2': 3},
    {'1': 'HIKING', '2': 4},
    {'1': 'OCYCLE', '2': 5},
    {'1': 'ICYCLE', '2': 6},
    {'1': 'CRICKET', '2': 7},
    {'1': 'FOOTBALL', '2': 8},
    {'1': 'PSWIM', '2': 9},
    {'1': 'OSWIM', '2': 10},
    {'1': 'YOGA', '2': 11},
    {'1': 'PILATES', '2': 12},
    {'1': 'DANCE', '2': 13},
    {'1': 'ZUMBA', '2': 14},
    {'1': 'ROWER', '2': 15},
    {'1': 'ELLIPTICAL', '2': 16},
    {'1': 'CTRAINING', '2': 17},
    {'1': 'TSTRAINING', '2': 18},
    {'1': 'FSTRAINING', '2': 19},
    {'1': 'HIIT', '2': 20},
    {'1': 'COOLDOWN', '2': 21},
    {'1': 'WORKOUT', '2': 22},
    {'1': 'FITNESS', '2': 23},
    {'1': 'TRAIL_RUNNING', '2': 24},
    {'1': 'TREADMILL', '2': 25},
    {'1': 'AEROBICS', '2': 26},
    {'1': 'SIT_UP', '2': 27},
    {'1': 'PLANK', '2': 28},
    {'1': 'JUMPING_JACK', '2': 29},
    {'1': 'CHIN_UP', '2': 30},
    {'1': 'PUSH_UP', '2': 31},
    {'1': 'DEEP_SQUAT', '2': 32},
    {'1': 'HIGH_KNEE_LIFT', '2': 33},
    {'1': 'DUMBBELL', '2': 34},
    {'1': 'BARBELL', '2': 35},
    {'1': 'BOXING', '2': 36},
    {'1': 'KICKBOXING', '2': 37},
    {'1': 'HORIZONTAL_BAR', '2': 38},
    {'1': 'PARALLEL_BARS', '2': 39},
    {'1': 'WALKING_MACHINE', '2': 40},
    {'1': 'SUMMIT_TRAINERS', '2': 41},
    {'1': 'BOWLING', '2': 42},
    {'1': 'TENNIS', '2': 43},
    {'1': 'TABLE_TENNIS', '2': 44},
    {'1': 'GOLF', '2': 45},
    {'1': 'BASKETBALL', '2': 46},
    {'1': 'BADMINTON', '2': 47},
    {'1': 'HOCKEY', '2': 48},
    {'1': 'RUGBY', '2': 49},
    {'1': 'HANDBALL', '2': 50},
    {'1': 'SQUASH', '2': 51},
    {'1': 'BASEBALL', '2': 52},
    {'1': 'SOFTBALL', '2': 53},
    {'1': 'SHUTTLECOCK', '2': 54},
    {'1': 'SEPAKTAKRAW', '2': 55},
    {'1': 'STREET_DANCE', '2': 56},
    {'1': 'MOUNTAIN_CLINBING', '2': 57},
    {'1': 'ROPE_SKIPPING', '2': 58},
    {'1': 'CLIMB_STAIRS', '2': 59},
    {'1': 'BALLET', '2': 60},
    {'1': 'SOCIAL_DANCE', '2': 61},
    {'1': 'DARTS', '2': 62},
    {'1': 'HORSEBACK_RIDING', '2': 63},
    {'1': 'ROLLER_SKATING', '2': 64},
    {'1': 'TAI_CHI', '2': 65},
    {'1': 'FRISBEE', '2': 66},
    {'1': 'HULA_HOOP', '2': 67},
    {'1': 'SLEIGH', '2': 68},
    {'1': 'SKATING', '2': 69},
    {'1': 'BOBSLEIGH_AND_TOBOGGANING', '2': 70},
    {'1': 'CURLING', '2': 71},
    {'1': 'ICE_HOCKEY', '2': 72},
    {'1': 'SURFING', '2': 73},
    {'1': 'SAILBOAT', '2': 74},
    {'1': 'SAILBOARD', '2': 75},
    {'1': 'FOLDBOATING', '2': 76},
    {'1': 'CANOEING', '2': 77},
    {'1': 'BOAT_RACE', '2': 78},
    {'1': 'MOTORBOAT', '2': 79},
    {'1': 'WATER_POLO', '2': 80},
    {'1': 'SLIDING_PLATE', '2': 81},
    {'1': 'ROCK_CLIMBING', '2': 82},
    {'1': 'BUNGEE_JUMPING', '2': 83},
    {'1': 'PARKOUR', '2': 84},
    {'1': 'OTHER', '2': 85},
    {'1': 'SPINNING', '2': 86},
    {'1': 'MARTIAL_ARTS', '2': 87},
    {'1': 'TAEKWONDO', '2': 88},
    {'1': 'KARATE', '2': 89},
    {'1': 'GYMNASTICS', '2': 90},
    {'1': 'PADEL', '2': 91},
    {'1': 'PICKLEBALL', '2': 92},
    {'1': 'SNOWBOARDING', '2': 93},
    {'1': 'SKIING', '2': 94},
    {'1': 'PADDLING', '2': 95},
    {'1': 'BMX', '2': 96},
    {'1': 'FENCING', '2': 97},
    {'1': 'BILLIARDS', '2': 98},
    {'1': 'BEACH_SOCCER', '2': 99},
    {'1': 'BEACH_VOLLEYBALL', '2': 100},
    {'1': 'DODGEBALL', '2': 101},
    {'1': 'JAZZ', '2': 102},
    {'1': 'LATIN', '2': 103},
    {'1': 'SQUARE_DANCE', '2': 104},
    {'1': 'VOLLEYBALL', '2': 105},
    {'1': 'KITE_FLYING', '2': 106},
    {'1': 'FISHING', '2': 107},
    {'1': 'ARCHERY', '2': 108},
    {'1': 'SHOOTING', '2': 109},
    {'1': 'WHITE_WATER_RAFTING', '2': 110},
    {'1': 'ALPINE_SKIING', '2': 111},
    {'1': 'CROSS_COUNTRY_SKIING', '2': 112},
    {'1': 'BIATHON', '2': 113},
    {'1': 'DRAGON_BOAT_RACING', '2': 114},
    {'1': 'RACING', '2': 115},
  ],
};

/// Descriptor for `sport_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sport_typeDescriptor = $convert.base64Decode(
    'CgpzcG9ydF90eXBlEggKBE9SVU4QABIICgRJUlVOEAESCQoFT1dBTEsQAhIJCgVJV0FMSxADEg'
    'oKBkhJS0lORxAEEgoKBk9DWUNMRRAFEgoKBklDWUNMRRAGEgsKB0NSSUNLRVQQBxIMCghGT09U'
    'QkFMTBAIEgkKBVBTV0lNEAkSCQoFT1NXSU0QChIICgRZT0dBEAsSCwoHUElMQVRFUxAMEgkKBU'
    'RBTkNFEA0SCQoFWlVNQkEQDhIJCgVST1dFUhAPEg4KCkVMTElQVElDQUwQEBINCglDVFJBSU5J'
    'TkcQERIOCgpUU1RSQUlOSU5HEBISDgoKRlNUUkFJTklORxATEggKBEhJSVQQFBIMCghDT09MRE'
    '9XThAVEgsKB1dPUktPVVQQFhILCgdGSVRORVNTEBcSEQoNVFJBSUxfUlVOTklORxAYEg0KCVRS'
    'RUFETUlMTBAZEgwKCEFFUk9CSUNTEBoSCgoGU0lUX1VQEBsSCQoFUExBTksQHBIQCgxKVU1QSU'
    '5HX0pBQ0sQHRILCgdDSElOX1VQEB4SCwoHUFVTSF9VUBAfEg4KCkRFRVBfU1FVQVQQIBISCg5I'
    'SUdIX0tORUVfTElGVBAhEgwKCERVTUJCRUxMECISCwoHQkFSQkVMTBAjEgoKBkJPWElORxAkEg'
    '4KCktJQ0tCT1hJTkcQJRISCg5IT1JJWk9OVEFMX0JBUhAmEhEKDVBBUkFMTEVMX0JBUlMQJxIT'
    'Cg9XQUxLSU5HX01BQ0hJTkUQKBITCg9TVU1NSVRfVFJBSU5FUlMQKRILCgdCT1dMSU5HECoSCg'
    'oGVEVOTklTECsSEAoMVEFCTEVfVEVOTklTECwSCAoER09MRhAtEg4KCkJBU0tFVEJBTEwQLhIN'
    'CglCQURNSU5UT04QLxIKCgZIT0NLRVkQMBIJCgVSVUdCWRAxEgwKCEhBTkRCQUxMEDISCgoGU1'
    'FVQVNIEDMSDAoIQkFTRUJBTEwQNBIMCghTT0ZUQkFMTBA1Eg8KC1NIVVRUTEVDT0NLEDYSDwoL'
    'U0VQQUtUQUtSQVcQNxIQCgxTVFJFRVRfREFOQ0UQOBIVChFNT1VOVEFJTl9DTElOQklORxA5Eh'
    'EKDVJPUEVfU0tJUFBJTkcQOhIQCgxDTElNQl9TVEFJUlMQOxIKCgZCQUxMRVQQPBIQCgxTT0NJ'
    'QUxfREFOQ0UQPRIJCgVEQVJUUxA+EhQKEEhPUlNFQkFDS19SSURJTkcQPxISCg5ST0xMRVJfU0'
    'tBVElORxBAEgsKB1RBSV9DSEkQQRILCgdGUklTQkVFEEISDQoJSFVMQV9IT09QEEMSCgoGU0xF'
    'SUdIEEQSCwoHU0tBVElORxBFEh0KGUJPQlNMRUlHSF9BTkRfVE9CT0dHQU5JTkcQRhILCgdDVV'
    'JMSU5HEEcSDgoKSUNFX0hPQ0tFWRBIEgsKB1NVUkZJTkcQSRIMCghTQUlMQk9BVBBKEg0KCVNB'
    'SUxCT0FSRBBLEg8KC0ZPTERCT0FUSU5HEEwSDAoIQ0FOT0VJTkcQTRINCglCT0FUX1JBQ0UQTh'
    'INCglNT1RPUkJPQVQQTxIOCgpXQVRFUl9QT0xPEFASEQoNU0xJRElOR19QTEFURRBREhEKDVJP'
    'Q0tfQ0xJTUJJTkcQUhISCg5CVU5HRUVfSlVNUElORxBTEgsKB1BBUktPVVIQVBIJCgVPVEhFUh'
    'BVEgwKCFNQSU5OSU5HEFYSEAoMTUFSVElBTF9BUlRTEFcSDQoJVEFFS1dPTkRPEFgSCgoGS0FS'
    'QVRFEFkSDgoKR1lNTkFTVElDUxBaEgkKBVBBREVMEFsSDgoKUElDS0xFQkFMTBBcEhAKDFNOT1'
    'dCT0FSRElORxBdEgoKBlNLSUlORxBeEgwKCFBBRERMSU5HEF8SBwoDQk1YEGASCwoHRkVOQ0lO'
    'RxBhEg0KCUJJTExJQVJEUxBiEhAKDEJFQUNIX1NPQ0NFUhBjEhQKEEJFQUNIX1ZPTExFWUJBTE'
    'wQZBINCglET0RHRUJBTEwQZRIICgRKQVpaEGYSCQoFTEFUSU4QZxIQCgxTUVVBUkVfREFOQ0UQ'
    'aBIOCgpWT0xMRVlCQUxMEGkSDwoLS0lURV9GTFlJTkcQahILCgdGSVNISU5HEGsSCwoHQVJDSE'
    'VSWRBsEgwKCFNIT09USU5HEG0SFwoTV0hJVEVfV0FURVJfUkFGVElORxBuEhEKDUFMUElORV9T'
    'S0lJTkcQbxIYChRDUk9TU19DT1VOVFJZX1NLSUlORxBwEgsKB0JJQVRIT04QcRIWChJEUkFHT0'
    '5fQk9BVF9SQUNJTkcQchIKCgZSQUNJTkcQcw==');

@$core.Deprecated('Use interval_division_modeDescriptor instead')
const interval_division_mode$json = {
  '1': 'interval_division_mode',
  '2': [
    {'1': 'MAXIMUM_MODE', '2': 0},
    {'1': 'RESERVE_MODE', '2': 1},
  ],
};

/// Descriptor for `interval_division_mode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List interval_division_modeDescriptor = $convert.base64Decode(
    'ChZpbnRlcnZhbF9kaXZpc2lvbl9tb2RlEhAKDE1BWElNVU1fTU9ERRAAEhAKDFJFU0VSVkVfTU'
    '9ERRAB');

@$core.Deprecated('Use gps_operate_typeDescriptor instead')
const gps_operate_type$json = {
  '1': 'gps_operate_type',
  '2': [
    {'1': 'GPS_INFO_REQUEST', '2': 0},
    {'1': 'GPS_INFO_END', '2': 1},
  ],
};

/// Descriptor for `gps_operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gps_operate_typeDescriptor = $convert.base64Decode(
    'ChBncHNfb3BlcmF0ZV90eXBlEhQKEEdQU19JTkZPX1JFUVVFU1QQABIQCgxHUFNfSU5GT19FTk'
    'QQAQ==');

@$core.Deprecated('Use protocol_exercise_func_support_replyDescriptor instead')
const protocol_exercise_func_support_reply$json = {
  '1': 'protocol_exercise_func_support_reply',
  '2': [
    {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'orun', '3': 2, '4': 1, '5': 8, '10': 'orun'},
    {'1': 'irun', '3': 3, '4': 1, '5': 8, '10': 'irun'},
    {'1': 'owalk', '3': 4, '4': 1, '5': 8, '10': 'owalk'},
    {'1': 'iwalk', '3': 5, '4': 1, '5': 8, '10': 'iwalk'},
    {'1': 'hiking', '3': 6, '4': 1, '5': 8, '10': 'hiking'},
    {'1': 'ocycle', '3': 7, '4': 1, '5': 8, '10': 'ocycle'},
    {'1': 'icycle', '3': 8, '4': 1, '5': 8, '10': 'icycle'},
    {'1': 'cricket', '3': 9, '4': 1, '5': 8, '10': 'cricket'},
    {'1': 'football', '3': 10, '4': 1, '5': 8, '10': 'football'},
    {'1': 'pswim', '3': 11, '4': 1, '5': 8, '10': 'pswim'},
    {'1': 'oswim', '3': 12, '4': 1, '5': 8, '10': 'oswim'},
    {'1': 'yoga', '3': 13, '4': 1, '5': 8, '10': 'yoga'},
    {'1': 'pilates', '3': 14, '4': 1, '5': 8, '10': 'pilates'},
    {'1': 'dance', '3': 15, '4': 1, '5': 8, '10': 'dance'},
    {'1': 'zumba', '3': 16, '4': 1, '5': 8, '10': 'zumba'},
    {'1': 'rower', '3': 17, '4': 1, '5': 8, '10': 'rower'},
    {'1': 'elliptical', '3': 18, '4': 1, '5': 8, '10': 'elliptical'},
    {'1': 'ctraining', '3': 19, '4': 1, '5': 8, '10': 'ctraining'},
    {'1': 'tstraining', '3': 20, '4': 1, '5': 8, '10': 'tstraining'},
    {'1': 'fstraining', '3': 21, '4': 1, '5': 8, '10': 'fstraining'},
    {'1': 'hiit', '3': 22, '4': 1, '5': 8, '10': 'hiit'},
    {'1': 'cooldown', '3': 23, '4': 1, '5': 8, '10': 'cooldown'},
    {'1': 'workout', '3': 24, '4': 1, '5': 8, '10': 'workout'},
    {'1': 'fitness', '3': 25, '4': 1, '5': 8, '10': 'fitness'},
    {'1': 'trail_running', '3': 26, '4': 1, '5': 8, '10': 'trailRunning'},
    {'1': 'treadmill', '3': 27, '4': 1, '5': 8, '10': 'treadmill'},
    {'1': 'aerobics', '3': 28, '4': 1, '5': 8, '10': 'aerobics'},
    {'1': 'sit_up', '3': 29, '4': 1, '5': 8, '10': 'sitUp'},
    {'1': 'plank', '3': 30, '4': 1, '5': 8, '10': 'plank'},
    {'1': 'jumping_jack', '3': 31, '4': 1, '5': 8, '10': 'jumpingJack'},
    {'1': 'chin_up', '3': 32, '4': 1, '5': 8, '10': 'chinUp'},
    {'1': 'push_up', '3': 33, '4': 1, '5': 8, '10': 'pushUp'},
    {'1': 'deep_squat', '3': 34, '4': 1, '5': 8, '10': 'deepSquat'},
    {'1': 'high_knee_lift', '3': 35, '4': 1, '5': 8, '10': 'highKneeLift'},
    {'1': 'dumbbell', '3': 36, '4': 1, '5': 8, '10': 'dumbbell'},
    {'1': 'barbell', '3': 37, '4': 1, '5': 8, '10': 'barbell'},
    {'1': 'boxing', '3': 38, '4': 1, '5': 8, '10': 'boxing'},
    {'1': 'kickboxing', '3': 39, '4': 1, '5': 8, '10': 'kickboxing'},
    {'1': 'horizontal_bar', '3': 40, '4': 1, '5': 8, '10': 'horizontalBar'},
    {'1': 'parallel_bars', '3': 41, '4': 1, '5': 8, '10': 'parallelBars'},
    {'1': 'walking_machine', '3': 42, '4': 1, '5': 8, '10': 'walkingMachine'},
    {'1': 'summit_trainers', '3': 43, '4': 1, '5': 8, '10': 'summitTrainers'},
    {'1': 'bowling', '3': 44, '4': 1, '5': 8, '10': 'bowling'},
    {'1': 'tennis', '3': 45, '4': 1, '5': 8, '10': 'tennis'},
    {'1': 'table_tennis', '3': 46, '4': 1, '5': 8, '10': 'tableTennis'},
    {'1': 'golf', '3': 47, '4': 1, '5': 8, '10': 'golf'},
    {'1': 'basketball', '3': 48, '4': 1, '5': 8, '10': 'basketball'},
    {'1': 'badminton', '3': 49, '4': 1, '5': 8, '10': 'badminton'},
    {'1': 'hockey', '3': 50, '4': 1, '5': 8, '10': 'hockey'},
    {'1': 'rugby', '3': 51, '4': 1, '5': 8, '10': 'rugby'},
    {'1': 'handball', '3': 52, '4': 1, '5': 8, '10': 'handball'},
    {'1': 'squash', '3': 53, '4': 1, '5': 8, '10': 'squash'},
    {'1': 'baseball', '3': 54, '4': 1, '5': 8, '10': 'baseball'},
    {'1': 'softball', '3': 55, '4': 1, '5': 8, '10': 'softball'},
    {'1': 'shuttlecock', '3': 56, '4': 1, '5': 8, '10': 'shuttlecock'},
    {'1': 'sepaktakraw', '3': 57, '4': 1, '5': 8, '10': 'sepaktakraw'},
    {'1': 'street_dance', '3': 58, '4': 1, '5': 8, '10': 'streetDance'},
    {'1': 'mountain_clinbing', '3': 59, '4': 1, '5': 8, '10': 'mountainClinbing'},
    {'1': 'rope_skipping', '3': 60, '4': 1, '5': 8, '10': 'ropeSkipping'},
    {'1': 'climb_stairs', '3': 61, '4': 1, '5': 8, '10': 'climbStairs'},
    {'1': 'ballet', '3': 62, '4': 1, '5': 8, '10': 'ballet'},
    {'1': 'social_dance', '3': 63, '4': 1, '5': 8, '10': 'socialDance'},
    {'1': 'darts', '3': 64, '4': 1, '5': 8, '10': 'darts'},
    {'1': 'horseback_riding', '3': 65, '4': 1, '5': 8, '10': 'horsebackRiding'},
    {'1': 'roller_skating', '3': 66, '4': 1, '5': 8, '10': 'rollerSkating'},
    {'1': 'tai_chi', '3': 67, '4': 1, '5': 8, '10': 'taiChi'},
    {'1': 'frisbee', '3': 68, '4': 1, '5': 8, '10': 'frisbee'},
    {'1': 'hula_hoop', '3': 69, '4': 1, '5': 8, '10': 'hulaHoop'},
    {'1': 'sleigh', '3': 70, '4': 1, '5': 8, '10': 'sleigh'},
    {'1': 'skating', '3': 71, '4': 1, '5': 8, '10': 'skating'},
    {'1': 'bobsleigh_and_tobogganing', '3': 72, '4': 1, '5': 8, '10': 'bobsleighAndTobogganing'},
    {'1': 'curling', '3': 73, '4': 1, '5': 8, '10': 'curling'},
    {'1': 'ice_hockey', '3': 74, '4': 1, '5': 8, '10': 'iceHockey'},
    {'1': 'surfing', '3': 75, '4': 1, '5': 8, '10': 'surfing'},
    {'1': 'sailboat', '3': 76, '4': 1, '5': 8, '10': 'sailboat'},
    {'1': 'sailboard', '3': 77, '4': 1, '5': 8, '10': 'sailboard'},
    {'1': 'foldboating', '3': 78, '4': 1, '5': 8, '10': 'foldboating'},
    {'1': 'canoeing', '3': 79, '4': 1, '5': 8, '10': 'canoeing'},
    {'1': 'boat_race', '3': 80, '4': 1, '5': 8, '10': 'boatRace'},
    {'1': 'motorboat', '3': 81, '4': 1, '5': 8, '10': 'motorboat'},
    {'1': 'water_polo', '3': 82, '4': 1, '5': 8, '10': 'waterPolo'},
    {'1': 'sliding_plate', '3': 83, '4': 1, '5': 8, '10': 'slidingPlate'},
    {'1': 'rock_climbing', '3': 84, '4': 1, '5': 8, '10': 'rockClimbing'},
    {'1': 'bungee_jumping', '3': 85, '4': 1, '5': 8, '10': 'bungeeJumping'},
    {'1': 'parkour', '3': 86, '4': 1, '5': 8, '10': 'parkour'},
    {'1': 'other', '3': 87, '4': 1, '5': 8, '10': 'other'},
    {'1': 'spinning', '3': 88, '4': 1, '5': 8, '10': 'spinning'},
    {'1': 'martial_arts', '3': 89, '4': 1, '5': 8, '10': 'martialArts'},
    {'1': 'taekwondo', '3': 90, '4': 1, '5': 8, '10': 'taekwondo'},
    {'1': 'karate', '3': 91, '4': 1, '5': 8, '10': 'karate'},
    {'1': 'gymnastics', '3': 92, '4': 1, '5': 8, '10': 'gymnastics'},
    {'1': 'padel', '3': 93, '4': 1, '5': 8, '10': 'padel'},
    {'1': 'pickleball', '3': 94, '4': 1, '5': 8, '10': 'pickleball'},
    {'1': 'snowboarding', '3': 95, '4': 1, '5': 8, '10': 'snowboarding'},
    {'1': 'skiing', '3': 96, '4': 1, '5': 8, '10': 'skiing'},
    {'1': 'paddling', '3': 97, '4': 1, '5': 8, '10': 'paddling'},
    {'1': 'bmx', '3': 98, '4': 1, '5': 8, '10': 'bmx'},
    {'1': 'fencing', '3': 99, '4': 1, '5': 8, '10': 'fencing'},
    {'1': 'billiards', '3': 100, '4': 1, '5': 8, '10': 'billiards'},
    {'1': 'beach_soccer', '3': 101, '4': 1, '5': 8, '10': 'beachSoccer'},
    {'1': 'beach_volleyball', '3': 102, '4': 1, '5': 8, '10': 'beachVolleyball'},
    {'1': 'dodgeball', '3': 103, '4': 1, '5': 8, '10': 'dodgeball'},
    {'1': 'jazz', '3': 104, '4': 1, '5': 8, '10': 'jazz'},
    {'1': 'latin', '3': 105, '4': 1, '5': 8, '10': 'latin'},
    {'1': 'square_dance', '3': 106, '4': 1, '5': 8, '10': 'squareDance'},
    {'1': 'volleyball', '3': 107, '4': 1, '5': 8, '10': 'volleyball'},
    {'1': 'kite_flying', '3': 108, '4': 1, '5': 8, '10': 'kiteFlying'},
    {'1': 'fishing', '3': 109, '4': 1, '5': 8, '10': 'fishing'},
    {'1': 'archery', '3': 110, '4': 1, '5': 8, '10': 'archery'},
    {'1': 'shooting', '3': 111, '4': 1, '5': 8, '10': 'shooting'},
    {'1': 'white_water_rafting', '3': 112, '4': 1, '5': 8, '10': 'whiteWaterRafting'},
    {'1': 'alpine_skiing', '3': 113, '4': 1, '5': 8, '10': 'alpineSkiing'},
    {'1': 'cross_country_skiing', '3': 114, '4': 1, '5': 8, '10': 'crossCountrySkiing'},
    {'1': 'biathon', '3': 115, '4': 1, '5': 8, '10': 'biathon'},
    {'1': 'dragon_boat_racing', '3': 116, '4': 1, '5': 8, '10': 'dragonBoatRacing'},
    {'1': 'racing', '3': 117, '4': 1, '5': 8, '10': 'racing'},
  ],
};

/// Descriptor for `protocol_exercise_func_support_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_func_support_replyDescriptor = $convert.base64Decode(
    'CiRwcm90b2NvbF9leGVyY2lzZV9mdW5jX3N1cHBvcnRfcmVwbHkSHQoKZnVuY190YWJsZRgBIA'
    'EoDVIJZnVuY1RhYmxlEhIKBG9ydW4YAiABKAhSBG9ydW4SEgoEaXJ1bhgDIAEoCFIEaXJ1bhIU'
    'CgVvd2FsaxgEIAEoCFIFb3dhbGsSFAoFaXdhbGsYBSABKAhSBWl3YWxrEhYKBmhpa2luZxgGIA'
    'EoCFIGaGlraW5nEhYKBm9jeWNsZRgHIAEoCFIGb2N5Y2xlEhYKBmljeWNsZRgIIAEoCFIGaWN5'
    'Y2xlEhgKB2NyaWNrZXQYCSABKAhSB2NyaWNrZXQSGgoIZm9vdGJhbGwYCiABKAhSCGZvb3RiYW'
    'xsEhQKBXBzd2ltGAsgASgIUgVwc3dpbRIUCgVvc3dpbRgMIAEoCFIFb3N3aW0SEgoEeW9nYRgN'
    'IAEoCFIEeW9nYRIYCgdwaWxhdGVzGA4gASgIUgdwaWxhdGVzEhQKBWRhbmNlGA8gASgIUgVkYW'
    '5jZRIUCgV6dW1iYRgQIAEoCFIFenVtYmESFAoFcm93ZXIYESABKAhSBXJvd2VyEh4KCmVsbGlw'
    'dGljYWwYEiABKAhSCmVsbGlwdGljYWwSHAoJY3RyYWluaW5nGBMgASgIUgljdHJhaW5pbmcSHg'
    'oKdHN0cmFpbmluZxgUIAEoCFIKdHN0cmFpbmluZxIeCgpmc3RyYWluaW5nGBUgASgIUgpmc3Ry'
    'YWluaW5nEhIKBGhpaXQYFiABKAhSBGhpaXQSGgoIY29vbGRvd24YFyABKAhSCGNvb2xkb3duEh'
    'gKB3dvcmtvdXQYGCABKAhSB3dvcmtvdXQSGAoHZml0bmVzcxgZIAEoCFIHZml0bmVzcxIjCg10'
    'cmFpbF9ydW5uaW5nGBogASgIUgx0cmFpbFJ1bm5pbmcSHAoJdHJlYWRtaWxsGBsgASgIUgl0cm'
    'VhZG1pbGwSGgoIYWVyb2JpY3MYHCABKAhSCGFlcm9iaWNzEhUKBnNpdF91cBgdIAEoCFIFc2l0'
    'VXASFAoFcGxhbmsYHiABKAhSBXBsYW5rEiEKDGp1bXBpbmdfamFjaxgfIAEoCFILanVtcGluZ0'
    'phY2sSFwoHY2hpbl91cBggIAEoCFIGY2hpblVwEhcKB3B1c2hfdXAYISABKAhSBnB1c2hVcBId'
    'CgpkZWVwX3NxdWF0GCIgASgIUglkZWVwU3F1YXQSJAoOaGlnaF9rbmVlX2xpZnQYIyABKAhSDG'
    'hpZ2hLbmVlTGlmdBIaCghkdW1iYmVsbBgkIAEoCFIIZHVtYmJlbGwSGAoHYmFyYmVsbBglIAEo'
    'CFIHYmFyYmVsbBIWCgZib3hpbmcYJiABKAhSBmJveGluZxIeCgpraWNrYm94aW5nGCcgASgIUg'
    'praWNrYm94aW5nEiUKDmhvcml6b250YWxfYmFyGCggASgIUg1ob3Jpem9udGFsQmFyEiMKDXBh'
    'cmFsbGVsX2JhcnMYKSABKAhSDHBhcmFsbGVsQmFycxInCg93YWxraW5nX21hY2hpbmUYKiABKA'
    'hSDndhbGtpbmdNYWNoaW5lEicKD3N1bW1pdF90cmFpbmVycxgrIAEoCFIOc3VtbWl0VHJhaW5l'
    'cnMSGAoHYm93bGluZxgsIAEoCFIHYm93bGluZxIWCgZ0ZW5uaXMYLSABKAhSBnRlbm5pcxIhCg'
    'x0YWJsZV90ZW5uaXMYLiABKAhSC3RhYmxlVGVubmlzEhIKBGdvbGYYLyABKAhSBGdvbGYSHgoK'
    'YmFza2V0YmFsbBgwIAEoCFIKYmFza2V0YmFsbBIcCgliYWRtaW50b24YMSABKAhSCWJhZG1pbn'
    'RvbhIWCgZob2NrZXkYMiABKAhSBmhvY2tleRIUCgVydWdieRgzIAEoCFIFcnVnYnkSGgoIaGFu'
    'ZGJhbGwYNCABKAhSCGhhbmRiYWxsEhYKBnNxdWFzaBg1IAEoCFIGc3F1YXNoEhoKCGJhc2ViYW'
    'xsGDYgASgIUghiYXNlYmFsbBIaCghzb2Z0YmFsbBg3IAEoCFIIc29mdGJhbGwSIAoLc2h1dHRs'
    'ZWNvY2sYOCABKAhSC3NodXR0bGVjb2NrEiAKC3NlcGFrdGFrcmF3GDkgASgIUgtzZXBha3Rha3'
    'JhdxIhCgxzdHJlZXRfZGFuY2UYOiABKAhSC3N0cmVldERhbmNlEisKEW1vdW50YWluX2NsaW5i'
    'aW5nGDsgASgIUhBtb3VudGFpbkNsaW5iaW5nEiMKDXJvcGVfc2tpcHBpbmcYPCABKAhSDHJvcG'
    'VTa2lwcGluZxIhCgxjbGltYl9zdGFpcnMYPSABKAhSC2NsaW1iU3RhaXJzEhYKBmJhbGxldBg+'
    'IAEoCFIGYmFsbGV0EiEKDHNvY2lhbF9kYW5jZRg/IAEoCFILc29jaWFsRGFuY2USFAoFZGFydH'
    'MYQCABKAhSBWRhcnRzEikKEGhvcnNlYmFja19yaWRpbmcYQSABKAhSD2hvcnNlYmFja1JpZGlu'
    'ZxIlCg5yb2xsZXJfc2thdGluZxhCIAEoCFINcm9sbGVyU2thdGluZxIXCgd0YWlfY2hpGEMgAS'
    'gIUgZ0YWlDaGkSGAoHZnJpc2JlZRhEIAEoCFIHZnJpc2JlZRIbCglodWxhX2hvb3AYRSABKAhS'
    'CGh1bGFIb29wEhYKBnNsZWlnaBhGIAEoCFIGc2xlaWdoEhgKB3NrYXRpbmcYRyABKAhSB3NrYX'
    'RpbmcSOgoZYm9ic2xlaWdoX2FuZF90b2JvZ2dhbmluZxhIIAEoCFIXYm9ic2xlaWdoQW5kVG9i'
    'b2dnYW5pbmcSGAoHY3VybGluZxhJIAEoCFIHY3VybGluZxIdCgppY2VfaG9ja2V5GEogASgIUg'
    'lpY2VIb2NrZXkSGAoHc3VyZmluZxhLIAEoCFIHc3VyZmluZxIaCghzYWlsYm9hdBhMIAEoCFII'
    'c2FpbGJvYXQSHAoJc2FpbGJvYXJkGE0gASgIUglzYWlsYm9hcmQSIAoLZm9sZGJvYXRpbmcYTi'
    'ABKAhSC2ZvbGRib2F0aW5nEhoKCGNhbm9laW5nGE8gASgIUghjYW5vZWluZxIbCglib2F0X3Jh'
    'Y2UYUCABKAhSCGJvYXRSYWNlEhwKCW1vdG9yYm9hdBhRIAEoCFIJbW90b3Jib2F0Eh0KCndhdG'
    'VyX3BvbG8YUiABKAhSCXdhdGVyUG9sbxIjCg1zbGlkaW5nX3BsYXRlGFMgASgIUgxzbGlkaW5n'
    'UGxhdGUSIwoNcm9ja19jbGltYmluZxhUIAEoCFIMcm9ja0NsaW1iaW5nEiUKDmJ1bmdlZV9qdW'
    '1waW5nGFUgASgIUg1idW5nZWVKdW1waW5nEhgKB3BhcmtvdXIYViABKAhSB3BhcmtvdXISFAoF'
    'b3RoZXIYVyABKAhSBW90aGVyEhoKCHNwaW5uaW5nGFggASgIUghzcGlubmluZxIhCgxtYXJ0aW'
    'FsX2FydHMYWSABKAhSC21hcnRpYWxBcnRzEhwKCXRhZWt3b25kbxhaIAEoCFIJdGFla3dvbmRv'
    'EhYKBmthcmF0ZRhbIAEoCFIGa2FyYXRlEh4KCmd5bW5hc3RpY3MYXCABKAhSCmd5bW5hc3RpY3'
    'MSFAoFcGFkZWwYXSABKAhSBXBhZGVsEh4KCnBpY2tsZWJhbGwYXiABKAhSCnBpY2tsZWJhbGwS'
    'IgoMc25vd2JvYXJkaW5nGF8gASgIUgxzbm93Ym9hcmRpbmcSFgoGc2tpaW5nGGAgASgIUgZza2'
    'lpbmcSGgoIcGFkZGxpbmcYYSABKAhSCHBhZGRsaW5nEhAKA2JteBhiIAEoCFIDYm14EhgKB2Zl'
    'bmNpbmcYYyABKAhSB2ZlbmNpbmcSHAoJYmlsbGlhcmRzGGQgASgIUgliaWxsaWFyZHMSIQoMYm'
    'VhY2hfc29jY2VyGGUgASgIUgtiZWFjaFNvY2NlchIpChBiZWFjaF92b2xsZXliYWxsGGYgASgI'
    'Ug9iZWFjaFZvbGxleWJhbGwSHAoJZG9kZ2ViYWxsGGcgASgIUglkb2RnZWJhbGwSEgoEamF6eh'
    'hoIAEoCFIEamF6ehIUCgVsYXRpbhhpIAEoCFIFbGF0aW4SIQoMc3F1YXJlX2RhbmNlGGogASgI'
    'UgtzcXVhcmVEYW5jZRIeCgp2b2xsZXliYWxsGGsgASgIUgp2b2xsZXliYWxsEh8KC2tpdGVfZm'
    'x5aW5nGGwgASgIUgpraXRlRmx5aW5nEhgKB2Zpc2hpbmcYbSABKAhSB2Zpc2hpbmcSGAoHYXJj'
    'aGVyeRhuIAEoCFIHYXJjaGVyeRIaCghzaG9vdGluZxhvIAEoCFIIc2hvb3RpbmcSLgoTd2hpdG'
    'Vfd2F0ZXJfcmFmdGluZxhwIAEoCFIRd2hpdGVXYXRlclJhZnRpbmcSIwoNYWxwaW5lX3NraWlu'
    'ZxhxIAEoCFIMYWxwaW5lU2tpaW5nEjAKFGNyb3NzX2NvdW50cnlfc2tpaW5nGHIgASgIUhJjcm'
    '9zc0NvdW50cnlTa2lpbmcSGAoHYmlhdGhvbhhzIAEoCFIHYmlhdGhvbhIsChJkcmFnb25fYm9h'
    'dF9yYWNpbmcYdCABKAhSEGRyYWdvbkJvYXRSYWNpbmcSFgoGcmFjaW5nGHUgASgIUgZyYWNpbm'
    'c=');

@$core.Deprecated('Use protocol_exercise_sport_mode_sortDescriptor instead')
const protocol_exercise_sport_mode_sort$json = {
  '1': 'protocol_exercise_sport_mode_sort',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'items_len', '3': 2, '4': 1, '5': 13, '10': 'itemsLen'},
    {'1': 'sport_items', '3': 3, '4': 3, '5': 14, '6': '.sport_type', '10': 'sportItems'},
  ],
};

/// Descriptor for `protocol_exercise_sport_mode_sort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_sport_mode_sortDescriptor = $convert.base64Decode(
    'CiFwcm90b2NvbF9leGVyY2lzZV9zcG9ydF9tb2RlX3NvcnQSJwoHb3BlcmF0ZRgBIAEoDjINLm'
    '9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIbCglpdGVtc19sZW4YAiABKA1SCGl0ZW1zTGVuEiwKC3Nw'
    'b3J0X2l0ZW1zGAMgAygOMgsuc3BvcnRfdHlwZVIKc3BvcnRJdGVtcw==');

@$core.Deprecated('Use protocol_exercise_sport_mode_sort_inquire_replyDescriptor instead')
const protocol_exercise_sport_mode_sort_inquire_reply$json = {
  '1': 'protocol_exercise_sport_mode_sort_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'min_show_num', '3': 2, '4': 1, '5': 13, '10': 'minShowNum'},
    {'1': 'max_show_num', '3': 3, '4': 1, '5': 13, '10': 'maxShowNum'},
    {'1': 'all_num', '3': 4, '4': 1, '5': 13, '10': 'allNum'},
    {'1': 'items_len', '3': 5, '4': 1, '5': 13, '10': 'itemsLen'},
    {'1': 'sport_items', '3': 6, '4': 3, '5': 14, '6': '.sport_type', '10': 'sportItems'},
  ],
};

/// Descriptor for `protocol_exercise_sport_mode_sort_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_sport_mode_sort_inquire_replyDescriptor = $convert.base64Decode(
    'Ci9wcm90b2NvbF9leGVyY2lzZV9zcG9ydF9tb2RlX3NvcnRfaW5xdWlyZV9yZXBseRInCgdvcG'
    'VyYXRlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEiAKDG1pbl9zaG93X251bRgCIAEo'
    'DVIKbWluU2hvd051bRIgCgxtYXhfc2hvd19udW0YAyABKA1SCm1heFNob3dOdW0SFwoHYWxsX2'
    '51bRgEIAEoDVIGYWxsTnVtEhsKCWl0ZW1zX2xlbhgFIAEoDVIIaXRlbXNMZW4SLAoLc3BvcnRf'
    'aXRlbXMYBiADKA4yCy5zcG9ydF90eXBlUgpzcG9ydEl0ZW1z');

@$core.Deprecated('Use protocol_exercise_sporting_param_sortDescriptor instead')
const protocol_exercise_sporting_param_sort$json = {
  '1': 'protocol_exercise_sporting_param_sort',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'sport_type', '3': 2, '4': 1, '5': 13, '10': 'sportType'},
    {'1': 'items_len', '3': 3, '4': 1, '5': 13, '10': 'itemsLen'},
    {'1': 'items', '3': 4, '4': 1, '5': 12, '10': 'items'},
  ],
};

/// Descriptor for `protocol_exercise_sporting_param_sort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_sporting_param_sortDescriptor = $convert.base64Decode(
    'CiVwcm90b2NvbF9leGVyY2lzZV9zcG9ydGluZ19wYXJhbV9zb3J0EicKB29wZXJhdGUYASABKA'
    '4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSHQoKc3BvcnRfdHlwZRgCIAEoDVIJc3BvcnRUeXBl'
    'EhsKCWl0ZW1zX2xlbhgDIAEoDVIIaXRlbXNMZW4SFAoFaXRlbXMYBCABKAxSBWl0ZW1z');

@$core.Deprecated('Use protocol_exercise_sporting_param_sort_inquire_replyDescriptor instead')
const protocol_exercise_sporting_param_sort_inquire_reply$json = {
  '1': 'protocol_exercise_sporting_param_sort_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'sport_type', '3': 2, '4': 1, '5': 14, '6': '.sport_type', '10': 'sportType'},
    {'1': 'items_len', '3': 3, '4': 1, '5': 13, '10': 'itemsLen'},
    {'1': 'items', '3': 4, '4': 1, '5': 12, '10': 'items'},
  ],
};

/// Descriptor for `protocol_exercise_sporting_param_sort_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_sporting_param_sort_inquire_replyDescriptor = $convert.base64Decode(
    'CjNwcm90b2NvbF9leGVyY2lzZV9zcG9ydGluZ19wYXJhbV9zb3J0X2lucXVpcmVfcmVwbHkSJw'
    'oHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIqCgpzcG9ydF90eXBlGAIg'
    'ASgOMgsuc3BvcnRfdHlwZVIJc3BvcnRUeXBlEhsKCWl0ZW1zX2xlbhgDIAEoDVIIaXRlbXNMZW'
    '4SFAoFaXRlbXMYBCABKAxSBWl0ZW1z');

@$core.Deprecated('Use protocol_exercise_intelligent_recognitionDescriptor instead')
const protocol_exercise_intelligent_recognition$json = {
  '1': 'protocol_exercise_intelligent_recognition',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'walk_type_switch', '3': 2, '4': 1, '5': 8, '10': 'walkTypeSwitch'},
    {'1': 'run_type_switch', '3': 3, '4': 1, '5': 8, '10': 'runTypeSwitch'},
    {'1': 'bicycle_type_switch', '3': 4, '4': 1, '5': 8, '10': 'bicycleTypeSwitch'},
    {'1': 'rowing_type_switch', '3': 5, '4': 1, '5': 8, '10': 'rowingTypeSwitch'},
    {'1': 'swim_type_switch', '3': 6, '4': 1, '5': 8, '10': 'swimTypeSwitch'},
    {'1': 'sport_auto_pause_switch', '3': 7, '4': 1, '5': 8, '10': 'sportAutoPauseSwitch'},
    {'1': 'sport_auto_end_switch', '3': 8, '4': 1, '5': 8, '10': 'sportAutoEndSwitch'},
  ],
};

/// Descriptor for `protocol_exercise_intelligent_recognition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_intelligent_recognitionDescriptor = $convert.base64Decode(
    'Cilwcm90b2NvbF9leGVyY2lzZV9pbnRlbGxpZ2VudF9yZWNvZ25pdGlvbhInCgdvcGVyYXRlGA'
    'EgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEigKEHdhbGtfdHlwZV9zd2l0Y2gYAiABKAhS'
    'DndhbGtUeXBlU3dpdGNoEiYKD3J1bl90eXBlX3N3aXRjaBgDIAEoCFINcnVuVHlwZVN3aXRjaB'
    'IuChNiaWN5Y2xlX3R5cGVfc3dpdGNoGAQgASgIUhFiaWN5Y2xlVHlwZVN3aXRjaBIsChJyb3dp'
    'bmdfdHlwZV9zd2l0Y2gYBSABKAhSEHJvd2luZ1R5cGVTd2l0Y2gSKAoQc3dpbV90eXBlX3N3aX'
    'RjaBgGIAEoCFIOc3dpbVR5cGVTd2l0Y2gSNQoXc3BvcnRfYXV0b19wYXVzZV9zd2l0Y2gYByAB'
    'KAhSFHNwb3J0QXV0b1BhdXNlU3dpdGNoEjEKFXNwb3J0X2F1dG9fZW5kX3N3aXRjaBgIIAEoCF'
    'ISc3BvcnRBdXRvRW5kU3dpdGNo');

@$core.Deprecated('Use protocol_exercise_intelligent_recognition_inquire_replyDescriptor instead')
const protocol_exercise_intelligent_recognition_inquire_reply$json = {
  '1': 'protocol_exercise_intelligent_recognition_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'walk_type_switch', '3': 2, '4': 1, '5': 8, '10': 'walkTypeSwitch'},
    {'1': 'run_type_switch', '3': 3, '4': 1, '5': 8, '10': 'runTypeSwitch'},
    {'1': 'bicycle_type_switch', '3': 4, '4': 1, '5': 8, '10': 'bicycleTypeSwitch'},
    {'1': 'rowing_type_switch', '3': 5, '4': 1, '5': 8, '10': 'rowingTypeSwitch'},
    {'1': 'swim_type_switch', '3': 6, '4': 1, '5': 8, '10': 'swimTypeSwitch'},
    {'1': 'sport_auto_pause_switch', '3': 7, '4': 1, '5': 8, '10': 'sportAutoPauseSwitch'},
    {'1': 'sport_auto_end_switch', '3': 8, '4': 1, '5': 8, '10': 'sportAutoEndSwitch'},
  ],
};

/// Descriptor for `protocol_exercise_intelligent_recognition_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_intelligent_recognition_inquire_replyDescriptor = $convert.base64Decode(
    'Cjdwcm90b2NvbF9leGVyY2lzZV9pbnRlbGxpZ2VudF9yZWNvZ25pdGlvbl9pbnF1aXJlX3JlcG'
    'x5EicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSKAoQd2Fsa190eXBl'
    'X3N3aXRjaBgCIAEoCFIOd2Fsa1R5cGVTd2l0Y2gSJgoPcnVuX3R5cGVfc3dpdGNoGAMgASgIUg'
    '1ydW5UeXBlU3dpdGNoEi4KE2JpY3ljbGVfdHlwZV9zd2l0Y2gYBCABKAhSEWJpY3ljbGVUeXBl'
    'U3dpdGNoEiwKEnJvd2luZ190eXBlX3N3aXRjaBgFIAEoCFIQcm93aW5nVHlwZVN3aXRjaBIoCh'
    'Bzd2ltX3R5cGVfc3dpdGNoGAYgASgIUg5zd2ltVHlwZVN3aXRjaBI1ChdzcG9ydF9hdXRvX3Bh'
    'dXNlX3N3aXRjaBgHIAEoCFIUc3BvcnRBdXRvUGF1c2VTd2l0Y2gSMQoVc3BvcnRfYXV0b19lbm'
    'Rfc3dpdGNoGAggASgIUhJzcG9ydEF1dG9FbmRTd2l0Y2g=');

@$core.Deprecated('Use protocol_exercise_heart_rate_zoneDescriptor instead')
const protocol_exercise_heart_rate_zone$json = {
  '1': 'protocol_exercise_heart_rate_zone',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'zone1', '3': 2, '4': 1, '5': 13, '10': 'zone1'},
    {'1': 'zone2', '3': 3, '4': 1, '5': 13, '10': 'zone2'},
    {'1': 'zone3', '3': 4, '4': 1, '5': 13, '10': 'zone3'},
    {'1': 'zone4', '3': 5, '4': 1, '5': 13, '10': 'zone4'},
    {'1': 'zone5', '3': 6, '4': 1, '5': 13, '10': 'zone5'},
    {'1': 'zone6', '3': 7, '4': 1, '5': 13, '10': 'zone6'},
  ],
};

/// Descriptor for `protocol_exercise_heart_rate_zone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_heart_rate_zoneDescriptor = $convert.base64Decode(
    'CiFwcm90b2NvbF9leGVyY2lzZV9oZWFydF9yYXRlX3pvbmUSJwoHb3BlcmF0ZRgBIAEoDjINLm'
    '9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIUCgV6b25lMRgCIAEoDVIFem9uZTESFAoFem9uZTIYAyAB'
    'KA1SBXpvbmUyEhQKBXpvbmUzGAQgASgNUgV6b25lMxIUCgV6b25lNBgFIAEoDVIFem9uZTQSFA'
    'oFem9uZTUYBiABKA1SBXpvbmU1EhQKBXpvbmU2GAcgASgNUgV6b25lNg==');

@$core.Deprecated('Use protocol_exercise_gps_infoDescriptor instead')
const protocol_exercise_gps_info$json = {
  '1': 'protocol_exercise_gps_info',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'gps_operate', '3': 2, '4': 1, '5': 14, '6': '.gps_operate_type', '10': 'gpsOperate'},
    {'1': 'func_table', '3': 3, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'sport_type', '3': 4, '4': 1, '5': 13, '10': 'sportType'},
  ],
};

/// Descriptor for `protocol_exercise_gps_info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_gps_infoDescriptor = $convert.base64Decode(
    'Chpwcm90b2NvbF9leGVyY2lzZV9ncHNfaW5mbxInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV'
    '90eXBlUgdvcGVyYXRlEjIKC2dwc19vcGVyYXRlGAIgASgOMhEuZ3BzX29wZXJhdGVfdHlwZVIK'
    'Z3BzT3BlcmF0ZRIdCgpmdW5jX3RhYmxlGAMgASgNUglmdW5jVGFibGUSHQoKc3BvcnRfdHlwZR'
    'gEIAEoDVIJc3BvcnRUeXBl');

@$core.Deprecated('Use protocol_exercise_gps_info_replyDescriptor instead')
const protocol_exercise_gps_info_reply$json = {
  '1': 'protocol_exercise_gps_info_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'rmc_latitude', '3': 2, '4': 1, '5': 5, '10': 'rmcLatitude'},
    {'1': 'rmc_longitude', '3': 3, '4': 1, '5': 5, '10': 'rmcLongitude'},
    {'1': 'gsa_location_type', '3': 4, '4': 1, '5': 13, '10': 'gsaLocationType'},
    {'1': 'gsa_pdop', '3': 5, '4': 1, '5': 13, '10': 'gsaPdop'},
  ],
};

/// Descriptor for `protocol_exercise_gps_info_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_exercise_gps_info_replyDescriptor = $convert.base64Decode(
    'CiBwcm90b2NvbF9leGVyY2lzZV9ncHNfaW5mb19yZXBseRInCgdvcGVyYXRlGAEgASgOMg0ub3'
    'BlcmF0ZV90eXBlUgdvcGVyYXRlEiEKDHJtY19sYXRpdHVkZRgCIAEoBVILcm1jTGF0aXR1ZGUS'
    'IwoNcm1jX2xvbmdpdHVkZRgDIAEoBVIMcm1jTG9uZ2l0dWRlEioKEWdzYV9sb2NhdGlvbl90eX'
    'BlGAQgASgNUg9nc2FMb2NhdGlvblR5cGUSGQoIZ3NhX3Bkb3AYBSABKA1SB2dzYVBkb3A=');

