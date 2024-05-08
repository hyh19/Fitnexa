//
//  Generated code. Do not modify.
//  source: message.proto
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

@$core.Deprecated('Use notify_typeDescriptor instead')
const notify_type$json = {
  '1': 'notify_type',
  '2': [
    {'1': 'ALLOW', '2': 0},
    {'1': 'SILENT', '2': 1},
    {'1': 'CLOSE', '2': 2},
  ],
};

/// Descriptor for `notify_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List notify_typeDescriptor = $convert.base64Decode(
    'Cgtub3RpZnlfdHlwZRIJCgVBTExPVxAAEgoKBlNJTEVOVBABEgkKBUNMT1NFEAI=');

@$core.Deprecated('Use message_remind_typeDescriptor instead')
const message_remind_type$json = {
  '1': 'message_remind_type',
  '2': [
    {'1': 'NULL', '2': 0},
    {'1': 'SMS', '2': 1},
    {'1': 'Email', '2': 2},
    {'1': 'Calendar', '2': 3},
    {'1': 'Missed_Call', '2': 4},
    {'1': 'Facebook', '2': 5},
    {'1': 'Twitter', '2': 6},
    {'1': 'Instagram', '2': 7},
    {'1': 'Snapchat', '2': 8},
    {'1': 'Whatsapp', '2': 9},
    {'1': 'Line', '2': 10},
    {'1': 'Tiktok', '2': 11},
    {'1': 'Skype', '2': 12},
    {'1': 'Wechat', '2': 13},
    {'1': 'Fitbeing', '2': 14},
    {'1': 'Microsoft_Teams', '2': 15},
    {'1': 'Telegram_Messenger', '2': 16},
    {'1': 'Messenger', '2': 17},
    {'1': 'LinkedIn', '2': 18},
    {'1': 'Gmail', '2': 19},
    {'1': 'Microsoft_Outlook', '2': 20},
    {'1': 'Google_Chat', '2': 21},
    {'1': 'QQ', '2': 22},
    {'1': 'WhatsApp_Business', '2': 23},
    {'1': 'Youtube', '2': 24},
    {'1': 'Uber', '2': 25},
    {'1': 'Uber_eats', '2': 26},
    {'1': 'Door_Dash_missing', '2': 27},
    {'1': 'Banco_General', '2': 28},
    {'1': 'BAC_Bank', '2': 29},
    {'1': 'Google_Maps', '2': 30},
    {'1': 'Amazon_shopping', '2': 31},
    {'1': 'Spotify', '2': 32},
    {'1': 'Discord', '2': 33},
    {'1': 'remind_type_max', '2': 34},
  ],
};

/// Descriptor for `message_remind_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List message_remind_typeDescriptor = $convert.base64Decode(
    'ChNtZXNzYWdlX3JlbWluZF90eXBlEggKBE5VTEwQABIHCgNTTVMQARIJCgVFbWFpbBACEgwKCE'
    'NhbGVuZGFyEAMSDwoLTWlzc2VkX0NhbGwQBBIMCghGYWNlYm9vaxAFEgsKB1R3aXR0ZXIQBhIN'
    'CglJbnN0YWdyYW0QBxIMCghTbmFwY2hhdBAIEgwKCFdoYXRzYXBwEAkSCAoETGluZRAKEgoKBl'
    'Rpa3RvaxALEgkKBVNreXBlEAwSCgoGV2VjaGF0EA0SDAoIRml0YmVpbmcQDhITCg9NaWNyb3Nv'
    'ZnRfVGVhbXMQDxIWChJUZWxlZ3JhbV9NZXNzZW5nZXIQEBINCglNZXNzZW5nZXIQERIMCghMaW'
    '5rZWRJbhASEgkKBUdtYWlsEBMSFQoRTWljcm9zb2Z0X091dGxvb2sQFBIPCgtHb29nbGVfQ2hh'
    'dBAVEgYKAlFREBYSFQoRV2hhdHNBcHBfQnVzaW5lc3MQFxILCgdZb3V0dWJlEBgSCAoEVWJlch'
    'AZEg0KCVViZXJfZWF0cxAaEhUKEURvb3JfRGFzaF9taXNzaW5nEBsSEQoNQmFuY29fR2VuZXJh'
    'bBAcEgwKCEJBQ19CYW5rEB0SDwoLR29vZ2xlX01hcHMQHhITCg9BbWF6b25fc2hvcHBpbmcQHx'
    'ILCgdTcG90aWZ5ECASCwoHRGlzY29yZBAhEhMKD3JlbWluZF90eXBlX21heBAi');

