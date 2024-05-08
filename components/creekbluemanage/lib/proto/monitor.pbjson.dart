///
//  Generated code. Do not modify.
//  source: monitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use operate_typeDescriptor instead')
const operate_type$json = const {
  '1': 'operate_type',
  '2': const [
    const {'1': 'INVALID', '2': 0},
    const {'1': 'INQUIRE', '2': 1},
    const {'1': 'SET', '2': 2},
  ],
};

/// Descriptor for `operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operate_typeDescriptor = $convert.base64Decode('CgxvcGVyYXRlX3R5cGUSCwoHSU5WQUxJRBAAEgsKB0lOUVVJUkUQARIHCgNTRVQQAg==');
@$core.Deprecated('Use notify_typeDescriptor instead')
const notify_type$json = const {
  '1': 'notify_type',
  '2': const [
    const {'1': 'ALLOW', '2': 0},
    const {'1': 'SILENT', '2': 1},
    const {'1': 'CLOSE', '2': 2},
  ],
};

/// Descriptor for `notify_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List notify_typeDescriptor = $convert.base64Decode('Cgtub3RpZnlfdHlwZRIJCgVBTExPVxAAEgoKBlNJTEVOVBABEgkKBUNMT1NFEAI=');
@$core.Deprecated('Use health_monitor_modeDescriptor instead')
const health_monitor_mode$json = const {
  '1': 'health_monitor_mode',
  '2': const [
    const {'1': 'MANUAL', '2': 0},
    const {'1': 'AUTO', '2': 1},
    const {'1': 'CONTINUOUS', '2': 2},
    const {'1': 'INTELLIHENT', '2': 3},
  ],
};

/// Descriptor for `health_monitor_mode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List health_monitor_modeDescriptor = $convert.base64Decode('ChNoZWFsdGhfbW9uaXRvcl9tb2RlEgoKBk1BTlVBTBAAEggKBEFVVE8QARIOCgpDT05USU5VT1VTEAISDwoLSU5URUxMSUhFTlQQAw==');
@$core.Deprecated('Use health_typeDescriptor instead')
const health_type$json = const {
  '1': 'health_type',
  '2': const [
    const {'1': 'HEART_RATE', '2': 0},
    const {'1': 'STRESS', '2': 1},
    const {'1': 'SPO2', '2': 2},
    const {'1': 'NOISE', '2': 3},
    const {'1': 'BODY_ENERGY', '2': 4},
    const {'1': 'RESPIRATORY_RATE', '2': 5},
    const {'1': 'SKIN_TEMPERATURE', '2': 6},
  ],
};

/// Descriptor for `health_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List health_typeDescriptor = $convert.base64Decode('CgtoZWFsdGhfdHlwZRIOCgpIRUFSVF9SQVRFEAASCgoGU1RSRVNTEAESCAoEU1BPMhACEgkKBU5PSVNFEAMSDwoLQk9EWV9FTkVSR1kQBBIUChBSRVNQSVJBVE9SWV9SQVRFEAUSFAoQU0tJTl9URU1QRVJBVFVSRRAG');
@$core.Deprecated('Use protocol_health_monitor_auto_adjustDescriptor instead')
const protocol_health_monitor_auto_adjust$json = const {
  '1': 'protocol_health_monitor_auto_adjust',
  '2': const [
    const {'1': 'switch_flag', '3': 1, '4': 1, '5': 8, '10': 'switchFlag'},
    const {'1': 'adjust_mode', '3': 2, '4': 1, '5': 14, '6': '.health_monitor_mode', '10': 'adjustMode'},
    const {'1': 'start_hour', '3': 3, '4': 1, '5': 13, '10': 'startHour'},
    const {'1': 'start_minute', '3': 4, '4': 1, '5': 13, '10': 'startMinute'},
    const {'1': 'end_hour', '3': 5, '4': 1, '5': 13, '10': 'endHour'},
    const {'1': 'end_minute', '3': 6, '4': 1, '5': 13, '10': 'endMinute'},
  ],
};

