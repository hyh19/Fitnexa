//
//  Generated code. Do not modify.
//  source: card.proto
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

@$core.Deprecated('Use quick_card_typeDescriptor instead')
const quick_card_type$json = {
  '1': 'quick_card_type',
  '2': [
    {'1': 'CARD_TYPE_EXERCISE', '2': 0},
    {'1': 'CARD_TYPE_WEATHER', '2': 1},
    {'1': 'CARD_TYPE_SUGGEST', '2': 2},
    {'1': 'CARD_TYPE_DIAL', '2': 3},
    {'1': 'CARD_TYPE_ACTIVITY', '2': 4},
    {'1': 'CARD_TYPE_HEARTRATE', '2': 5},
    {'1': 'CARD_TYPE_SLEEP', '2': 6},
    {'1': 'CARD_TYPE_STEPS', '2': 7},
    {'1': 'CARD_TYPE_SPO2', '2': 8},
    {'1': 'CARD_TYPE_MENSTRUATION', '2': 9},
    {'1': 'CARD_TYPE_MEASUREMENT', '2': 10},
    {'1': 'CARD_TYPE_RECENT_WORKOUT', '2': 11},
    {'1': 'CARD_TYPE_HRV', '2': 12},
    {'1': 'CARD_TYPE_UV', '2': 13},
    {'1': 'CARD_TYPE_ASTRONOMY', '2': 14},
    {'1': 'CARD_TYPE_WORLD_CLOCK', '2': 15},
  ],
};

/// Descriptor for `quick_card_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List quick_card_typeDescriptor = $convert.base64Decode(
    'Cg9xdWlja19jYXJkX3R5cGUSFgoSQ0FSRF9UWVBFX0VYRVJDSVNFEAASFQoRQ0FSRF9UWVBFX1'
    'dFQVRIRVIQARIVChFDQVJEX1RZUEVfU1VHR0VTVBACEhIKDkNBUkRfVFlQRV9ESUFMEAMSFgoS'
    'Q0FSRF9UWVBFX0FDVElWSVRZEAQSFwoTQ0FSRF9UWVBFX0hFQVJUUkFURRAFEhMKD0NBUkRfVF'
    'lQRV9TTEVFUBAGEhMKD0NBUkRfVFlQRV9TVEVQUxAHEhIKDkNBUkRfVFlQRV9TUE8yEAgSGgoW'
    'Q0FSRF9UWVBFX01FTlNUUlVBVElPThAJEhkKFUNBUkRfVFlQRV9NRUFTVVJFTUVOVBAKEhwKGE'
    'NBUkRfVFlQRV9SRUNFTlRfV09SS09VVBALEhEKDUNBUkRfVFlQRV9IUlYQDBIQCgxDQVJEX1RZ'
    'UEVfVVYQDRIXChNDQVJEX1RZUEVfQVNUUk9OT01ZEA4SGQoVQ0FSRF9UWVBFX1dPUkxEX0NMT0'
    'NLEA8=');

@$core.Deprecated('Use quick_card_funcDescriptor instead')
const quick_card_func$json = {
  '1': 'quick_card_func',
  '2': [
    {'1': 'is_support', '3': 1, '4': 1, '5': 8, '10': 'isSupport'},
    {'1': 'is_delete', '3': 2, '4': 1, '5': 8, '10': 'isDelete'},
  ],
};

/// Descriptor for `quick_card_func`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quick_card_funcDescriptor = $convert.base64Decode(
    'Cg9xdWlja19jYXJkX2Z1bmMSHQoKaXNfc3VwcG9ydBgBIAEoCFIJaXNTdXBwb3J0EhsKCWlzX2'
    'RlbGV0ZRgCIAEoCFIIaXNEZWxldGU=');

@$core.Deprecated('Use protocol_quick_card_operateDescriptor instead')
const protocol_quick_card_operate$json = {
  '1': 'protocol_quick_card_operate',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'card_type', '3': 2, '4': 3, '5': 14, '6': '.quick_card_type', '10': 'cardType'},
  ],
};

