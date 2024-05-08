//
//  Generated code. Do not modify.
//  source: appList.proto
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

@$core.Deprecated('Use app_listDescriptor instead')
const app_list$json = {
  '1': 'app_list',
  '2': [
    {'1': 'APP_LIST_ACTIVITY', '2': 0},
    {'1': 'APP_LIST_WORKOUT', '2': 1},
    {'1': 'APP_LIST_STEPS', '2': 2},
    {'1': 'APP_LIST_HEARTRATE', '2': 3},
    {'1': 'APP_LIST_SLEEP', '2': 4},
    {'1': 'APP_LIST_STRESS', '2': 5},
    {'1': 'APP_LIST_MENSTRUATION', '2': 6},
    {'1': 'APP_LIST_BREATHE', '2': 7},
    {'1': 'APP_LIST_ALARMS', '2': 8},
    {'1': 'APP_LIST_PHONE', '2': 9},
    {'1': 'APP_LIST_TIMERS', '2': 10},
    {'1': 'APP_LIST_STOPWATCH', '2': 11},
    {'1': 'APP_LIST_SPO2', '2': 12},
    {'1': 'APP_LIST_WEATHER', '2': 13},
    {'1': 'APP_LIST_CAMERA_REMOTE', '2': 14},
    {'1': 'APP_LIST_MUSIC', '2': 15},
    {'1': 'APP_LIST_FIND_PHONE', '2': 16},
    {'1': 'APP_LIST_WORLD_CLOCK', '2': 17},
    {'1': 'APP_LIST_SETTINGS', '2': 18},
  ],
};

/// Descriptor for `app_list`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List app_listDescriptor = $convert.base64Decode(
    'CghhcHBfbGlzdBIVChFBUFBfTElTVF9BQ1RJVklUWRAAEhQKEEFQUF9MSVNUX1dPUktPVVQQAR'
    'ISCg5BUFBfTElTVF9TVEVQUxACEhYKEkFQUF9MSVNUX0hFQVJUUkFURRADEhIKDkFQUF9MSVNU'
    'X1NMRUVQEAQSEwoPQVBQX0xJU1RfU1RSRVNTEAUSGQoVQVBQX0xJU1RfTUVOU1RSVUFUSU9OEA'
    'YSFAoQQVBQX0xJU1RfQlJFQVRIRRAHEhMKD0FQUF9MSVNUX0FMQVJNUxAIEhIKDkFQUF9MSVNU'
    'X1BIT05FEAkSEwoPQVBQX0xJU1RfVElNRVJTEAoSFgoSQVBQX0xJU1RfU1RPUFdBVENIEAsSEQ'
    'oNQVBQX0xJU1RfU1BPMhAMEhQKEEFQUF9MSVNUX1dFQVRIRVIQDRIaChZBUFBfTElTVF9DQU1F'
    'UkFfUkVNT1RFEA4SEgoOQVBQX0xJU1RfTVVTSUMQDxIXChNBUFBfTElTVF9GSU5EX1BIT05FEB'
    'ASGAoUQVBQX0xJU1RfV09STERfQ0xPQ0sQERIVChFBUFBfTElTVF9TRVRUSU5HUxAS');

@$core.Deprecated('Use protocol_app_list_operateDescriptor instead')
const protocol_app_list_operate$json = {
  '1': 'protocol_app_list_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'list', '3': 2, '4': 3, '5': 14, '6': '.app_list', '10': 'list'},
  ],
};

/// Descriptor for `protocol_app_list_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_app_list_operateDescriptor = $convert.base64Decode(
    'Chlwcm90b2NvbF9hcHBfbGlzdF9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3'
    'R5cGVSB29wZXJhdGUSHQoEbGlzdBgCIAMoDjIJLmFwcF9saXN0UgRsaXN0');

@$core.Deprecated('Use protocol_app_list_inquire_replyDescriptor instead')
const protocol_app_list_inquire_reply$json = {
  '1': 'protocol_app_list_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'func_table', '3': 2, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'support_show_num', '3': 3, '4': 1, '5': 13, '10': 'supportShowNum'},
    {'1': 'list', '3': 4, '4': 3, '5': 14, '6': '.app_list', '10': 'list'},
    {'1': 'app_list_activity_support', '3': 5, '4': 1, '5': 8, '10': 'appListActivitySupport'},
    {'1': 'app_list_workout_support', '3': 6, '4': 1, '5': 8, '10': 'appListWorkoutSupport'},
    {'1': 'app_list_steps_support', '3': 7, '4': 1, '5': 8, '10': 'appListStepsSupport'},
    {'1': 'app_list_heartrate_support', '3': 8, '4': 1, '5': 8, '10': 'appListHeartrateSupport'},
    {'1': 'app_list_sleep_support', '3': 9, '4': 1, '5': 8, '10': 'appListSleepSupport'},
    {'1': 'app_list_stress_support', '3': 10, '4': 1, '5': 8, '10': 'appListStressSupport'},
    {'1': 'app_list_menstruation_support', '3': 11, '4': 1, '5': 8, '10': 'appListMenstruationSupport'},
    {'1': 'app_list_breathe_support', '3': 12, '4': 1, '5': 8, '10': 'appListBreatheSupport'},
    {'1': 'app_list_alarms_support', '3': 13, '4': 1, '5': 8, '10': 'appListAlarmsSupport'},
    {'1': 'app_list_phone_support', '3': 14, '4': 1, '5': 8, '10': 'appListPhoneSupport'},
    {'1': 'app_list_timers_support', '3': 15, '4': 1, '5': 8, '10': 'appListTimersSupport'},
    {'1': 'app_list_stopwatch_support', '3': 16, '4': 1, '5': 8, '10': 'appListStopwatchSupport'},
    {'1': 'app_list_spo2_support', '3': 17, '4': 1, '5': 8, '10': 'appListSpo2Support'},
    {'1': 'app_list_weather_support', '3': 18, '4': 1, '5': 8, '10': 'appListWeatherSupport'},
    {'1': 'app_list_camera_remote_support', '3': 19, '4': 1, '5': 8, '10': 'appListCameraRemoteSupport'},
    {'1': 'app_list_music_support', '3': 20, '4': 1, '5': 8, '10': 'appListMusicSupport'},
    {'1': 'app_list_find_phone_support', '3': 21, '4': 1, '5': 8, '10': 'appListFindPhoneSupport'},
    {'1': 'app_list_world_clock_support', '3': 22, '4': 1, '5': 8, '10': 'appListWorldClockSupport'},
    {'1': 'app_list_settings_support', '3': 23, '4': 1, '5': 8, '10': 'appListSettingsSupport'},
  ],
};

