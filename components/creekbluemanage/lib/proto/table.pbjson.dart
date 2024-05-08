//
//  Generated code. Do not modify.
//  source: table.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use function_tableDescriptor instead')
const function_table$json = {
  '1': 'function_table',
  '2': [
    {'1': 'is_support', '3': 1, '4': 1, '5': 8, '10': 'isSupport'},
    {'1': 'cmd_id', '3': 2, '4': 1, '5': 13, '10': 'cmdId'},
  ],
};

/// Descriptor for `function_table`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List function_tableDescriptor = $convert.base64Decode(
    'Cg5mdW5jdGlvbl90YWJsZRIdCgppc19zdXBwb3J0GAEgASgIUglpc1N1cHBvcnQSFQoGY21kX2'
    'lkGAIgASgNUgVjbWRJZA==');

@$core.Deprecated('Use protocol_function_tableDescriptor instead')
const protocol_function_table$json = {
  '1': 'protocol_function_table',
  '2': [
    {'1': 'disturb', '3': 1, '4': 1, '5': 11, '6': '.function_table', '10': 'disturb'},
    {'1': 'water_remind', '3': 2, '4': 1, '5': 11, '6': '.function_table', '10': 'waterRemind'},
    {'1': 'standing_remind', '3': 3, '4': 1, '5': 11, '6': '.function_table', '10': 'standingRemind'},
    {'1': 'female_health', '3': 4, '4': 1, '5': 11, '6': '.function_table', '10': 'femaleHealth'},
    {'1': 'weather', '3': 5, '4': 1, '5': 11, '6': '.function_table', '10': 'weather'},
    {'1': 'message_data', '3': 6, '4': 1, '5': 11, '6': '.function_table', '10': 'messageData'},
    {'1': 'bt_call', '3': 7, '4': 1, '5': 11, '6': '.function_table', '10': 'btCall'},
    {'1': 'ble_call', '3': 8, '4': 1, '5': 11, '6': '.function_table', '10': 'bleCall'},
    {'1': 'schedule_remind', '3': 9, '4': 1, '5': 11, '6': '.function_table', '10': 'scheduleRemind'},
    {'1': 'voice_assistant', '3': 10, '4': 1, '5': 11, '6': '.function_table', '10': 'voiceAssistant'},
    {'1': 'quick_card', '3': 11, '4': 1, '5': 11, '6': '.function_table', '10': 'quickCard'},
    {'1': 'world_time', '3': 12, '4': 1, '5': 11, '6': '.function_table', '10': 'worldTime'},
    {'1': 'frequent_contacts', '3': 13, '4': 1, '5': 11, '6': '.function_table', '10': 'frequentContacts'},
    {'1': 'gps', '3': 14, '4': 1, '5': 11, '6': '.function_table', '10': 'gps'},
    {'1': 'online_gnss', '3': 15, '4': 1, '5': 11, '6': '.function_table', '10': 'onlineGnss'},
    {'1': 'offline_gnss', '3': 16, '4': 1, '5': 11, '6': '.function_table', '10': 'offlineGnss'},
    {'1': 'emergency_contacts', '3': 17, '4': 1, '5': 11, '6': '.function_table', '10': 'emergencyContacts'},
    {'1': 'hrv', '3': 18, '4': 1, '5': 11, '6': '.function_table', '10': 'hrv'},
    {'1': 'button_crown', '3': 19, '4': 1, '5': 11, '6': '.function_table', '10': 'buttonCrown'},
    {'1': 'focus_mode', '3': 20, '4': 1, '5': 11, '6': '.function_table', '10': 'focusMode'},
    {'1': 'find_watch', '3': 21, '4': 1, '5': 11, '6': '.function_table', '10': 'findWatch'},
    {'1': 'alexa', '3': 22, '4': 1, '5': 11, '6': '.function_table', '10': 'alexa'},
    {'1': 'app_list', '3': 23, '4': 1, '5': 11, '6': '.function_table', '10': 'appList'},
    {'1': 'event_tracking', '3': 24, '4': 1, '5': 11, '6': '.function_table', '10': 'eventTracking'},
  ],
};