@$core.Deprecated('Use notify_os_platformDescriptor instead')
const notify_os_platform$json = {
  '1': 'notify_os_platform',
  '2': [
    {'1': 'ANDROID', '2': 0},
    {'1': 'IOS', '2': 1},
  ],
};

/// Descriptor for `notify_os_platform`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List notify_os_platformDescriptor = $convert.base64Decode(
    'ChJub3RpZnlfb3NfcGxhdGZvcm0SCwoHQU5EUk9JRBAAEgcKA0lPUxAB');

@$core.Deprecated('Use protocol_message_notify_switch_itemDescriptor instead')
const protocol_message_notify_switch_item$json = {
  '1': 'protocol_message_notify_switch_item',
  '2': [
    {'1': 'remind_type', '3': 1, '4': 1, '5': 14, '6': '.message_remind_type', '10': 'remindType'},
    {'1': 'notify_flag', '3': 2, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
  ],
};

/// Descriptor for `protocol_message_notify_switch_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_message_notify_switch_itemDescriptor = $convert.base64Decode(
    'CiNwcm90b2NvbF9tZXNzYWdlX25vdGlmeV9zd2l0Y2hfaXRlbRI1CgtyZW1pbmRfdHlwZRgBIA'
    'EoDjIULm1lc3NhZ2VfcmVtaW5kX3R5cGVSCnJlbWluZFR5cGUSLQoLbm90aWZ5X2ZsYWcYAiAB'
    'KA4yDC5ub3RpZnlfdHlwZVIKbm90aWZ5RmxhZw==');

