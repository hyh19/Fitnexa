///
//  Generated code. Do not modify.
//  source: waterMonitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'waterMonitor.pbenum.dart';

export 'waterMonitor.pbenum.dart';

class protocol_drink_water_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_drink_water_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..e<notify_type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..p<$core.bool>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeat', $pb.PbFieldType.KB)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_drink_water_operate._() : super();
  factory protocol_drink_water_operate({
    operate_type? operate,
    $core.bool? switchFlag,
    notify_type? notifyFlag,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
    $core.Iterable<$core.bool>? repeat,
    $core.int? interval,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
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
    if (interval != null) {
      _result.interval = interval;
    }
    return _result;
  }
  factory protocol_drink_water_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_drink_water_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_drink_water_operate clone() => protocol_drink_water_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_drink_water_operate copyWith(void Function(protocol_drink_water_operate) updates) => super.copyWith((message) => updates(message as protocol_drink_water_operate)) as protocol_drink_water_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_drink_water_operate create() => protocol_drink_water_operate._();
  protocol_drink_water_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_drink_water_operate> createRepeated() => $pb.PbList<protocol_drink_water_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_drink_water_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_drink_water_operate>(create);
  static protocol_drink_water_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get switchFlag => $_getBF(1);
  @$pb.TagNumber(2)
  set switchFlag($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSwitchFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearSwitchFlag() => clearField(2);

  @$pb.TagNumber(3)
  notify_type get notifyFlag => $_getN(2);
  @$pb.TagNumber(3)
  set notifyFlag(notify_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotifyFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotifyFlag() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get startHour => $_getIZ(3);
  @$pb.TagNumber(4)
  set startHour($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartHour() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get startMinute => $_getIZ(4);
  @$pb.TagNumber(5)
  set startMinute($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartMinute() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartMinute() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get endHour => $_getIZ(5);
  @$pb.TagNumber(6)
  set endHour($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndHour() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndHour() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get endMinute => $_getIZ(6);
  @$pb.TagNumber(7)
  set endMinute($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndMinute() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndMinute() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.bool> get repeat => $_getList(7);

  @$pb.TagNumber(9)
  $core.int get interval => $_getIZ(8);
  @$pb.TagNumber(9)
  set interval($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasInterval() => $_has(8);
  @$pb.TagNumber(9)
  void clearInterval() => clearField(9);
}

class protocol_drink_water_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_drink_water_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..e<notify_type>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..p<$core.bool>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeat', $pb.PbFieldType.KB)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_drink_water_inquire_reply._() : super();
  factory protocol_drink_water_inquire_reply({
    $core.int? funcTable,
    operate_type? operate,
    $core.bool? switchFlag,
    notify_type? notifyFlag,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
    $core.Iterable<$core.bool>? repeat,
    $core.int? interval,
  }) {
    final _result = create();
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (operate != null) {
      _result.operate = operate;
    }
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
    if (interval != null) {
      _result.interval = interval;
    }
    return _result;
  }
  factory protocol_drink_water_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_drink_water_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_drink_water_inquire_reply clone() => protocol_drink_water_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_drink_water_inquire_reply copyWith(void Function(protocol_drink_water_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_drink_water_inquire_reply)) as protocol_drink_water_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_drink_water_inquire_reply create() => protocol_drink_water_inquire_reply._();
  protocol_drink_water_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_drink_water_inquire_reply> createRepeated() => $pb.PbList<protocol_drink_water_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_drink_water_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_drink_water_inquire_reply>(create);
  static protocol_drink_water_inquire_reply? _defaultInstance;

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
  $core.bool get switchFlag => $_getBF(2);
  @$pb.TagNumber(3)
  set switchFlag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwitchFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwitchFlag() => clearField(3);

  @$pb.TagNumber(4)
  notify_type get notifyFlag => $_getN(3);
  @$pb.TagNumber(4)
  set notifyFlag(notify_type v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNotifyFlag() => $_has(3);
  @$pb.TagNumber(4)
  void clearNotifyFlag() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get startHour => $_getIZ(4);
  @$pb.TagNumber(5)
  set startHour($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartHour() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartHour() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get startMinute => $_getIZ(5);
  @$pb.TagNumber(6)
  set startMinute($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartMinute() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartMinute() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get endHour => $_getIZ(6);
  @$pb.TagNumber(7)
  set endHour($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndHour() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndHour() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get endMinute => $_getIZ(7);
  @$pb.TagNumber(8)
  set endMinute($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEndMinute() => $_has(7);
  @$pb.TagNumber(8)
  void clearEndMinute() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.bool> get repeat => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get interval => $_getIZ(9);
  @$pb.TagNumber(10)
  set interval($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasInterval() => $_has(9);
  @$pb.TagNumber(10)
  void clearInterval() => clearField(10);
}