/// Descriptor for `protocol_health_monitor_auto_adjust`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_monitor_auto_adjustDescriptor = $convert.base64Decode('CiNwcm90b2NvbF9oZWFsdGhfbW9uaXRvcl9hdXRvX2FkanVzdBIfCgtzd2l0Y2hfZmxhZxgBIAEoCFIKc3dpdGNoRmxhZxI1CgthZGp1c3RfbW9kZRgCIAEoDjIULmhlYWx0aF9tb25pdG9yX21vZGVSCmFkanVzdE1vZGUSHQoKc3RhcnRfaG91chgDIAEoDVIJc3RhcnRIb3VyEiEKDHN0YXJ0X21pbnV0ZRgEIAEoDVILc3RhcnRNaW51dGUSGQoIZW5kX2hvdXIYBSABKA1SB2VuZEhvdXISHQoKZW5kX21pbnV0ZRgGIAEoDVIJZW5kTWludXRl');
@$core.Deprecated('Use protocol_heart_monitor_notifyDescriptor instead')
const protocol_heart_monitor_notify$json = const {
  '1': 'protocol_heart_monitor_notify',
  '2': const [
    const {'1': 'notify_flag', '3': 1, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
    const {'1': 'high_remind_switch', '3': 2, '4': 1, '5': 8, '10': 'highRemindSwitch'},
    const {'1': 'low_remind_switch', '3': 3, '4': 1, '5': 8, '10': 'lowRemindSwitch'},
    const {'1': 'high_threshold_value', '3': 4, '4': 1, '5': 13, '10': 'highThresholdValue'},
    const {'1': 'low_threshold_value', '3': 5, '4': 1, '5': 13, '10': 'lowThresholdValue'},
    const {'1': 'interval', '3': 6, '4': 1, '5': 13, '10': 'interval'},
    const {'1': 'repeat', '3': 7, '4': 3, '5': 8, '10': 'repeat'},
    const {'1': 'start_hour', '3': 8, '4': 1, '5': 13, '10': 'startHour'},
    const {'1': 'start_minute', '3': 9, '4': 1, '5': 13, '10': 'startMinute'},
    const {'1': 'end_hour', '3': 10, '4': 1, '5': 13, '10': 'endHour'},
    const {'1': 'end_minute', '3': 11, '4': 1, '5': 13, '10': 'endMinute'},
  ],
};

/// Descriptor for `protocol_heart_monitor_notify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_heart_monitor_notifyDescriptor = $convert.base64Decode('Ch1wcm90b2NvbF9oZWFydF9tb25pdG9yX25vdGlmeRItCgtub3RpZnlfZmxhZxgBIAEoDjIMLm5vdGlmeV90eXBlUgpub3RpZnlGbGFnEiwKEmhpZ2hfcmVtaW5kX3N3aXRjaBgCIAEoCFIQaGlnaFJlbWluZFN3aXRjaBIqChFsb3dfcmVtaW5kX3N3aXRjaBgDIAEoCFIPbG93UmVtaW5kU3dpdGNoEjAKFGhpZ2hfdGhyZXNob2xkX3ZhbHVlGAQgASgNUhJoaWdoVGhyZXNob2xkVmFsdWUSLgoTbG93X3RocmVzaG9sZF92YWx1ZRgFIAEoDVIRbG93VGhyZXNob2xkVmFsdWUSGgoIaW50ZXJ2YWwYBiABKA1SCGludGVydmFsEhYKBnJlcGVhdBgHIAMoCFIGcmVwZWF0Eh0KCnN0YXJ0X2hvdXIYCCABKA1SCXN0YXJ0SG91chIhCgxzdGFydF9taW51dGUYCSABKA1SC3N0YXJ0TWludXRlEhkKCGVuZF9ob3VyGAogASgNUgdlbmRIb3VyEh0KCmVuZF9taW51dGUYCyABKA1SCWVuZE1pbnV0ZQ==');
@$core.Deprecated('Use protocol_health_monitor_operateDescriptor instead')
const protocol_health_monitor_operate$json = const {
  '1': 'protocol_health_monitor_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'health_type', '3': 2, '4': 1, '5': 14, '6': '.health_type', '10': 'healthType'},
    const {'1': 'default_mode', '3': 3, '4': 1, '5': 14, '6': '.health_monitor_mode', '10': 'defaultMode'},
    const {'1': 'measurement_interval', '3': 4, '4': 1, '5': 13, '10': 'measurementInterval'},
    const {'1': 'mode_auto_adjust', '3': 5, '4': 1, '5': 11, '6': '.protocol_health_monitor_auto_adjust', '10': 'modeAutoAdjust'},
    const {'1': 'notify_setting', '3': 6, '4': 1, '5': 11, '6': '.protocol_heart_monitor_notify', '10': 'notifySetting'},
  ],
};