@$core.Deprecated('Use protocol_message_notify_func_support_replyDescriptor instead')
const protocol_message_notify_func_support_reply$json = {
  '1': 'protocol_message_notify_func_support_reply',
  '2': [
    {'1': 'sms', '3': 1, '4': 1, '5': 8, '10': 'sms'},
    {'1': 'email', '3': 2, '4': 1, '5': 8, '10': 'email'},
    {'1': 'calendar', '3': 3, '4': 1, '5': 8, '10': 'calendar'},
    {'1': 'missed_call', '3': 4, '4': 1, '5': 8, '10': 'missedCall'},
    {'1': 'facebook', '3': 5, '4': 1, '5': 8, '10': 'facebook'},
    {'1': 'twitter', '3': 6, '4': 1, '5': 8, '10': 'twitter'},
    {'1': 'instagram', '3': 7, '4': 1, '5': 8, '10': 'instagram'},
    {'1': 'snapchat', '3': 8, '4': 1, '5': 8, '10': 'snapchat'},
    {'1': 'whatsapp', '3': 9, '4': 1, '5': 8, '10': 'whatsapp'},
    {'1': 'line', '3': 10, '4': 1, '5': 8, '10': 'line'},
    {'1': 'tiktok', '3': 11, '4': 1, '5': 8, '10': 'tiktok'},
    {'1': 'skype', '3': 12, '4': 1, '5': 8, '10': 'skype'},
    {'1': 'wechat', '3': 13, '4': 1, '5': 8, '10': 'wechat'},
    {'1': 'Fitbeing', '3': 14, '4': 1, '5': 8, '10': 'Fitbeing'},
    {'1': 'microsoft_teams', '3': 15, '4': 1, '5': 8, '10': 'microsoftTeams'},
    {'1': 'telegram_messenger', '3': 16, '4': 1, '5': 8, '10': 'telegramMessenger'},
    {'1': 'messenger', '3': 17, '4': 1, '5': 8, '10': 'messenger'},
    {'1': 'linkedin', '3': 18, '4': 1, '5': 8, '10': 'linkedin'},
    {'1': 'gmail', '3': 19, '4': 1, '5': 8, '10': 'gmail'},
    {'1': 'microsoft_outlook', '3': 20, '4': 1, '5': 8, '10': 'microsoftOutlook'},
    {'1': 'google_chat', '3': 21, '4': 1, '5': 8, '10': 'googleChat'},
    {'1': 'qq', '3': 22, '4': 1, '5': 8, '10': 'qq'},
    {'1': 'whatsapp_business', '3': 23, '4': 1, '5': 8, '10': 'whatsappBusiness'},
    {'1': 'Youtube', '3': 24, '4': 1, '5': 8, '10': 'Youtube'},
    {'1': 'Uber', '3': 25, '4': 1, '5': 8, '10': 'Uber'},
    {'1': 'Uber_eats', '3': 26, '4': 1, '5': 8, '10': 'UberEats'},
    {'1': 'Door_Dash_missing', '3': 27, '4': 1, '5': 8, '10': 'DoorDashMissing'},
    {'1': 'Banco_General', '3': 28, '4': 1, '5': 8, '10': 'BancoGeneral'},
    {'1': 'BAC_Bank', '3': 29, '4': 1, '5': 8, '10': 'BACBank'},
    {'1': 'Google_Maps', '3': 30, '4': 1, '5': 8, '10': 'GoogleMaps'},
    {'1': 'Amazon_shopping', '3': 31, '4': 1, '5': 8, '10': 'AmazonShopping'},
    {'1': 'Spotify', '3': 32, '4': 1, '5': 8, '10': 'Spotify'},
    {'1': 'Discord', '3': 33, '4': 1, '5': 8, '10': 'Discord'},
    {'1': 'remind_type_max', '3': 34, '4': 1, '5': 8, '10': 'remindTypeMax'},
  ],
};

/// Descriptor for `protocol_message_notify_func_support_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_message_notify_func_support_replyDescriptor = $convert.base64Decode(
    'Cipwcm90b2NvbF9tZXNzYWdlX25vdGlmeV9mdW5jX3N1cHBvcnRfcmVwbHkSEAoDc21zGAEgAS'
    'gIUgNzbXMSFAoFZW1haWwYAiABKAhSBWVtYWlsEhoKCGNhbGVuZGFyGAMgASgIUghjYWxlbmRh'
    'chIfCgttaXNzZWRfY2FsbBgEIAEoCFIKbWlzc2VkQ2FsbBIaCghmYWNlYm9vaxgFIAEoCFIIZm'
    'FjZWJvb2sSGAoHdHdpdHRlchgGIAEoCFIHdHdpdHRlchIcCglpbnN0YWdyYW0YByABKAhSCWlu'
    'c3RhZ3JhbRIaCghzbmFwY2hhdBgIIAEoCFIIc25hcGNoYXQSGgoId2hhdHNhcHAYCSABKAhSCH'
    'doYXRzYXBwEhIKBGxpbmUYCiABKAhSBGxpbmUSFgoGdGlrdG9rGAsgASgIUgZ0aWt0b2sSFAoF'
    'c2t5cGUYDCABKAhSBXNreXBlEhYKBndlY2hhdBgNIAEoCFIGd2VjaGF0EhoKCEZpdGJlaW5nGA'
    '4gASgIUghGaXRiZWluZxInCg9taWNyb3NvZnRfdGVhbXMYDyABKAhSDm1pY3Jvc29mdFRlYW1z'
    'Ei0KEnRlbGVncmFtX21lc3NlbmdlchgQIAEoCFIRdGVsZWdyYW1NZXNzZW5nZXISHAoJbWVzc2'
    'VuZ2VyGBEgASgIUgltZXNzZW5nZXISGgoIbGlua2VkaW4YEiABKAhSCGxpbmtlZGluEhQKBWdt'
    'YWlsGBMgASgIUgVnbWFpbBIrChFtaWNyb3NvZnRfb3V0bG9vaxgUIAEoCFIQbWljcm9zb2Z0T3'
    'V0bG9vaxIfCgtnb29nbGVfY2hhdBgVIAEoCFIKZ29vZ2xlQ2hhdBIOCgJxcRgWIAEoCFICcXES'
    'KwoRd2hhdHNhcHBfYnVzaW5lc3MYFyABKAhSEHdoYXRzYXBwQnVzaW5lc3MSGAoHWW91dHViZR'
    'gYIAEoCFIHWW91dHViZRISCgRVYmVyGBkgASgIUgRVYmVyEhsKCVViZXJfZWF0cxgaIAEoCFII'
    'VWJlckVhdHMSKgoRRG9vcl9EYXNoX21pc3NpbmcYGyABKAhSD0Rvb3JEYXNoTWlzc2luZxIjCg'
    '1CYW5jb19HZW5lcmFsGBwgASgIUgxCYW5jb0dlbmVyYWwSGQoIQkFDX0JhbmsYHSABKAhSB0JB'
    'Q0JhbmsSHwoLR29vZ2xlX01hcHMYHiABKAhSCkdvb2dsZU1hcHMSJwoPQW1hem9uX3Nob3BwaW'
    '5nGB8gASgIUg5BbWF6b25TaG9wcGluZxIYCgdTcG90aWZ5GCAgASgIUgdTcG90aWZ5EhgKB0Rp'
    'c2NvcmQYISABKAhSB0Rpc2NvcmQSJgoPcmVtaW5kX3R5cGVfbWF4GCIgASgIUg1yZW1pbmRUeX'
    'BlTWF4');

