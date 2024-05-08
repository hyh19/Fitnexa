///
//  Generated code. Do not modify.
//  source: sleepMonitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'sleepMonitor.pbenum.dart';

export 'sleepMonitor.pbenum.dart';

class protocol_sleep_monitor_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_sleep_monitor_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<sleep_monitor_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sleepMode', $pb.PbFieldType.OE, defaultOrMaker: sleep_monitor_type.GENERAL, valueOf: sleep_monitor_type.valueOf, enumValues: sleep_monitor_type.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..hasRequiredFields = false
  ;

  protocol_sleep_monitor_operate._() : super();
  factory protocol_sleep_monitor_operate({
    operate_type? operate,
    sleep_monitor_type? sleepMode,
    $core.bool? switchFlag,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (sleepMode != null) {
      _result.sleepMode = sleepMode;
    }
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    return _result;
  }
  factory protocol_sleep_monitor_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_sleep_monitor_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_sleep_monitor_operate clone() => protocol_sleep_monitor_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_sleep_monitor_operate copyWith(void Function(protocol_sleep_monitor_operate) updates) => super.copyWith((message) => updates(message as protocol_sleep_monitor_operate)) as protocol_sleep_monitor_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_sleep_monitor_operate create() => protocol_sleep_monitor_operate._();
  protocol_sleep_monitor_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_sleep_monitor_operate> createRepeated() => $pb.PbList<protocol_sleep_monitor_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_sleep_monitor_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_sleep_monitor_operate>(create);
  static protocol_sleep_monitor_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  sleep_monitor_type get sleepMode => $_getN(1);
  @$pb.TagNumber(2)
  set sleepMode(sleep_monitor_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSleepMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearSleepMode() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get switchFlag => $_getBF(2);
  @$pb.TagNumber(3)
  set switchFlag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwitchFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwitchFlag() => clearField(3);
}

class protocol_sleep_monitor_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_sleep_monitor_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<sleep_monitor_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sleepMode', $pb.PbFieldType.OE, defaultOrMaker: sleep_monitor_type.GENERAL, valueOf: sleep_monitor_type.valueOf, enumValues: sleep_monitor_type.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..hasRequiredFields = false
  ;

  protocol_sleep_monitor_inquire_reply._() : super();
  factory protocol_sleep_monitor_inquire_reply({
    operate_type? operate,
    sleep_monitor_type? sleepMode,
    $core.bool? switchFlag,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (sleepMode != null) {
      _result.sleepMode = sleepMode;
    }
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    return _result;
  }
  factory protocol_sleep_monitor_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_sleep_monitor_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_sleep_monitor_inquire_reply clone() => protocol_sleep_monitor_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_sleep_monitor_inquire_reply copyWith(void Function(protocol_sleep_monitor_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_sleep_monitor_inquire_reply)) as protocol_sleep_monitor_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_sleep_monitor_inquire_reply create() => protocol_sleep_monitor_inquire_reply._();
  protocol_sleep_monitor_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_sleep_monitor_inquire_reply> createRepeated() => $pb.PbList<protocol_sleep_monitor_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_sleep_monitor_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_sleep_monitor_inquire_reply>(create);
  static protocol_sleep_monitor_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  sleep_monitor_type get sleepMode => $_getN(1);
  @$pb.TagNumber(2)
  set sleepMode(sleep_monitor_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSleepMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearSleepMode() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get switchFlag => $_getBF(2);
  @$pb.TagNumber(3)
  set switchFlag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwitchFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwitchFlag() => clearField(3);
}

