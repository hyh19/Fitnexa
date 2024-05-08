///
//  Generated code. Do not modify.
//  source: music.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use music_statusDescriptor instead')
const music_status$json = const {
  '1': 'music_status',
  '2': const [
    const {'1': 'MUSIC_STATUS_INVALID', '2': 0},
    const {'1': 'MUSIC_STATUS_PLAY', '2': 1},
    const {'1': 'MUSIC_STATUS_PAUSE', '2': 2},
  ],
};

/// Descriptor for `music_status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List music_statusDescriptor = $convert.base64Decode('CgxtdXNpY19zdGF0dXMSGAoUTVVTSUNfU1RBVFVTX0lOVkFMSUQQABIVChFNVVNJQ19TVEFUVVNfUExBWRABEhYKEk1VU0lDX1NUQVRVU19QQVVTRRAC');
@$core.Deprecated('Use protocol_music_control_operateDescriptor instead')
const protocol_music_control_operate$json = const {
  '1': 'protocol_music_control_operate',
  '2': const [
    const {'1': 'switch_flag', '3': 1, '4': 1, '5': 8, '10': 'switchFlag'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.music_status', '10': 'status'},
    const {'1': 'cur_time', '3': 3, '4': 1, '5': 13, '10': 'curTime'},
    const {'1': 'total_time', '3': 4, '4': 1, '5': 13, '10': 'totalTime'},
    const {'1': 'volume', '3': 5, '4': 1, '5': 13, '10': 'volume'},
    const {'1': 'music_name', '3': 6, '4': 1, '5': 12, '10': 'musicName'},
    const {'1': 'singer_name', '3': 7, '4': 1, '5': 12, '10': 'singerName'},
  ],
};

/// Descriptor for `protocol_music_control_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_music_control_operateDescriptor = $convert.base64Decode('Ch5wcm90b2NvbF9tdXNpY19jb250cm9sX29wZXJhdGUSHwoLc3dpdGNoX2ZsYWcYASABKAhSCnN3aXRjaEZsYWcSJQoGc3RhdHVzGAIgASgOMg0ubXVzaWNfc3RhdHVzUgZzdGF0dXMSGQoIY3VyX3RpbWUYAyABKA1SB2N1clRpbWUSHQoKdG90YWxfdGltZRgEIAEoDVIJdG90YWxUaW1lEhYKBnZvbHVtZRgFIAEoDVIGdm9sdW1lEh0KCm11c2ljX25hbWUYBiABKAxSCW11c2ljTmFtZRIfCgtzaW5nZXJfbmFtZRgHIAEoDFIKc2luZ2VyTmFtZQ==');
