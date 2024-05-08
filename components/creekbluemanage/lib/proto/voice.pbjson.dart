///
//  Generated code. Do not modify.
//  source: voice.proto
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
@$core.Deprecated('Use protocol_voice_assistant_operateDescriptor instead')
const protocol_voice_assistant_operate$json = const {
  '1': 'protocol_voice_assistant_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'button_awaken_switch_flag', '3': 2, '4': 1, '5': 8, '10': 'buttonAwakenSwitchFlag'},
    const {'1': 'raising_your_wrist_switch_flag', '3': 3, '4': 1, '5': 8, '10': 'raisingYourWristSwitchFlag'},
  ],
};

/// Descriptor for `protocol_voice_assistant_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_voice_assistant_operateDescriptor = $convert.base64Decode('CiBwcm90b2NvbF92b2ljZV9hc3Npc3RhbnRfb3BlcmF0ZRInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEjkKGWJ1dHRvbl9hd2FrZW5fc3dpdGNoX2ZsYWcYAiABKAhSFmJ1dHRvbkF3YWtlblN3aXRjaEZsYWcSQgoecmFpc2luZ195b3VyX3dyaXN0X3N3aXRjaF9mbGFnGAMgASgIUhpyYWlzaW5nWW91cldyaXN0U3dpdGNoRmxhZw==');
@$core.Deprecated('Use protocol_voice_assistant_inquire_replyDescriptor instead')
const protocol_voice_assistant_inquire_reply$json = const {
  '1': 'protocol_voice_assistant_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'button_awaken_switch_flag', '3': 2, '4': 1, '5': 8, '10': 'buttonAwakenSwitchFlag'},
    const {'1': 'raising_your_wrist_switch_flag', '3': 3, '4': 1, '5': 8, '10': 'raisingYourWristSwitchFlag'},
  ],
};

/// Descriptor for `protocol_voice_assistant_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_voice_assistant_inquire_replyDescriptor = $convert.base64Decode('CiZwcm90b2NvbF92b2ljZV9hc3Npc3RhbnRfaW5xdWlyZV9yZXBseRInCgdvcGVyYXRlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEjkKGWJ1dHRvbl9hd2FrZW5fc3dpdGNoX2ZsYWcYAiABKAhSFmJ1dHRvbkF3YWtlblN3aXRjaEZsYWcSQgoecmFpc2luZ195b3VyX3dyaXN0X3N3aXRjaF9mbGFnGAMgASgIUhpyYWlzaW5nWW91cldyaXN0U3dpdGNoRmxhZw==');
