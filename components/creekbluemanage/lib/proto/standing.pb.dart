///
//  Generated code. Do not modify.
//  source: standing.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/message.pb.dart';
import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'standing.pbenum.dart';


class protocol_standing_remind_set extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_standing_remind_set', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..e<notify_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..p<$core.bool>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeat', $pb.PbFieldType.KB)
    ..hasRequiredFields = false
  ;

  protocol_standing_remind_set._() : super();
  factory protocol_standing_remind_set({
    $core.bool? switchFlag,
    notify_type? notifyFlag,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
    $core.Iterable<$core.bool>? repeat,
  }) {
    final _result = create();
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    if (notifyFlag != null) {
      _result.notifyFlag = notifyFlag;
    }
    if (startHour != null) {
      _result.startHour = startHour;
    }
    if (startMinute != null) {
      _result.startMinute = startMinute;
    }
    if (endHour != null) {
      _result.endHour = endHour;
    }
    if (endMinute != null) {
      _result.endMinute = endMinute;
    }
    if (repeat != null) {
      _result.repeat.addAll(repeat);
    }
    return _result;
  }
  factory protocol_standing_remind_set.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_standing_remind_set.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_standing_remind_set clone() => protocol_standing_remind_set()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_standing_remind_set copyWith(void Function(protocol_standing_remind_set) updates) => super.copyWith((message) => updates(message as protocol_standing_remind_set)) as protocol_standing_remind_set; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_standing_remind_set create() => protocol_standing_remind_set._();
  protocol_standing_remind_set createEmptyInstance() => create();
  static $pb.PbList<protocol_standing_remind_set> createRepeated() => $pb.PbList<protocol_standing_remind_set>();
  @$core.pragma('dart2js:noInline')
  static protocol_standing_remind_set getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_standing_remind_set>(create);
  static protocol_standing_remind_set? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchFlag => $_getBF(0);
  @$pb.TagNumber(1)
  set switchFlag($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchFlag() => clearField(1);

  @$pb.TagNumber(2)
  notify_type get notifyFlag => $_getN(1);
  @$pb.TagNumber(2)
  set notifyFlag(notify_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifyFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifyFlag() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get startHour => $_getIZ(2);
  @$pb.TagNumber(3)
  set startHour($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartHour() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartHour() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get startMinute => $_getIZ(3);
  @$pb.TagNumber(4)
  set startMinute($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartMinute() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartMinute() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get endHour => $_getIZ(4);
  @$pb.TagNumber(5)
  set endHour($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndHour() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndHour() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get endMinute => $_getIZ(5);
  @$pb.TagNumber(6)
  set endMinute($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndMinute() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndMinute() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.bool> get repeat => $_getList(6);
}

class protocol_standing_remind_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_standing_remind_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_standing_remind_set>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'standingRemind', subBuilder: protocol_standing_remind_set.create)
    ..hasRequiredFields = false
  ;

  protocol_standing_remind_operate._() : super();
  factory protocol_standing_remind_operate({
    operate_type? operate,
    protocol_standing_remind_set? standingRemind,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (standingRemind != null) {
      _result.standingRemind = standingRemind;
    }
    return _result;
  }
  factory protocol_standing_remind_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_standing_remind_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_standing_remind_operate clone() => protocol_standing_remind_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_standing_remind_operate copyWith(void Function(protocol_standing_remind_operate) updates) => super.copyWith((message) => updates(message as protocol_standing_remind_operate)) as protocol_standing_remind_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_standing_remind_operate create() => protocol_standing_remind_operate._();
  protocol_standing_remind_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_standing_remind_operate> createRepeated() => $pb.PbList<protocol_standing_remind_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_standing_remind_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_standing_remind_operate>(create);
  static protocol_standing_remind_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  protocol_standing_remind_set get standingRemind => $_getN(1);
  @$pb.TagNumber(2)
  set standingRemind(protocol_standing_remind_set v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStandingRemind() => $_has(1);
  @$pb.TagNumber(2)
  void clearStandingRemind() => clearField(2);
  @$pb.TagNumber(2)
  protocol_standing_remind_set ensureStandingRemind() => $_ensure(1);
}

class protocol_standing_remind_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_standing_remind_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_standing_remind_set>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'standingRemind', subBuilder: protocol_standing_remind_set.create)
    ..hasRequiredFields = false
  ;

  protocol_standing_remind_inquire_reply._() : super();
  factory protocol_standing_remind_inquire_reply({
    $core.int? funcTable,
    operate_type? operate,
    protocol_standing_remind_set? standingRemind,
  }) {
    final _result = create();
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (operate != null) {
      _result.operate = operate;
    }
    if (standingRemind != null) {
      _result.standingRemind = standingRemind;
    }
    return _result;
  }
  factory protocol_standing_remind_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_standing_remind_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_standing_remind_inquire_reply clone() => protocol_standing_remind_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_standing_remind_inquire_reply copyWith(void Function(protocol_standing_remind_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_standing_remind_inquire_reply)) as protocol_standing_remind_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_standing_remind_inquire_reply create() => protocol_standing_remind_inquire_reply._();
  protocol_standing_remind_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_standing_remind_inquire_reply> createRepeated() => $pb.PbList<protocol_standing_remind_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_standing_remind_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_standing_remind_inquire_reply>(create);
  static protocol_standing_remind_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get funcTable => $_getIZ(0);
  @$pb.TagNumber(1)
  set funcTable($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncTable() => clearField(1);

  @$pb.TagNumber(2)
  operate_type get operate => $_getN(1);
  @$pb.TagNumber(2)
  set operate(operate_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperate() => clearField(2);

  @$pb.TagNumber(3)
  protocol_standing_remind_set get standingRemind => $_getN(2);
  @$pb.TagNumber(3)
  set standingRemind(protocol_standing_remind_set v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStandingRemind() => $_has(2);
  @$pb.TagNumber(3)
  void clearStandingRemind() => clearField(3);
  @$pb.TagNumber(3)
  protocol_standing_remind_set ensureStandingRemind() => $_ensure(2);
}