@$core.Deprecated('Use protocol_message_notify_dataDescriptor instead')
const protocol_message_notify_data$json = {
  '1': 'protocol_message_notify_data',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'os_platform', '3': 2, '4': 1, '5': 14, '6': '.notify_os_platform', '10': 'osPlatform'},
    {'1': 'notify_flag', '3': 3, '4': 1, '5': 14, '6': '.notify_type', '10': 'notifyFlag'},
    {'1': 'remind_type', '3': 4, '4': 1, '5': 14, '6': '.message_remind_type', '10': 'remindType'},
    {'1': 'contact_text', '3': 5, '4': 1, '5': 12, '10': 'contactText'},
    {'1': 'msg_content', '3': 6, '4': 1, '5': 12, '10': 'msgContent'},
  ],
};

/// Descriptor for `protocol_message_notify_data`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_message_notify_dataDescriptor = $convert.base64Decode(
    'Chxwcm90b2NvbF9tZXNzYWdlX25vdGlmeV9kYXRhEicKB29wZXJhdGUYASABKA4yDS5vcGVyYX'
    'RlX3R5cGVSB29wZXJhdGUSNAoLb3NfcGxhdGZvcm0YAiABKA4yEy5ub3RpZnlfb3NfcGxhdGZv'
    'cm1SCm9zUGxhdGZvcm0SLQoLbm90aWZ5X2ZsYWcYAyABKA4yDC5ub3RpZnlfdHlwZVIKbm90aW'
    'Z5RmxhZxI1CgtyZW1pbmRfdHlwZRgEIAEoDjIULm1lc3NhZ2VfcmVtaW5kX3R5cGVSCnJlbWlu'
    'ZFR5cGUSIQoMY29udGFjdF90ZXh0GAUgASgMUgtjb250YWN0VGV4dBIfCgttc2dfY29udGVudB'
    'gGIAEoDFIKbXNnQ29udGVudA==');

