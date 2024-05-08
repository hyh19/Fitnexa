///
//  Generated code. Do not modify.
//  source: music.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class music_status extends $pb.ProtobufEnum {
  static const music_status MUSIC_STATUS_INVALID = music_status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MUSIC_STATUS_INVALID');
  static const music_status MUSIC_STATUS_PLAY = music_status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MUSIC_STATUS_PLAY');
  static const music_status MUSIC_STATUS_PAUSE = music_status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MUSIC_STATUS_PAUSE');

  static const $core.List<music_status> values = <music_status> [
    MUSIC_STATUS_INVALID,
    MUSIC_STATUS_PLAY,
    MUSIC_STATUS_PAUSE,
  ];

  static final $core.Map<$core.int, music_status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static music_status? valueOf($core.int value) => _byValue[value];

  const music_status._($core.int v, $core.String n) : super(v, n);
}

