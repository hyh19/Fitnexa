///
//  Generated code. Do not modify.
//  source: call.proto
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
@$core.Deprecated('Use call_statusDescriptor instead')
const call_status$json = const {
  '1': 'call_status',
  '2': const [
    const {'1': 'RECEIVED_CALL', '2': 0},
    const {'1': 'REJECT_CALL', '2': 1},
  ],
};

/// Descriptor for `call_status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List call_statusDescriptor = $convert.base64Decode('CgtjYWxsX3N0YXR1cxIRCg1SRUNFSVZFRF9DQUxMEAASDwoLUkVKRUNUX0NBTEwQAQ==');
@$core.Deprecated('Use protocol_call_switchDescriptor instead')
const protocol_call_switch$json = const {
  '1': 'protocol_call_switch',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'call_switch', '3': 2, '4': 1, '5': 8, '10': 'callSwitch'},
    const {'1': 'call_delay', '3': 3, '4': 1, '5': 13, '10': 'callDelay'},
  ],
};

/// Descriptor for `protocol_call_switch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_call_switchDescriptor = $convert.base64Decode('ChRwcm90b2NvbF9jYWxsX3N3aXRjaBInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEh8KC2NhbGxfc3dpdGNoGAIgASgIUgpjYWxsU3dpdGNoEh0KCmNhbGxfZGVsYXkYAyABKA1SCWNhbGxEZWxheQ==');
@$core.Deprecated('Use protocol_call_switch_inquire_replyDescriptor instead')
const protocol_call_switch_inquire_reply$json = const {
  '1': 'protocol_call_switch_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'call_switch', '3': 2, '4': 1, '5': 8, '10': 'callSwitch'},
    const {'1': 'call_delay', '3': 3, '4': 1, '5': 13, '10': 'callDelay'},
  ],
};

/// Descriptor for `protocol_call_switch_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_call_switch_inquire_replyDescriptor = $convert.base64Decode('CiJwcm90b2NvbF9jYWxsX3N3aXRjaF9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSHwoLY2FsbF9zd2l0Y2gYAiABKAhSCmNhbGxTd2l0Y2gSHQoKY2FsbF9kZWxheRgDIAEoDVIJY2FsbERlbGF5');
@$core.Deprecated('Use protocol_call_remindDescriptor instead')
const protocol_call_remind$json = const {
  '1': 'protocol_call_remind',
  '2': const [
    const {'1': 'contact_len', '3': 1, '4': 1, '5': 13, '10': 'contactLen'},
    const {'1': 'contact_text', '3': 2, '4': 1, '5': 9, '10': 'contactText'},
    const {'1': 'phone_number_len', '3': 3, '4': 1, '5': 13, '10': 'phoneNumberLen'},
    const {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

/// Descriptor for `protocol_call_remind`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_call_remindDescriptor = $convert.base64Decode('ChRwcm90b2NvbF9jYWxsX3JlbWluZBIfCgtjb250YWN0X2xlbhgBIAEoDVIKY29udGFjdExlbhIhCgxjb250YWN0X3RleHQYAiABKAlSC2NvbnRhY3RUZXh0EigKEHBob25lX251bWJlcl9sZW4YAyABKA1SDnBob25lTnVtYmVyTGVuEiEKDHBob25lX251bWJlchgEIAEoCVILcGhvbmVOdW1iZXI=');
@$core.Deprecated('Use protocol_call_remind_statusDescriptor instead')
const protocol_call_remind_status$json = const {
  '1': 'protocol_call_remind_status',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.call_status', '10': 'status'},
  ],
};

/// Descriptor for `protocol_call_remind_status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_call_remind_statusDescriptor = $convert.base64Decode('Chtwcm90b2NvbF9jYWxsX3JlbWluZF9zdGF0dXMSJAoGc3RhdHVzGAEgASgOMgwuY2FsbF9zdGF0dXNSBnN0YXR1cw==');