/// Descriptor for `protocol_function_table`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_function_tableDescriptor = $convert.base64Decode(
    'Chdwcm90b2NvbF9mdW5jdGlvbl90YWJsZRIpCgdkaXN0dXJiGAEgASgLMg8uZnVuY3Rpb25fdG'
    'FibGVSB2Rpc3R1cmISMgoMd2F0ZXJfcmVtaW5kGAIgASgLMg8uZnVuY3Rpb25fdGFibGVSC3dh'
    'dGVyUmVtaW5kEjgKD3N0YW5kaW5nX3JlbWluZBgDIAEoCzIPLmZ1bmN0aW9uX3RhYmxlUg5zdG'
    'FuZGluZ1JlbWluZBI0Cg1mZW1hbGVfaGVhbHRoGAQgASgLMg8uZnVuY3Rpb25fdGFibGVSDGZl'
    'bWFsZUhlYWx0aBIpCgd3ZWF0aGVyGAUgASgLMg8uZnVuY3Rpb25fdGFibGVSB3dlYXRoZXISMg'
    'oMbWVzc2FnZV9kYXRhGAYgASgLMg8uZnVuY3Rpb25fdGFibGVSC21lc3NhZ2VEYXRhEigKB2J0'
    'X2NhbGwYByABKAsyDy5mdW5jdGlvbl90YWJsZVIGYnRDYWxsEioKCGJsZV9jYWxsGAggASgLMg'
    '8uZnVuY3Rpb25fdGFibGVSB2JsZUNhbGwSOAoPc2NoZWR1bGVfcmVtaW5kGAkgASgLMg8uZnVu'
    'Y3Rpb25fdGFibGVSDnNjaGVkdWxlUmVtaW5kEjgKD3ZvaWNlX2Fzc2lzdGFudBgKIAEoCzIPLm'
    'Z1bmN0aW9uX3RhYmxlUg52b2ljZUFzc2lzdGFudBIuCgpxdWlja19jYXJkGAsgASgLMg8uZnVu'
    'Y3Rpb25fdGFibGVSCXF1aWNrQ2FyZBIuCgp3b3JsZF90aW1lGAwgASgLMg8uZnVuY3Rpb25fdG'
    'FibGVSCXdvcmxkVGltZRI8ChFmcmVxdWVudF9jb250YWN0cxgNIAEoCzIPLmZ1bmN0aW9uX3Rh'
    'YmxlUhBmcmVxdWVudENvbnRhY3RzEiEKA2dwcxgOIAEoCzIPLmZ1bmN0aW9uX3RhYmxlUgNncH'
    'MSMAoLb25saW5lX2duc3MYDyABKAsyDy5mdW5jdGlvbl90YWJsZVIKb25saW5lR25zcxIyCgxv'
    'ZmZsaW5lX2duc3MYECABKAsyDy5mdW5jdGlvbl90YWJsZVILb2ZmbGluZUduc3MSPgoSZW1lcm'
    'dlbmN5X2NvbnRhY3RzGBEgASgLMg8uZnVuY3Rpb25fdGFibGVSEWVtZXJnZW5jeUNvbnRhY3Rz'
    'EiEKA2hydhgSIAEoCzIPLmZ1bmN0aW9uX3RhYmxlUgNocnYSMgoMYnV0dG9uX2Nyb3duGBMgAS'
    'gLMg8uZnVuY3Rpb25fdGFibGVSC2J1dHRvbkNyb3duEi4KCmZvY3VzX21vZGUYFCABKAsyDy5m'
    'dW5jdGlvbl90YWJsZVIJZm9jdXNNb2RlEi4KCmZpbmRfd2F0Y2gYFSABKAsyDy5mdW5jdGlvbl'
    '90YWJsZVIJZmluZFdhdGNoEiUKBWFsZXhhGBYgASgLMg8uZnVuY3Rpb25fdGFibGVSBWFsZXhh'
    'EioKCGFwcF9saXN0GBcgASgLMg8uZnVuY3Rpb25fdGFibGVSB2FwcExpc3QSNgoOZXZlbnRfdH'
    'JhY2tpbmcYGCABKAsyDy5mdW5jdGlvbl90YWJsZVINZXZlbnRUcmFja2luZw==');

