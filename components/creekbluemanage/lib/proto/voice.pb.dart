///
//  Generated code. Do not modify.
//  source: voice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'voice.pbenum.dart';

export 'voice.pbenum.dart';

class protocol_voice_assistant_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_voice_assistant_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonAwakenSwitchFlag')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'raisingYourWristSwitchFlag')
    ..hasRequiredFields = false
  ;

  protocol_voice_assistant_operate._() : super();
  factory protocol_voice_assistant_operate({
    operate_type? operate,
    $core.bool? buttonAwakenSwitchFlag,
    $core.bool? raisingYourWristSwitchFlag,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (buttonAwakenSwitchFlag != null) {
      _result.buttonAwakenSwitchFlag = buttonAwakenSwitchFlag;
    }
    if (raisingYourWristSwitchFlag != null) {
      _result.raisingYourWristSwitchFlag = raisingYourWristSwitchFlag;
    }
    return _result;
  }
  factory protocol_voice_assistant_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_voice_assistant_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_voice_assistant_operate clone() => protocol_voice_assistant_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_voice_assistant_operate copyWith(void Function(protocol_voice_assistant_operate) updates) => super.copyWith((message) => updates(message as protocol_voice_assistant_operate)) as protocol_voice_assistant_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_voice_assistant_operate create() => protocol_voice_assistant_operate._();
  protocol_voice_assistant_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_voice_assistant_operate> createRepeated() => $pb.PbList<protocol_voice_assistant_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_voice_assistant_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_voice_assistant_operate>(create);
  static protocol_voice_assistant_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get buttonAwakenSwitchFlag => $_getBF(1);
  @$pb.TagNumber(2)
  set buttonAwakenSwitchFlag($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasButtonAwakenSwitchFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearButtonAwakenSwitchFlag() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get raisingYourWristSwitchFlag => $_getBF(2);
  @$pb.TagNumber(3)
  set raisingYourWristSwitchFlag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRaisingYourWristSwitchFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearRaisingYourWristSwitchFlag() => clearField(3);
}

class protocol_voice_assistant_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_voice_assistant_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonAwakenSwitchFlag')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'raisingYourWristSwitchFlag')
    ..hasRequiredFields = false
  ;

  protocol_voice_assistant_inquire_reply._() : super();
  factory protocol_voice_assistant_inquire_reply({
    operate_type? operate,
    $core.bool? buttonAwakenSwitchFlag,
    $core.bool? raisingYourWristSwitchFlag,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (buttonAwakenSwitchFlag != null) {
      _result.buttonAwakenSwitchFlag = buttonAwakenSwitchFlag;
    }
    if (raisingYourWristSwitchFlag != null) {
      _result.raisingYourWristSwitchFlag = raisingYourWristSwitchFlag;
    }
    return _result;
  }
  factory protocol_voice_assistant_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_voice_assistant_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_voice_assistant_inquire_reply clone() => protocol_voice_assistant_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_voice_assistant_inquire_reply copyWith(void Function(protocol_voice_assistant_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_voice_assistant_inquire_reply)) as protocol_voice_assistant_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_voice_assistant_inquire_reply create() => protocol_voice_assistant_inquire_reply._();
  protocol_voice_assistant_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_voice_assistant_inquire_reply> createRepeated() => $pb.PbList<protocol_voice_assistant_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_voice_assistant_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_voice_assistant_inquire_reply>(create);
  static protocol_voice_assistant_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get buttonAwakenSwitchFlag => $_getBF(1);
  @$pb.TagNumber(2)
  set buttonAwakenSwitchFlag($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasButtonAwakenSwitchFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearButtonAwakenSwitchFlag() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get raisingYourWristSwitchFlag => $_getBF(2);
  @$pb.TagNumber(3)
  set raisingYourWristSwitchFlag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRaisingYourWristSwitchFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearRaisingYourWristSwitchFlag() => clearField(3);
}