@$core.Deprecated('Use protocol_message_notify_data_inquire_replyDescriptor instead')
const protocol_message_notify_data_inquire_reply$json = {
  '1': 'protocol_message_notify_data_inquire_reply',
  '2': [
    {'1': 'func_table', '3': 1, '4': 1, '5': 13, '10': 'funcTable'},
    {'1': 'operate', '3': 2, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
  ],
};

/// Descriptor for `protocol_message_notify_data_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_message_notify_data_inquire_replyDescriptor = $convert.base64Decode(
    'Cipwcm90b2NvbF9tZXNzYWdlX25vdGlmeV9kYXRhX2lucXVpcmVfcmVwbHkSHQoKZnVuY190YW'
    'JsZRgBIAEoDVIJZnVuY1RhYmxlEicKB29wZXJhdGUYAiABKA4yDS5vcGVyYXRlX3R5cGVSB29w'
    'ZXJhdGU=');

@$core.Deprecated('Use protocol_message_notify_switchDescriptor instead')
const protocol_message_notify_switch$json = {
  '1': 'protocol_message_notify_switch',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'notify_switch', '3': 2, '4': 1, '5': 8, '10': 'notifySwitch'},
    {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.protocol_message_notify_switch_item', '10': 'items'},
    {'1': 'access_details_direct_switch', '3': 4, '4': 1, '5': 8, '10': 'accessDetailsDirectSwitch'},
  ],
};

/// Descriptor for `protocol_message_notify_switch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_message_notify_switchDescriptor = $convert.base64Decode(
    'Ch5wcm90b2NvbF9tZXNzYWdlX25vdGlmeV9zd2l0Y2gSJwoHb3BlcmF0ZRgBIAEoDjINLm9wZX'
    'JhdGVfdHlwZVIHb3BlcmF0ZRIjCg1ub3RpZnlfc3dpdGNoGAIgASgIUgxub3RpZnlTd2l0Y2gS'
    'OgoFaXRlbXMYAyADKAsyJC5wcm90b2NvbF9tZXNzYWdlX25vdGlmeV9zd2l0Y2hfaXRlbVIFaX'
    'RlbXMSPwocYWNjZXNzX2RldGFpbHNfZGlyZWN0X3N3aXRjaBgEIAEoCFIZYWNjZXNzRGV0YWls'
    'c0RpcmVjdFN3aXRjaA==');

@$core.Deprecated('Use protocol_message_notify_switch_inquire_replyDescriptor instead')
const protocol_message_notify_switch_inquire_reply$json = {
  '1': 'protocol_message_notify_switch_inquire_reply',
  '2': [
    {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    {'1': 'notify_switch', '3': 2, '4': 1, '5': 8, '10': 'notifySwitch'},
    {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.protocol_message_notify_switch_item', '10': 'items'},
    {'1': 'access_details_direct_switch', '3': 4, '4': 1, '5': 8, '10': 'accessDetailsDirectSwitch'},
    {'1': 'func_table', '3': 5, '4': 1, '5': 13, '10': 'funcTable'},
  ],
};

/// Descriptor for `protocol_message_notify_switch_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_message_notify_switch_inquire_replyDescriptor = $convert.base64Decode(
    'Cixwcm90b2NvbF9tZXNzYWdlX25vdGlmeV9zd2l0Y2hfaW5xdWlyZV9yZXBseRInCgdvcGVyYX'
    'RlGAEgASgOMg0ub3BlcmF0ZV90eXBlUgdvcGVyYXRlEiMKDW5vdGlmeV9zd2l0Y2gYAiABKAhS'
    'DG5vdGlmeVN3aXRjaBI6CgVpdGVtcxgDIAMoCzIkLnByb3RvY29sX21lc3NhZ2Vfbm90aWZ5X3'
    'N3aXRjaF9pdGVtUgVpdGVtcxI/ChxhY2Nlc3NfZGV0YWlsc19kaXJlY3Rfc3dpdGNoGAQgASgI'
    'UhlhY2Nlc3NEZXRhaWxzRGlyZWN0U3dpdGNoEh0KCmZ1bmNfdGFibGUYBSABKA1SCWZ1bmNUYW'
    'JsZQ==');

