///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use operate_II_typeDescriptor instead')
const operate_II_type$json = const {
  '1': 'operate_II_type',
  '2': const [
    const {'1': 'INSERT', '2': 0},
    const {'1': 'DELETE', '2': 1},
    const {'1': 'UPDATE', '2': 2},
    const {'1': 'READ', '2': 3},
  ],
};

/// Descriptor for `operate_II_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operate_II_typeDescriptor = $convert.base64Decode('Cg9vcGVyYXRlX0lJX3R5cGUSCgoGSU5TRVJUEAASCgoGREVMRVRFEAESCgoGVVBEQVRFEAISCAoEUkVBRBAD');
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
@$core.Deprecated('Use disp_statusDescriptor instead')
const disp_status$json = const {
  '1': 'disp_status',
  '2': const [
    const {'1': 'DISP_OFF', '2': 0},
    const {'1': 'DISP_ON', '2': 1},
  ],
};

/// Descriptor for `disp_status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List disp_statusDescriptor = $convert.base64Decode('CgtkaXNwX3N0YXR1cxIMCghESVNQX09GRhAAEgsKB0RJU1BfT04QAQ==');
@$core.Deprecated('Use protocol_schedule_itemDescriptor instead')
const protocol_schedule_item$json = const {
  '1': 'protocol_schedule_item',
  '2': const [
    const {'1': 'schedule_id', '3': 1, '4': 1, '5': 13, '10': 'scheduleId'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.disp_status', '10': 'status'},
    const {'1': 'year', '3': 3, '4': 1, '5': 13, '10': 'year'},
    const {'1': 'mon', '3': 4, '4': 1, '5': 13, '10': 'mon'},
    const {'1': 'day', '3': 5, '4': 1, '5': 13, '10': 'day'},
    const {'1': 'hour', '3': 6, '4': 1, '5': 13, '10': 'hour'},
    const {'1': 'minute', '3': 7, '4': 1, '5': 13, '10': 'minute'},
    const {'1': 'sec', '3': 8, '4': 1, '5': 13, '10': 'sec'},
    const {'1': 'repeat', '3': 9, '4': 3, '5': 8, '10': 'repeat'},
    const {'1': 'title_len', '3': 10, '4': 1, '5': 13, '10': 'titleLen'},
    const {'1': 'content_len', '3': 11, '4': 1, '5': 13, '10': 'contentLen'},
    const {'1': 'title', '3': 12, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 13, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `protocol_schedule_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_schedule_itemDescriptor = $convert.base64Decode('ChZwcm90b2NvbF9zY2hlZHVsZV9pdGVtEh8KC3NjaGVkdWxlX2lkGAEgASgNUgpzY2hlZHVsZUlkEiQKBnN0YXR1cxgCIAEoDjIMLmRpc3Bfc3RhdHVzUgZzdGF0dXMSEgoEeWVhchgDIAEoDVIEeWVhchIQCgNtb24YBCABKA1SA21vbhIQCgNkYXkYBSABKA1SA2RheRISCgRob3VyGAYgASgNUgRob3VyEhYKBm1pbnV0ZRgHIAEoDVIGbWludXRlEhAKA3NlYxgIIAEoDVIDc2VjEhYKBnJlcGVhdBgJIAMoCFIGcmVwZWF0EhsKCXRpdGxlX2xlbhgKIAEoDVIIdGl0bGVMZW4SHwoLY29udGVudF9sZW4YCyABKA1SCmNvbnRlbnRMZW4SFAoFdGl0bGUYDCABKAlSBXRpdGxlEhgKB2NvbnRlbnQYDSABKAlSB2NvbnRlbnQ=');
@$core.Deprecated('Use protocol_schedule_operateDescriptor instead')
const protocol_schedule_operate$json = const {
  '1': 'protocol_schedule_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_II_type', '10': 'operate'},
    const {'1': 'notify_flag', '3': 2, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
    const {'1': 'item_num', '3': 3, '4': 1, '5': 13, '10': 'itemNum'},
    const {'1': 'schedule_item', '3': 4, '4': 1, '5': 11, '6': '.protocol_schedule_item', '10': 'scheduleItem'},
  ],
};

/// Descriptor for `protocol_schedule_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_schedule_operateDescriptor = $convert.base64Decode('Chlwcm90b2NvbF9zY2hlZHVsZV9vcGVyYXRlEioKB29wZXJhdGUYASABKA4yEC5vcGVyYXRlX0lJX3R5cGVSB29wZXJhdGUSLQoLbm90aWZ5X2ZsYWcYAiABKA4yDC5ub3RpZnlfdHlwZVIKbm90aWZ5RmxhZxIZCghpdGVtX251bRgDIAEoDVIHaXRlbU51bRI8Cg1zY2hlZHVsZV9pdGVtGAQgASgLMhcucHJvdG9jb2xfc2NoZWR1bGVfaXRlbVIMc2NoZWR1bGVJdGVt');
@$core.Deprecated('Use protocol_schedule_inquire_replyDescriptor instead')
const protocol_schedule_inquire_reply$json = const {
  '1': 'protocol_schedule_inquire_reply',
  '2': const [
    const {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    const {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.operate_II_type', '10': 'operate'},
    const {'1': 'notify_flag', '3': 3, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
    const {'1': 'item_num', '3': 4, '4': 1, '5': 13, '10': 'itemNum'},
    const {'1': 'schedule_item', '3': 5, '4': 1, '5': 11, '6': '.protocol_schedule_item', '10': 'scheduleItem'},
  ],
};

/// Descriptor for `protocol_schedule_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_schedule_inquire_replyDescriptor = $convert.base64Decode('Ch9wcm90b2NvbF9zY2hlZHVsZV9pbnF1aXJlX3JlcGx5Eh0KCmZ1bmNfdGFibGUYASABKA1SCWZ1bmNUYWJsZRIqCgdvcGVyYXRlGAIgASgOMhAub3BlcmF0ZV9JSV90eXBlUgdvcGVyYXRlEi0KC25vdGlmeV9mbGFnGAMgASgOMgwubm90aWZ5X3R5cGVSCm5vdGlmeUZsYWcSGQoIaXRlbV9udW0YBCABKA1SB2l0ZW1OdW0SPAoNc2NoZWR1bGVfaXRlbRgFIAEoCzIXLnByb3RvY29sX3NjaGVkdWxlX2l0ZW1SDHNjaGVkdWxlSXRlbQ==');