/// Descriptor for `protocol_health_monitor_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_monitor_operateDescriptor = $convert.base64Decode('Ch9wcm90b2NvbF9oZWFsdGhfbW9uaXRvcl9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSLQoLaGVhbHRoX3R5cGUYAiABKA4yDC5oZWFsdGhfdHlwZVIKaGVhbHRoVHlwZRI3CgxkZWZhdWx0X21vZGUYAyABKA4yFC5oZWFsdGhfbW9uaXRvcl9tb2RlUgtkZWZhdWx0TW9kZRIxChRtZWFzdXJlbWVudF9pbnRlcnZhbBgEIAEoDVITbWVhc3VyZW1lbnRJbnRlcnZhbBJOChBtb2RlX2F1dG9fYWRqdXN0GAUgASgLMiQucHJvdG9jb2xfaGVhbHRoX21vbml0b3JfYXV0b19hZGp1c3RSDm1vZGVBdXRvQWRqdXN0EkUKDm5vdGlmeV9zZXR0aW5nGAYgASgLMh4ucHJvdG9jb2xfaGVhcnRfbW9uaXRvcl9ub3RpZnlSDW5vdGlmeVNldHRpbmc=');
@$core.Deprecated('Use protocol_health_monitor_inquire_replyDescriptor instead')
const protocol_health_monitor_inquire_reply$json = const {
  '1': 'protocol_health_monitor_inquire_reply',
  '2': const [
    const {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    const {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'health_type', '3': 3, '4': 1, '5': 14, '6': '.health_type', '10': 'healthType'},
    const {'1': 'default_mode', '3': 4, '4': 1, '5': 14, '6': '.health_monitor_mode', '10': 'defaultMode'},
    const {'1': 'measurement_interval', '3': 5, '4': 1, '5': 13, '10': 'measurementInterval'},
    const {'1': 'mode_auto_adjust', '3': 6, '4': 1, '5': 11, '6': '.protocol_health_monitor_auto_adjust', '10': 'modeAutoAdjust'},
    const {'1': 'notify_setting', '3': 7, '4': 1, '5': 11, '6': '.protocol_heart_monitor_notify', '10': 'notifySetting'},
  ],
};

/// Descriptor for `protocol_health_monitor_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_health_monitor_inquire_replyDescriptor = $convert.base64Decode('CiVwcm90b2NvbF9oZWFsdGhfbW9uaXRvcl9pbnF1aXJlX3JlcGx5Eh0KCmZ1bmNfdGFibGUYASABKA1SCWZ1bmNUYWJsZRInCgdvcGVyYXRlGAIgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEi0KC2hlYWx0aF90eXBlGAMgASgOMgwuaGVhbHRoX3R5cGVSCmhlYWx0aFR5cGUSNwoMZGVmYXVsdF9tb2RlGAQgASgOMhQuaGVhbHRoX21vbml0b3JfbW9kZVILZGVmYXVsdE1vZGUSMQoUbWVhc3VyZW1lbnRfaW50ZXJ2YWwYBSABKA1SE21lYXN1cmVtZW50SW50ZXJ2YWwSTgoQbW9kZV9hdXRvX2FkanVzdBgGIAEoCzIkLnByb3RvY29sX2hlYWx0aF9tb25pdG9yX2F1dG9fYWRqdXN0Ug5tb2RlQXV0b0FkanVzdBJFCg5ub3RpZnlfc2V0dGluZxgHIAEoCzIeLnByb3RvY29sX2hlYXJ0X21vbml0b3Jfbm90aWZ5Ug1ub3RpZnlTZXR0aW5n');