/// Descriptor for `protocol_app_list_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_app_list_inquire_replyDescriptor = $convert.base64Decode(
    'Ch9wcm90b2NvbF9hcHBfbGlzdF9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS5vcG'
    'VyYXRlX3R5cGVSB29wZXJhdGUSHQoKZnVuY190YWJsZRgCIAEoDVIJZnVuY1RhYmxlEigKEHN1'
    'cHBvcnRfc2hvd19udW0YAyABKA1SDnN1cHBvcnRTaG93TnVtEh0KBGxpc3QYBCADKA4yCS5hcH'
    'BfbGlzdFIEbGlzdBI5ChlhcHBfbGlzdF9hY3Rpdml0eV9zdXBwb3J0GAUgASgIUhZhcHBMaXN0'
    'QWN0aXZpdHlTdXBwb3J0EjcKGGFwcF9saXN0X3dvcmtvdXRfc3VwcG9ydBgGIAEoCFIVYXBwTG'
    'lzdFdvcmtvdXRTdXBwb3J0EjMKFmFwcF9saXN0X3N0ZXBzX3N1cHBvcnQYByABKAhSE2FwcExp'
    'c3RTdGVwc1N1cHBvcnQSOwoaYXBwX2xpc3RfaGVhcnRyYXRlX3N1cHBvcnQYCCABKAhSF2FwcE'
    'xpc3RIZWFydHJhdGVTdXBwb3J0EjMKFmFwcF9saXN0X3NsZWVwX3N1cHBvcnQYCSABKAhSE2Fw'
    'cExpc3RTbGVlcFN1cHBvcnQSNQoXYXBwX2xpc3Rfc3RyZXNzX3N1cHBvcnQYCiABKAhSFGFwcE'
    'xpc3RTdHJlc3NTdXBwb3J0EkEKHWFwcF9saXN0X21lbnN0cnVhdGlvbl9zdXBwb3J0GAsgASgI'
    'UhphcHBMaXN0TWVuc3RydWF0aW9uU3VwcG9ydBI3ChhhcHBfbGlzdF9icmVhdGhlX3N1cHBvcn'
    'QYDCABKAhSFWFwcExpc3RCcmVhdGhlU3VwcG9ydBI1ChdhcHBfbGlzdF9hbGFybXNfc3VwcG9y'
    'dBgNIAEoCFIUYXBwTGlzdEFsYXJtc1N1cHBvcnQSMwoWYXBwX2xpc3RfcGhvbmVfc3VwcG9ydB'
    'gOIAEoCFITYXBwTGlzdFBob25lU3VwcG9ydBI1ChdhcHBfbGlzdF90aW1lcnNfc3VwcG9ydBgP'
    'IAEoCFIUYXBwTGlzdFRpbWVyc1N1cHBvcnQSOwoaYXBwX2xpc3Rfc3RvcHdhdGNoX3N1cHBvcn'
    'QYECABKAhSF2FwcExpc3RTdG9wd2F0Y2hTdXBwb3J0EjEKFWFwcF9saXN0X3NwbzJfc3VwcG9y'
    'dBgRIAEoCFISYXBwTGlzdFNwbzJTdXBwb3J0EjcKGGFwcF9saXN0X3dlYXRoZXJfc3VwcG9ydB'
    'gSIAEoCFIVYXBwTGlzdFdlYXRoZXJTdXBwb3J0EkIKHmFwcF9saXN0X2NhbWVyYV9yZW1vdGVf'
    'c3VwcG9ydBgTIAEoCFIaYXBwTGlzdENhbWVyYVJlbW90ZVN1cHBvcnQSMwoWYXBwX2xpc3RfbX'
    'VzaWNfc3VwcG9ydBgUIAEoCFITYXBwTGlzdE11c2ljU3VwcG9ydBI8ChthcHBfbGlzdF9maW5k'
    'X3Bob25lX3N1cHBvcnQYFSABKAhSF2FwcExpc3RGaW5kUGhvbmVTdXBwb3J0Ej4KHGFwcF9saX'
    'N0X3dvcmxkX2Nsb2NrX3N1cHBvcnQYFiABKAhSGGFwcExpc3RXb3JsZENsb2NrU3VwcG9ydBI5'
    'ChlhcHBfbGlzdF9zZXR0aW5nc19zdXBwb3J0GBcgASgIUhZhcHBMaXN0U2V0dGluZ3NTdXBwb3'
    'J0');

