///
//  Generated code. Do not modify.
//  source: music.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'music.pbenum.dart';

export 'music.pbenum.dart';

class protocol_music_control_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_music_control_operate', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..e<music_status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: music_status.MUSIC_STATUS_INVALID, valueOf: music_status.valueOf, enumValues: music_status.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'curTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volume', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'musicName', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'singerName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  protocol_music_control_operate._() : super();
  factory protocol_music_control_operate({
    $core.bool? switchFlag,
    music_status? status,
    $core.int? curTime,
    $core.int? totalTime,
    $core.int? volume,
    $core.List<$core.int>? musicName,
    $core.List<$core.int>? singerName,
  }) {
    final _result = create();
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    if (status != null) {
      _result.status = status;
    }
    if (curTime != null) {
      _result.curTime = curTime;
    }
    if (totalTime != null) {
      _result.totalTime = totalTime;
    }
    if (volume != null) {
      _result.volume = volume;
    }
    if (musicName != null) {
      _result.musicName = musicName;
    }
    if (singerName != null) {
      _result.singerName = singerName;
    }
    return _result;
  }
  factory protocol_music_control_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_music_control_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_music_control_operate clone() => protocol_music_control_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_music_control_operate copyWith(void Function(protocol_music_control_operate) updates) => super.copyWith((message) => updates(message as protocol_music_control_operate)) as protocol_music_control_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_music_control_operate create() => protocol_music_control_operate._();
  protocol_music_control_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_music_control_operate> createRepeated() => $pb.PbList<protocol_music_control_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_music_control_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_music_control_operate>(create);
  static protocol_music_control_operate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchFlag => $_getBF(0);
  @$pb.TagNumber(1)
  set switchFlag($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchFlag() => clearField(1);

  @$pb.TagNumber(2)
  music_status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(music_status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get curTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set curTime($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalTime($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get volume => $_getIZ(4);
  @$pb.TagNumber(5)
  set volume($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVolume() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolume() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get musicName => $_getN(5);
  @$pb.TagNumber(6)
  set musicName($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMusicName() => $_has(5);
  @$pb.TagNumber(6)
  void clearMusicName() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get singerName => $_getN(6);
  @$pb.TagNumber(7)
  set singerName($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSingerName() => $_has(6);
  @$pb.TagNumber(7)
  void clearSingerName() => clearField(7);
}

