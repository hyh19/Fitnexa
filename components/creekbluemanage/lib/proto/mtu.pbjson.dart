///
//  Generated code. Do not modify.
//  source: mtu.proto
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
@$core.Deprecated('Use protocol_connect_status_operateDescriptor instead')
const protocol_connect_status_operate$json = const {
  '1': 'protocol_connect_status_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'reconnect_operate', '3': 2, '4': 1, '5': 8, '10': 'reconnectOperate'},
  ],
};

/// Descriptor for `protocol_connect_status_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_connect_status_operateDescriptor = $convert.base64Decode('Ch9wcm90b2NvbF9jb25uZWN0X3N0YXR1c19vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSKwoRcmVjb25uZWN0X29wZXJhdGUYAiABKAhSEHJlY29ubmVjdE9wZXJhdGU=');
@$core.Deprecated('Use protocol_connect_status_inquire_replyDescriptor instead')
const protocol_connect_status_inquire_reply$json = const {
  '1': 'protocol_connect_status_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'get_tran_mtu_size', '3': 2, '4': 1, '5': 13, '10': 'getTranMtuSize'},
    const {'1': 'ble_pairing_status', '3': 3, '4': 1, '5': 8, '10': 'blePairingStatus'},
    const {'1': 'bt_pairing_status', '3': 4, '4': 1, '5': 8, '10': 'btPairingStatus'},
    const {'1': 'bt_connect_status', '3': 5, '4': 1, '5': 8, '10': 'btConnectStatus'},
  ],
};

/// Descriptor for `protocol_connect_status_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_connect_status_inquire_replyDescriptor = $convert.base64Decode('CiVwcm90b2NvbF9jb25uZWN0X3N0YXR1c19pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSKQoRZ2V0X3RyYW5fbXR1X3NpemUYAiABKA1SDmdldFRyYW5NdHVTaXplEiwKEmJsZV9wYWlyaW5nX3N0YXR1cxgDIAEoCFIQYmxlUGFpcmluZ1N0YXR1cxIqChFidF9wYWlyaW5nX3N0YXR1cxgEIAEoCFIPYnRQYWlyaW5nU3RhdHVzEioKEWJ0X2Nvbm5lY3Rfc3RhdHVzGAUgASgIUg9idENvbm5lY3RTdGF0dXM=');
