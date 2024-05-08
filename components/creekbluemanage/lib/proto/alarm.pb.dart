///
//  Generated code. Do not modify.
//  source: alarm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'alarm.pbenum.dart';

export 'alarm.pbenum.dart';

class protocol_set_alarm_item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_set_alarm_item', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alarmId', $pb.PbFieldType.OU3)
    ..e<disp_status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dispStatus', $pb.PbFieldType.OE, defaultOrMaker: disp_status.DISP_OFF, valueOf: disp_status.valueOf, enumValues: disp_status.values)
    ..e<alarm_type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: alarm_type.GET_UP, valueOf: alarm_type.valueOf, enumValues: alarm_type.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minute', $pb.PbFieldType.OU3)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..p<$core.bool>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeat', $pb.PbFieldType.KB)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'laterRemindSwitchFlag')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'laterRemindRepeatTimes', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'laterRemindMin', $pb.PbFieldType.OU3)
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vibrateOnOff')
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  protocol_set_alarm_item._() : super();
  factory protocol_set_alarm_item({
    $core.int? alarmId,
    disp_status? dispStatus,
    alarm_type? type,
    $core.int? hour,
    $core.int? minute,
    $core.bool? switchFlag,
    $core.Iterable<$core.bool>? repeat,
    $core.bool? laterRemindSwitchFlag,
    $core.int? laterRemindRepeatTimes,
    $core.int? laterRemindMin,
    $core.bool? vibrateOnOff,
    $core.List<$core.int>? name,
  }) {
    final _result = create();
    if (alarmId != null) {
      _result.alarmId = alarmId;
    }
    if (dispStatus != null) {
      _result.dispStatus = dispStatus;
    }
    if (type != null) {
      _result.type = type;
    }
    if (hour != null) {
      _result.hour = hour;
    }
    if (minute != null) {
      _result.minute = minute;
    }
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    if (repeat != null) {
      _result.repeat.addAll(repeat);
    }
    if (laterRemindSwitchFlag != null) {
      _result.laterRemindSwitchFlag = laterRemindSwitchFlag;
    }
    if (laterRemindRepeatTimes != null) {
      _result.laterRemindRepeatTimes = laterRemindRepeatTimes;
    }
    if (laterRemindMin != null) {
      _result.laterRemindMin = laterRemindMin;
    }
    if (vibrateOnOff != null) {
      _result.vibrateOnOff = vibrateOnOff;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory protocol_set_alarm_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_set_alarm_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_set_alarm_item clone() => protocol_set_alarm_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_set_alarm_item copyWith(void Function(protocol_set_alarm_item) updates) => super.copyWith((message) => updates(message as protocol_set_alarm_item)) as protocol_set_alarm_item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_set_alarm_item create() => protocol_set_alarm_item._();
  protocol_set_alarm_item createEmptyInstance() => create();
  static $pb.PbList<protocol_set_alarm_item> createRepeated() => $pb.PbList<protocol_set_alarm_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_set_alarm_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_set_alarm_item>(create);
  static protocol_set_alarm_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get alarmId => $_getIZ(0);
  @$pb.TagNumber(1)
  set alarmId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlarmId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlarmId() => clearField(1);

  @$pb.TagNumber(2)
  disp_status get dispStatus => $_getN(1);
  @$pb.TagNumber(2)
  set dispStatus(disp_status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDispStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearDispStatus() => clearField(2);

  @$pb.TagNumber(3)
  alarm_type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(alarm_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get hour => $_getIZ(3);
  @$pb.TagNumber(4)
  set hour($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearHour() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get minute => $_getIZ(4);
  @$pb.TagNumber(5)
  set minute($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinute() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinute() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get switchFlag => $_getBF(5);
  @$pb.TagNumber(6)
  set switchFlag($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSwitchFlag() => $_has(5);
  @$pb.TagNumber(6)
  void clearSwitchFlag() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.bool> get repeat => $_getList(6);

  @$pb.TagNumber(8)
  $core.bool get laterRemindSwitchFlag => $_getBF(7);
  @$pb.TagNumber(8)
  set laterRemindSwitchFlag($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLaterRemindSwitchFlag() => $_has(7);
  @$pb.TagNumber(8)
  void clearLaterRemindSwitchFlag() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get laterRemindRepeatTimes => $_getIZ(8);
  @$pb.TagNumber(9)
  set laterRemindRepeatTimes($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLaterRemindRepeatTimes() => $_has(8);
  @$pb.TagNumber(9)
  void clearLaterRemindRepeatTimes() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get laterRemindMin => $_getIZ(9);
  @$pb.TagNumber(10)
  set laterRemindMin($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLaterRemindMin() => $_has(9);
  @$pb.TagNumber(10)
  void clearLaterRemindMin() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get vibrateOnOff => $_getBF(10);
  @$pb.TagNumber(11)
  set vibrateOnOff($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasVibrateOnOff() => $_has(10);
  @$pb.TagNumber(11)
  void clearVibrateOnOff() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get name => $_getN(11);
  @$pb.TagNumber(12)
  set name($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasName() => $_has(11);
  @$pb.TagNumber(12)
  void clearName() => clearField(12);
}

class protocol_alarm_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_alarm_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'num', $pb.PbFieldType.OU3)
    ..pc<protocol_set_alarm_item>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alarmItem', $pb.PbFieldType.PM, subBuilder: protocol_set_alarm_item.create)
    ..hasRequiredFields = false
  ;

  protocol_alarm_operate._() : super();
  factory protocol_alarm_operate({
    operate_type? operate,
    $core.int? num,
    $core.Iterable<protocol_set_alarm_item>? alarmItem,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (num != null) {
      _result.num = num;
    }
    if (alarmItem != null) {
      _result.alarmItem.addAll(alarmItem);
    }
    return _result;
  }
  factory protocol_alarm_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alarm_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alarm_operate clone() => protocol_alarm_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alarm_operate copyWith(void Function(protocol_alarm_operate) updates) => super.copyWith((message) => updates(message as protocol_alarm_operate)) as protocol_alarm_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_alarm_operate create() => protocol_alarm_operate._();
  protocol_alarm_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alarm_operate> createRepeated() => $pb.PbList<protocol_alarm_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alarm_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alarm_operate>(create);
  static protocol_alarm_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get num => $_getIZ(1);
  @$pb.TagNumber(2)
  set num($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearNum() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<protocol_set_alarm_item> get alarmItem => $_getList(2);
}

class protocol_alarm_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_alarm_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alarmSupportMax', $pb.PbFieldType.OU3)
    ..e<operate_type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'num', $pb.PbFieldType.OU3)
    ..pc<protocol_set_alarm_item>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alarmItem', $pb.PbFieldType.PM, subBuilder: protocol_set_alarm_item.create)
    ..hasRequiredFields = false
  ;

  protocol_alarm_inquire_reply._() : super();
  factory protocol_alarm_inquire_reply({
    $core.int? funcTable,
    $core.int? alarmSupportMax,
    operate_type? operate,
    $core.int? num,
    $core.Iterable<protocol_set_alarm_item>? alarmItem,
  }) {
    final _result = create();
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (alarmSupportMax != null) {
      _result.alarmSupportMax = alarmSupportMax;
    }
    if (operate != null) {
      _result.operate = operate;
    }
    if (num != null) {
      _result.num = num;
    }
    if (alarmItem != null) {
      _result.alarmItem.addAll(alarmItem);
    }
    return _result;
  }
  factory protocol_alarm_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alarm_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alarm_inquire_reply clone() => protocol_alarm_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alarm_inquire_reply copyWith(void Function(protocol_alarm_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_alarm_inquire_reply)) as protocol_alarm_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_alarm_inquire_reply create() => protocol_alarm_inquire_reply._();
  protocol_alarm_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_alarm_inquire_reply> createRepeated() => $pb.PbList<protocol_alarm_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_alarm_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alarm_inquire_reply>(create);
  static protocol_alarm_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get funcTable => $_getIZ(0);
  @$pb.TagNumber(1)
  set funcTable($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get alarmSupportMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set alarmSupportMax($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlarmSupportMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlarmSupportMax() => clearField(2);

  @$pb.TagNumber(3)
  operate_type get operate => $_getN(2);
  @$pb.TagNumber(3)
  set operate(operate_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperate() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get num => $_getIZ(3);
  @$pb.TagNumber(4)
  set num($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<protocol_set_alarm_item> get alarmItem => $_getList(4);
}