/// Descriptor for `protocol_quick_card_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_quick_card_operateDescriptor = $convert.base64Decode(
    'Chtwcm90b2NvbF9xdWlja19jYXJkX29wZXJhdGUSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZXJhdG'
    'VfdHlwZVIHb3BlcmF0ZRItCgljYXJkX3R5cGUYAiADKA4yEC5xdWlja19jYXJkX3R5cGVSCGNh'
    'cmRUeXBl');

@$core.Deprecated('Use protocol_quick_card_inquire_replyDescriptor instead')
const protocol_quick_card_inquire_reply$json = {
  '1': 'protocol_quick_card_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'quick_card_support_max', '3': 2, '4': 1, '5': 13, '10': 'quickCardSupportMax'},
    {'1': 'quick_card_support_min', '3': 3, '4': 1, '5': 13, '10': 'quickCardSupportMin'},
    {'1': 'func_table', '3': 4, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'card_type', '3': 5, '4': 3, '5': 14, '6': '.quick_card_type', '10': 'cardType'},
    {'1': 'card_type_exercise_support', '3': 6, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeExerciseSupport'},
    {'1': 'card_type_weather_support', '3': 7, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeWeatherSupport'},
    {'1': 'card_type_suggest_support', '3': 8, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeSuggestSupport'},
    {'1': 'card_type_dial_support', '3': 9, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeDialSupport'},
    {'1': 'card_type_activity_support', '3': 10, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeActivitySupport'},
    {'1': 'card_type_heartrate_support', '3': 11, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeHeartrateSupport'},
    {'1': 'card_type_sleep_support', '3': 12, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeSleepSupport'},
    {'1': 'card_type_steps_support', '3': 13, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeStepsSupport'},
    {'1': 'card_type_spo2_support', '3': 14, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeSpo2Support'},
    {'1': 'card_type_menstruation_support', '3': 15, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeMenstruationSupport'},
    {'1': 'card_type_measurement_support', '3': 16, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeMeasurementSupport'},
    {'1': 'card_type_recent_workout_support', '3': 17, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeRecentWorkoutSupport'},
    {'1': 'card_type_hrv_support', '3': 18, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeHrvSupport'},
    {'1': 'card_type_uv_support', '3': 19, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeUvSupport'},
    {'1': 'card_type_astronomy_support', '3': 20, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeAstronomySupport'},
    {'1': 'card_type_world_clock_support', '3': 21, '4': 1, '5': 11, '6': '.quick_card_func', '10': 'cardTypeWorldClockSupport'},
  ],
};

/// Descriptor for `protocol_quick_card_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_quick_card_inquire_replyDescriptor = $convert.base64Decode(
    'CiFwcm90b2NvbF9xdWlja19jYXJkX2lucXVpcmVfcmVwbHkSJwoHb3BlcmF0ZRgBIAEoDjINLm'
    '9wZXJhdGVfdHlwZVIHb3BlcmF0ZRIzChZxdWlja19jYXJkX3N1cHBvcnRfbWF4GAIgASgNUhNx'
    'dWlja0NhcmRTdXBwb3J0TWF4EjMKFnF1aWNrX2NhcmRfc3VwcG9ydF9taW4YAyABKA1SE3F1aW'
    'NrQ2FyZFN1cHBvcnRNaW4SHQoKZnVuY190YWJsZRgEIAEoDVIJZnVuY1RhYmxlEi0KCWNhcmRf'
    'dHlwZRgFIAMoDjIQLnF1aWNrX2NhcmRfdHlwZVIIY2FyZFR5cGUSTQoaY2FyZF90eXBlX2V4ZX'
    'JjaXNlX3N1cHBvcnQYBiABKAsyEC5xdWlja19jYXJkX2Z1bmNSF2NhcmRUeXBlRXhlcmNpc2VT'
    'dXBwb3J0EksKGWNhcmRfdHlwZV93ZWF0aGVyX3N1cHBvcnQYByABKAsyEC5xdWlja19jYXJkX2'
    'Z1bmNSFmNhcmRUeXBlV2VhdGhlclN1cHBvcnQSSwoZY2FyZF90eXBlX3N1Z2dlc3Rfc3VwcG9y'
    'dBgIIAEoCzIQLnF1aWNrX2NhcmRfZnVuY1IWY2FyZFR5cGVTdWdnZXN0U3VwcG9ydBJFChZjYX'
    'JkX3R5cGVfZGlhbF9zdXBwb3J0GAkgASgLMhAucXVpY2tfY2FyZF9mdW5jUhNjYXJkVHlwZURp'
    'YWxTdXBwb3J0Ek0KGmNhcmRfdHlwZV9hY3Rpdml0eV9zdXBwb3J0GAogASgLMhAucXVpY2tfY2'
    'FyZF9mdW5jUhdjYXJkVHlwZUFjdGl2aXR5U3VwcG9ydBJPChtjYXJkX3R5cGVfaGVhcnRyYXRl'
    'X3N1cHBvcnQYCyABKAsyEC5xdWlja19jYXJkX2Z1bmNSGGNhcmRUeXBlSGVhcnRyYXRlU3VwcG'
    '9ydBJHChdjYXJkX3R5cGVfc2xlZXBfc3VwcG9ydBgMIAEoCzIQLnF1aWNrX2NhcmRfZnVuY1IU'
    'Y2FyZFR5cGVTbGVlcFN1cHBvcnQSRwoXY2FyZF90eXBlX3N0ZXBzX3N1cHBvcnQYDSABKAsyEC'
    '5xdWlja19jYXJkX2Z1bmNSFGNhcmRUeXBlU3RlcHNTdXBwb3J0EkUKFmNhcmRfdHlwZV9zcG8y'
    'X3N1cHBvcnQYDiABKAsyEC5xdWlja19jYXJkX2Z1bmNSE2NhcmRUeXBlU3BvMlN1cHBvcnQSVQ'
    'oeY2FyZF90eXBlX21lbnN0cnVhdGlvbl9zdXBwb3J0GA8gASgLMhAucXVpY2tfY2FyZF9mdW5j'
    'UhtjYXJkVHlwZU1lbnN0cnVhdGlvblN1cHBvcnQSUwodY2FyZF90eXBlX21lYXN1cmVtZW50X3'
    'N1cHBvcnQYECABKAsyEC5xdWlja19jYXJkX2Z1bmNSGmNhcmRUeXBlTWVhc3VyZW1lbnRTdXBw'
    'b3J0ElgKIGNhcmRfdHlwZV9yZWNlbnRfd29ya291dF9zdXBwb3J0GBEgASgLMhAucXVpY2tfY2'
    'FyZF9mdW5jUhxjYXJkVHlwZVJlY2VudFdvcmtvdXRTdXBwb3J0EkMKFWNhcmRfdHlwZV9ocnZf'
    'c3VwcG9ydBgSIAEoCzIQLnF1aWNrX2NhcmRfZnVuY1ISY2FyZFR5cGVIcnZTdXBwb3J0EkEKFG'
    'NhcmRfdHlwZV91dl9zdXBwb3J0GBMgASgLMhAucXVpY2tfY2FyZF9mdW5jUhFjYXJkVHlwZVV2'
    'U3VwcG9ydBJPChtjYXJkX3R5cGVfYXN0cm9ub215X3N1cHBvcnQYFCABKAsyEC5xdWlja19jYX'
    'JkX2Z1bmNSGGNhcmRUeXBlQXN0cm9ub215U3VwcG9ydBJSCh1jYXJkX3R5cGVfd29ybGRfY2xv'
    'Y2tfc3VwcG9ydBgVIAEoCzIQLnF1aWNrX2NhcmRfZnVuY1IZY2FyZFR5cGVXb3JsZENsb2NrU3'
    'VwcG9ydA==');

