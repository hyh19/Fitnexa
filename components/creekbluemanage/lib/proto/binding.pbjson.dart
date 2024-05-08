///
//  Generated code. Do not modify.
//  source: binding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use bind_methodDescriptor instead')
const bind_method$json = const {
  '1': 'bind_method',
  '2': const [
    const {'1': 'BIND_ENCRYPTED', '2': 0},
    const {'1': 'BIND_NORMAL', '2': 1},
    const {'1': 'BIND_REMOVE', '2': 2},
    const {'1': 'BIND_PAIRING_CODE', '2': 3},
  ],
};

/// Descriptor for `bind_method`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bind_methodDescriptor = $convert.base64Decode('CgtiaW5kX21ldGhvZBISCg5CSU5EX0VOQ1JZUFRFRBAAEg8KC0JJTkRfTk9STUFMEAESDwoLQklORF9SRU1PVkUQAhIVChFCSU5EX1BBSVJJTkdfQ09ERRAD');
@$core.Deprecated('Use bind_flagDescriptor instead')
const bind_flag$json = const {
  '1': 'bind_flag',
  '2': const [
    const {'1': 'BIND_FLAG_REQUEST', '2': 0},
    const {'1': 'BIND_FLAG_FAILED', '2': 1},
    const {'1': 'BIND_FLAG_SUCCESS', '2': 2},
    const {'1': 'BIND_FLAG_BOUND', '2': 3},
  ],
};

/// Descriptor for `bind_flag`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bind_flagDescriptor = $convert.base64Decode('CgliaW5kX2ZsYWcSFQoRQklORF9GTEFHX1JFUVVFU1QQABIUChBCSU5EX0ZMQUdfRkFJTEVEEAESFQoRQklORF9GTEFHX1NVQ0NFU1MQAhITCg9CSU5EX0ZMQUdfQk9VTkQQAw==');
@$core.Deprecated('Use bind_phone_typeDescriptor instead')
const bind_phone_type$json = const {
  '1': 'bind_phone_type',
  '2': const [
    const {'1': 'ANDROID', '2': 0},
    const {'1': 'IOS', '2': 1},
  ],
};

/// Descriptor for `bind_phone_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bind_phone_typeDescriptor = $convert.base64Decode('Cg9iaW5kX3Bob25lX3R5cGUSCwoHQU5EUk9JRBAAEgcKA0lPUxAB');
@$core.Deprecated('Use protocol_bind_operateDescriptor instead')
const protocol_bind_operate$json = const {
  '1': 'protocol_bind_operate',
  '2': const [
    const {'1': 'bind_method', '3': 1, '4': 1, '5': 14, '6': '.bind_method', '10': 'bindMethod'},
    const {'1': 'bind_flag', '3': 2, '4': 1, '5': 14, '6': '.bind_flag', '10': 'bindFlag'},
    const {'1': 'bind_phone', '3': 3, '4': 1, '5': 14, '6': '.bind_phone_type', '10': 'bindPhone'},
  ],
};

/// Descriptor for `protocol_bind_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_bind_operateDescriptor = $convert.base64Decode('ChVwcm90b2NvbF9iaW5kX29wZXJhdGUSLQoLYmluZF9tZXRob2QYASABKA4yDC5iaW5kX21ldGhvZFIKYmluZE1ldGhvZBInCgliaW5kX2ZsYWcYAiABKA4yCi5iaW5kX2ZsYWdSCGJpbmRGbGFnEi8KCmJpbmRfcGhvbmUYAyABKA4yEC5iaW5kX3Bob25lX3R5cGVSCWJpbmRQaG9uZQ==');
@$core.Deprecated('Use protocol_bind_replyDescriptor instead')
const protocol_bind_reply$json = const {
  '1': 'protocol_bind_reply',
  '2': const [
    const {'1': 'bind_method', '3': 1, '4': 1, '5': 14, '6': '.bind_method', '10': 'bindMethod'},
    const {'1': 'bind_flag', '3': 2, '4': 1, '5': 14, '6': '.bind_flag', '10': 'bindFlag'},
    const {'1': 'competent_data', '3': 3, '4': 1, '5': 12, '10': 'competentData'},
    const {'1': 'pairing_code', '3': 4, '4': 1, '5': 12, '10': 'pairingCode'},
  ],
};

/// Descriptor for `protocol_bind_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_bind_replyDescriptor = $convert.base64Decode('ChNwcm90b2NvbF9iaW5kX3JlcGx5Ei0KC2JpbmRfbWV0aG9kGAEgASgOMgwuYmluZF9tZXRob2RSCmJpbmRNZXRob2QSJwoJYmluZF9mbGFnGAIgASgOMgouYmluZF9mbGFnUghiaW5kRmxhZxIlCg5jb21wZXRlbnRfZGF0YRgDIAEoDFINY29tcGV0ZW50RGF0YRIhCgxwYWlyaW5nX2NvZGUYBCABKAxSC3BhaXJpbmdDb2Rl');
