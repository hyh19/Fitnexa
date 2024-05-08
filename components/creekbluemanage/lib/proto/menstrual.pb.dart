///
//  Generated code. Do not modify.
//  source: menstrual.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'menstrual.pbenum.dart';

export 'menstrual.pbenum.dart';

class protocol_menstrual_period_set extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_menstrual_period_set', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'periodLength', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cycleLength', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastYear', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastMonth', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastDay', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_menstrual_period_set._() : super();
  factory protocol_menstrual_period_set({
    $core.bool? switchFlag,
    $core.int? periodLength,
    $core.int? cycleLength,
    $core.int? lastYear,
    $core.int? lastMonth,
    $core.int? lastDay,
  }) {
    final _result = create();
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    if (periodLength != null) {
      _result.periodLength = periodLength;
    }
    if (cycleLength != null) {
      _result.cycleLength = cycleLength;
    }
    if (lastYear != null) {
      _result.lastYear = lastYear;
    }
    if (lastMonth != null) {
      _result.lastMonth = lastMonth;
    }
    if (lastDay != null) {
      _result.lastDay = lastDay;
    }
    return _result;
  }
  factory protocol_menstrual_period_set.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_menstrual_period_set.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_menstrual_period_set clone() => protocol_menstrual_period_set()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_menstrual_period_set copyWith(void Function(protocol_menstrual_period_set) updates) => super.copyWith((message) => updates(message as protocol_menstrual_period_set)) as protocol_menstrual_period_set; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_menstrual_period_set create() => protocol_menstrual_period_set._();
  protocol_menstrual_period_set createEmptyInstance() => create();
  static $pb.PbList<protocol_menstrual_period_set> createRepeated() => $pb.PbList<protocol_menstrual_period_set>();
  @$core.pragma('dart2js:noInline')
  static protocol_menstrual_period_set getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_menstrual_period_set>(create);
  static protocol_menstrual_period_set? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchFlag => $_getBF(0);
  @$pb.TagNumber(1)
  set switchFlag($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchFlag() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get periodLength => $_getIZ(1);
  @$pb.TagNumber(2)
  set periodLength($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeriodLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriodLength() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get cycleLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set cycleLength($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCycleLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearCycleLength() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get lastYear => $_getIZ(3);
  @$pb.TagNumber(4)
  set lastYear($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastYear() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastYear() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get lastMonth => $_getIZ(4);
  @$pb.TagNumber(5)
  set lastMonth($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastMonth() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastMonth() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get lastDay => $_getIZ(5);
  @$pb.TagNumber(6)
  set lastDay($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastDay() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastDay() => clearField(6);
}

class protocol_menstrual_record extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_menstrual_record', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'day', $pb.PbFieldType.OU3)
    ..e<period_log>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'log', $pb.PbFieldType.OE, defaultOrMaker: period_log.PERIOD_LOG_NULL, valueOf: period_log.valueOf, enumValues: period_log.values)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operateUtcTime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_menstrual_record._() : super();
  factory protocol_menstrual_record({
    $core.int? year,
    $core.int? month,
    $core.int? day,
    period_log? log,
    $core.int? operateUtcTime,
  }) {
    final _result = create();
    if (year != null) {
      _result.year = year;
    }
    if (month != null) {
      _result.month = month;
    }
    if (day != null) {
      _result.day = day;
    }
    if (log != null) {
      _result.log = log;
    }
    if (operateUtcTime != null) {
      _result.operateUtcTime = operateUtcTime;
    }
    return _result;
  }
  factory protocol_menstrual_record.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_menstrual_record.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_menstrual_record clone() => protocol_menstrual_record()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_menstrual_record copyWith(void Function(protocol_menstrual_record) updates) => super.copyWith((message) => updates(message as protocol_menstrual_record)) as protocol_menstrual_record; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_menstrual_record create() => protocol_menstrual_record._();
  protocol_menstrual_record createEmptyInstance() => create();
  static $pb.PbList<protocol_menstrual_record> createRepeated() => $pb.PbList<protocol_menstrual_record>();
  @$core.pragma('dart2js:noInline')
  static protocol_menstrual_record getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_menstrual_record>(create);
  static protocol_menstrual_record? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get year => $_getIZ(0);
  @$pb.TagNumber(1)
  set year($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasYear() => $_has(0);
  @$pb.TagNumber(1)
  void clearYear() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get month => $_getIZ(1);
  @$pb.TagNumber(2)
  set month($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearMonth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get day => $_getIZ(2);
  @$pb.TagNumber(3)
  set day($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDay() => clearField(3);

  @$pb.TagNumber(4)
  period_log get log => $_getN(3);
  @$pb.TagNumber(4)
  set log(period_log v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLog() => $_has(3);
  @$pb.TagNumber(4)
  void clearLog() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get operateUtcTime => $_getIZ(4);
  @$pb.TagNumber(5)
  set operateUtcTime($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOperateUtcTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperateUtcTime() => clearField(5);
}

class protocol_menstruation_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_menstruation_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_menstrual_period_set>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'periodSet', subBuilder: protocol_menstrual_period_set.create)
    ..pc<protocol_menstrual_record>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'record', $pb.PbFieldType.PM, subBuilder: protocol_menstrual_record.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setUtcTime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_menstruation_operate._() : super();
  factory protocol_menstruation_operate({
    operate_type? operate,
    protocol_menstrual_period_set? periodSet,
    $core.Iterable<protocol_menstrual_record>? record,
    $core.int? setUtcTime,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (periodSet != null) {
      _result.periodSet = periodSet;
    }
    if (record != null) {
      _result.record.addAll(record);
    }
    if (setUtcTime != null) {
      _result.setUtcTime = setUtcTime;
    }
    return _result;
  }
  factory protocol_menstruation_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_menstruation_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_menstruation_operate clone() => protocol_menstruation_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_menstruation_operate copyWith(void Function(protocol_menstruation_operate) updates) => super.copyWith((message) => updates(message as protocol_menstruation_operate)) as protocol_menstruation_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_menstruation_operate create() => protocol_menstruation_operate._();
  protocol_menstruation_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_menstruation_operate> createRepeated() => $pb.PbList<protocol_menstruation_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_menstruation_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_menstruation_operate>(create);
  static protocol_menstruation_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  protocol_menstrual_period_set get periodSet => $_getN(1);
  @$pb.TagNumber(2)
  set periodSet(protocol_menstrual_period_set v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeriodSet() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriodSet() => clearField(2);
  @$pb.TagNumber(2)
  protocol_menstrual_period_set ensurePeriodSet() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<protocol_menstrual_record> get record => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get setUtcTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set setUtcTime($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetUtcTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetUtcTime() => clearField(4);
}

class protocol_menstruation_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_menstruation_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_menstrual_period_set>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menstrualPeriodSet', subBuilder: protocol_menstrual_period_set.create)
    ..pc<protocol_menstrual_record>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'record', $pb.PbFieldType.PM, subBuilder: protocol_menstrual_record.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setUtcTime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_menstruation_inquire_reply._() : super();
  factory protocol_menstruation_inquire_reply({
    $core.int? funcTable,
    operate_type? operate,
    protocol_menstrual_period_set? menstrualPeriodSet,
    $core.Iterable<protocol_menstrual_record>? record,
    $core.int? setUtcTime,
  }) {
    final _result = create();
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (operate != null) {
      _result.operate = operate;
    }
    if (menstrualPeriodSet != null) {
      _result.menstrualPeriodSet = menstrualPeriodSet;
    }
    if (record != null) {
      _result.record.addAll(record);
    }
    if (setUtcTime != null) {
      _result.setUtcTime = setUtcTime;
    }
    return _result;
  }
  factory protocol_menstruation_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_menstruation_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_menstruation_inquire_reply clone() => protocol_menstruation_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_menstruation_inquire_reply copyWith(void Function(protocol_menstruation_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_menstruation_inquire_reply)) as protocol_menstruation_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_menstruation_inquire_reply create() => protocol_menstruation_inquire_reply._();
  protocol_menstruation_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_menstruation_inquire_reply> createRepeated() => $pb.PbList<protocol_menstruation_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_menstruation_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_menstruation_inquire_reply>(create);
  static protocol_menstruation_inquire_reply? _defaultInstance;

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
  protocol_menstrual_period_set get menstrualPeriodSet => $_getN(2);
  @$pb.TagNumber(3)
  set menstrualPeriodSet(protocol_menstrual_period_set v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMenstrualPeriodSet() => $_has(2);
  @$pb.TagNumber(3)
  void clearMenstrualPeriodSet() => clearField(3);
  @$pb.TagNumber(3)
  protocol_menstrual_period_set ensureMenstrualPeriodSet() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<protocol_menstrual_record> get record => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get setUtcTime => $_getIZ(4);
  @$pb.TagNumber(5)
  set setUtcTime($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetUtcTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetUtcTime() => clearField(5);
}

