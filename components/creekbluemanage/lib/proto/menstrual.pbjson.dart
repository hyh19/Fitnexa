///
//  Generated code. Do not modify.
//  source: menstrual.proto
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
@$core.Deprecated('Use period_logDescriptor instead')
const period_log$json = const {
  '1': 'period_log',
  '2': const [
    const {'1': 'PERIOD_LOG_NULL', '2': 0},
    const {'1': 'PERIOD_LOG_NOT_FLOW', '2': 1},
    const {'1': 'PERIOD_LOG_AS_USUAL', '2': 2},
    const {'1': 'PERIOD_LOG_LIGHT_FLOW', '2': 3},
    const {'1': 'PERIOD_LOG_MENDIUM_FLOW', '2': 4},
    const {'1': 'PERIOD_LOG_HEAVY_FLOW', '2': 5},
  ],
};

/// Descriptor for `period_log`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List period_logDescriptor = $convert.base64Decode('CgpwZXJpb2RfbG9nEhMKD1BFUklPRF9MT0dfTlVMTBAAEhcKE1BFUklPRF9MT0dfTk9UX0ZMT1cQARIXChNQRVJJT0RfTE9HX0FTX1VTVUFMEAISGQoVUEVSSU9EX0xPR19MSUdIVF9GTE9XEAMSGwoXUEVSSU9EX0xPR19NRU5ESVVNX0ZMT1cQBBIZChVQRVJJT0RfTE9HX0hFQVZZX0ZMT1cQBQ==');
@$core.Deprecated('Use protocol_menstrual_period_setDescriptor instead')
const protocol_menstrual_period_set$json = const {
  '1': 'protocol_menstrual_period_set',
  '2': const [
    const {'1': 'switch_flag', '3': 1, '4': 1, '5': 8, '10': 'switchFlag'},
    const {'1': 'period_length', '3': 2, '4': 1, '5': 13, '10': 'periodLength'},
    const {'1': 'cycle_length', '3': 3, '4': 1, '5': 13, '10': 'cycleLength'},
    const {'1': 'last_year', '3': 4, '4': 1, '5': 13, '10': 'lastYear'},
    const {'1': 'last_month', '3': 5, '4': 1, '5': 13, '10': 'lastMonth'},
    const {'1': 'last_day', '3': 6, '4': 1, '5': 13, '10': 'lastDay'},
  ],
};

/// Descriptor for `protocol_menstrual_period_set`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_menstrual_period_setDescriptor = $convert.base64Decode('Ch1wcm90b2NvbF9tZW5zdHJ1YWxfcGVyaW9kX3NldBIfCgtzd2l0Y2hfZmxhZxgBIAEoCFIKc3dpdGNoRmxhZxIjCg1wZXJpb2RfbGVuZ3RoGAIgASgNUgxwZXJpb2RMZW5ndGgSIQoMY3ljbGVfbGVuZ3RoGAMgASgNUgtjeWNsZUxlbmd0aBIbCglsYXN0X3llYXIYBCABKA1SCGxhc3RZZWFyEh0KCmxhc3RfbW9udGgYBSABKA1SCWxhc3RNb250aBIZCghsYXN0X2RheRgGIAEoDVIHbGFzdERheQ==');
@$core.Deprecated('Use protocol_menstrual_recordDescriptor instead')
const protocol_menstrual_record$json = const {
  '1': 'protocol_menstrual_record',
  '2': const [
    const {'1': 'year', '3': 1, '4': 1, '5': 13, '10': 'year'},
    const {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    const {'1': 'day', '3': 3, '4': 1, '5': 13, '10': 'day'},
    const {'1': 'log', '3': 4, '4': 1, '5': 14, '6': '.period_log', '10': 'log'},
    const {'1': 'operate_utc_time', '3': 5, '4': 1, '5': 13, '10': 'operateUtcTime'},
  ],
};

/// Descriptor for `protocol_menstrual_record`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_menstrual_recordDescriptor = $convert.base64Decode('Chlwcm90b2NvbF9tZW5zdHJ1YWxfcmVjb3JkEhIKBHllYXIYASABKA1SBHllYXISFAoFbW9udGgYAiABKA1SBW1vbnRoEhAKA2RheRgDIAEoDVIDZGF5Eh0KA2xvZxgEIAEoDjILLnBlcmlvZF9sb2dSA2xvZxIoChBvcGVyYXRlX3V0Y190aW1lGAUgASgNUg5vcGVyYXRlVXRjVGltZQ==');
@$core.Deprecated('Use protocol_menstruation_operateDescriptor instead')
const protocol_menstruation_operate$json = const {
  '1': 'protocol_menstruation_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'period_set', '3': 2, '4': 1, '5': 11, '6': '.protocol_menstrual_period_set', '10': 'periodSet'},
    const {'1': 'record', '3': 3, '4': 3, '5': 11, '6': '.protocol_menstrual_record', '10': 'record'},
    const {'1': 'set_utc_time', '3': 4, '4': 1, '5': 13, '10': 'setUtcTime'},
  ],
};

/// Descriptor for `protocol_menstruation_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_menstruation_operateDescriptor = $convert.base64Decode('Ch1wcm90b2NvbF9tZW5zdHJ1YXRpb25fb3BlcmF0ZRInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEj0KCnBlcmlvZF9zZXQYAiABKAsyHi5wcm90b2NvbF9tZW5zdHJ1YWxfcGVyaW9kX3NldFIJcGVyaW9kU2V0EjIKBnJlY29yZBgDIAMoCzIaLnByb3RvY29sX21lbnN0cnVhbF9yZWNvcmRSBnJlY29yZBIgCgxzZXRfdXRjX3RpbWUYBCABKA1SCnNldFV0Y1RpbWU=');
@$core.Deprecated('Use protocol_menstruation_inquire_replyDescriptor instead')
const protocol_menstruation_inquire_reply$json = const {
  '1': 'protocol_menstruation_inquire_reply',
  '2': const [
    const {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    const {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'menstrual_period_set', '3': 3, '4': 1, '5': 11, '6': '.protocol_menstrual_period_set', '10': 'menstrualPeriodSet'},
    const {'1': 'record', '3': 4, '4': 3, '5': 11, '6': '.protocol_menstrual_record', '10': 'record'},
    const {'1': 'set_utc_time', '3': 5, '4': 1, '5': 13, '10': 'setUtcTime'},
  ],
};

/// Descriptor for `protocol_menstruation_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_menstruation_inquire_replyDescriptor = $convert.base64Decode('CiNwcm90b2NvbF9tZW5zdHJ1YXRpb25faW5xdWlyZV9yZXBseRIdCgpmdW5jX3RhYmxlGAEgASgNUglmdW5jVGFibGUSJwoHb3BlcmF0ZRgCIAEoDjINLm9wZXJhdGVfdHlwZVIHb3BlcmF0ZRJQChRtZW5zdHJ1YWxfcGVyaW9kX3NldBgDIAEoCzIeLnByb3RvY29sX21lbnN0cnVhbF9wZXJpb2Rfc2V0UhJtZW5zdHJ1YWxQZXJpb2RTZXQSMgoGcmVjb3JkGAQgAygLMhoucHJvdG9jb2xfbWVuc3RydWFsX3JlY29yZFIGcmVjb3JkEiAKDHNldF91dGNfdGltZRgFIAEoDVIKc2V0VXRjVGltZQ==');
