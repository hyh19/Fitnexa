///
//  Generated code. Do not modify.
//  source: SyncHeartRate.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use syncHeartRateDescriptor instead')
const SyncHeartRate$json = const {
  '1': 'SyncHeartRate',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    const {'1': 'mac_id', '3': 2, '4': 1, '5': 9, '10': 'macId'},
    const {'1': 'data_date', '3': 3, '4': 1, '5': 9, '10': 'dataDate'},
    const {'1': 'offset_last', '3': 4, '4': 1, '5': 13, '10': 'offsetLast'},
    const {'1': 'hr_max', '3': 5, '4': 1, '5': 13, '10': 'hrMax'},
    const {'1': 'hr_min', '3': 6, '4': 1, '5': 13, '10': 'hrMin'},
    const {'1': 'hr_silent', '3': 7, '4': 1, '5': 13, '10': 'hrSilent'},
    const {'1': 'hr_average', '3': 8, '4': 1, '5': 13, '10': 'hrAverage'},
    const {'1': 'hr_rise_ratio', '3': 9, '4': 1, '5': 13, '10': 'hrRiseRatio'},
    const {'1': 'hr_interval', '3': 10, '4': 1, '5': 9, '10': 'hrInterval'},
    const {'1': 'datas', '3': 11, '4': 1, '5': 9, '10': 'datas'},
    const {'1': 'id', '3': 12, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `SyncHeartRate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncHeartRateDescriptor = $convert.base64Decode('Cg1TeW5jSGVhcnRSYXRlEhcKB3VzZXJfaWQYASABKARSBnVzZXJJZBIVCgZtYWNfaWQYAiABKAlSBW1hY0lkEhsKCWRhdGFfZGF0ZRgDIAEoCVIIZGF0YURhdGUSHwoLb2Zmc2V0X2xhc3QYBCABKA1SCm9mZnNldExhc3QSFQoGaHJfbWF4GAUgASgNUgVock1heBIVCgZocl9taW4YBiABKA1SBWhyTWluEhsKCWhyX3NpbGVudBgHIAEoDVIIaHJTaWxlbnQSHQoKaHJfYXZlcmFnZRgIIAEoDVIJaHJBdmVyYWdlEiIKDWhyX3Jpc2VfcmF0aW8YCSABKA1SC2hyUmlzZVJhdGlvEh8KC2hyX2ludGVydmFsGAogASgJUgpockludGVydmFsEhQKBWRhdGFzGAsgASgJUgVkYXRhcxIOCgJpZBgMIAEoBFICaWQ=');
@$core.Deprecated('Use syncHeartRateListDescriptor instead')
const SyncHeartRateList$json = const {
  '1': 'SyncHeartRateList',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.SyncHeartRate', '10': 'list'},
  ],
};

/// Descriptor for `SyncHeartRateList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncHeartRateListDescriptor = $convert.base64Decode('ChFTeW5jSGVhcnRSYXRlTGlzdBIiCgRsaXN0GAEgAygLMg4uU3luY0hlYXJ0UmF0ZVIEbGlzdA==');
