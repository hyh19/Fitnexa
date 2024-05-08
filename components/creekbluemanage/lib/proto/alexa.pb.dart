//
//  Generated code. Do not modify.
//  source: alexa.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'alexa.pbenum.dart';

export 'alexa.pbenum.dart';

class protocol_alexa_tran_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_tran_operate({
    tran_direction_type? tranType,
    alexa_operate_type? operate,
    $core.int? errCode,
  }) {
    final $result = create();
    if (tranType != null) {
      $result.tranType = tranType;
    }
    if (operate != null) {
      $result.operate = operate;
    }
    if (errCode != null) {
      $result.errCode = errCode;
    }
    return $result;
  }
  protocol_alexa_tran_operate._() : super();
  factory protocol_alexa_tran_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_tran_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_tran_operate', createEmptyInstance: create)
    ..e<tran_direction_type>(1, _omitFieldNames ? '' : 'tranType', $pb.PbFieldType.OE, defaultOrMaker: tran_direction_type.WATCH_TRAN, valueOf: tran_direction_type.valueOf, enumValues: tran_direction_type.values)
    ..e<alexa_operate_type>(2, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: alexa_operate_type.ALEXA_OPERATE_NULL, valueOf: alexa_operate_type.valueOf, enumValues: alexa_operate_type.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_tran_operate clone() => protocol_alexa_tran_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_tran_operate copyWith(void Function(protocol_alexa_tran_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_tran_operate)) as protocol_alexa_tran_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_tran_operate create() => protocol_alexa_tran_operate._();
  protocol_alexa_tran_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_tran_operate> createRepeated() => $pb.PbList<protocol_alexa_tran_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_tran_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_tran_operate>(create);
  static protocol_alexa_tran_operate? _defaultInstance;

  @$pb.TagNumber(1)
  tran_direction_type get tranType => $_getN(0);
  @$pb.TagNumber(1)
  set tranType(tran_direction_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTranType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTranType() => clearField(1);

  @$pb.TagNumber(2)
  alexa_operate_type get operate => $_getN(1);
  @$pb.TagNumber(2)
  set operate(alexa_operate_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get errCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set errCode($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrCode() => clearField(3);
}

class protocol_alexa_status_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_status_operate({
    tran_direction_type? tranType,
    alexa_noitce_type? noticeType,
    alexa_status_type? statusType,
  }) {
    final $result = create();
    if (tranType != null) {
      $result.tranType = tranType;
    }
    if (noticeType != null) {
      $result.noticeType = noticeType;
    }
    if (statusType != null) {
      $result.statusType = statusType;
    }
    return $result;
  }
  protocol_alexa_status_operate._() : super();
  factory protocol_alexa_status_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_status_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_status_operate', createEmptyInstance: create)
    ..e<tran_direction_type>(1, _omitFieldNames ? '' : 'tranType', $pb.PbFieldType.OE, defaultOrMaker: tran_direction_type.WATCH_TRAN, valueOf: tran_direction_type.valueOf, enumValues: tran_direction_type.values)
    ..e<alexa_noitce_type>(2, _omitFieldNames ? '' : 'noticeType', $pb.PbFieldType.OE, defaultOrMaker: alexa_noitce_type.ALEXA_NOTICE_NULL, valueOf: alexa_noitce_type.valueOf, enumValues: alexa_noitce_type.values)
    ..e<alexa_status_type>(3, _omitFieldNames ? '' : 'statusType', $pb.PbFieldType.OE, defaultOrMaker: alexa_status_type.ALEXA_STATUS_NULL, valueOf: alexa_status_type.valueOf, enumValues: alexa_status_type.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_status_operate clone() => protocol_alexa_status_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_status_operate copyWith(void Function(protocol_alexa_status_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_status_operate)) as protocol_alexa_status_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_status_operate create() => protocol_alexa_status_operate._();
  protocol_alexa_status_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_status_operate> createRepeated() => $pb.PbList<protocol_alexa_status_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_status_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_status_operate>(create);
  static protocol_alexa_status_operate? _defaultInstance;

  @$pb.TagNumber(1)
  tran_direction_type get tranType => $_getN(0);
  @$pb.TagNumber(1)
  set tranType(tran_direction_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTranType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTranType() => clearField(1);

  @$pb.TagNumber(2)
  alexa_noitce_type get noticeType => $_getN(1);
  @$pb.TagNumber(2)
  set noticeType(alexa_noitce_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNoticeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearNoticeType() => clearField(2);

  @$pb.TagNumber(3)
  alexa_status_type get statusType => $_getN(2);
  @$pb.TagNumber(3)
  set statusType(alexa_status_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatusType() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatusType() => clearField(3);
}

class protocol_alexa_result_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_result_operate({
    operate_type? operate,
    $core.bool? isQuestion,
    $core.List<$core.int>? content,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (isQuestion != null) {
      $result.isQuestion = isQuestion;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  protocol_alexa_result_operate._() : super();
  factory protocol_alexa_result_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_result_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_result_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'isQuestion')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_result_operate clone() => protocol_alexa_result_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_result_operate copyWith(void Function(protocol_alexa_result_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_result_operate)) as protocol_alexa_result_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_result_operate create() => protocol_alexa_result_operate._();
  protocol_alexa_result_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_result_operate> createRepeated() => $pb.PbList<protocol_alexa_result_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_result_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_result_operate>(create);
  static protocol_alexa_result_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isQuestion => $_getBF(1);
  @$pb.TagNumber(2)
  set isQuestion($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsQuestion() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsQuestion() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get content => $_getN(2);
  @$pb.TagNumber(3)
  set content($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
}

/// /闹钟
class alexa_alarm_item extends $pb.GeneratedMessage {
  factory alexa_alarm_item({
    $core.int? year,
    $core.int? month,
    $core.int? day,
    $core.int? hour,
    $core.int? minute,
    $core.bool? switchFlag,
    $core.Iterable<$core.bool>? repeat,
  }) {
    final $result = create();
    if (year != null) {
      $result.year = year;
    }
    if (month != null) {
      $result.month = month;
    }
    if (day != null) {
      $result.day = day;
    }
    if (hour != null) {
      $result.hour = hour;
    }
    if (minute != null) {
      $result.minute = minute;
    }
    if (switchFlag != null) {
      $result.switchFlag = switchFlag;
    }
    if (repeat != null) {
      $result.repeat.addAll(repeat);
    }
    return $result;
  }
  alexa_alarm_item._() : super();
  factory alexa_alarm_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory alexa_alarm_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'alexa_alarm_item', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'minute', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'switchFlag')
    ..p<$core.bool>(7, _omitFieldNames ? '' : 'repeat', $pb.PbFieldType.KB)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  alexa_alarm_item clone() => alexa_alarm_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  alexa_alarm_item copyWith(void Function(alexa_alarm_item) updates) => super.copyWith((message) => updates(message as alexa_alarm_item)) as alexa_alarm_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static alexa_alarm_item create() => alexa_alarm_item._();
  alexa_alarm_item createEmptyInstance() => create();
  static $pb.PbList<alexa_alarm_item> createRepeated() => $pb.PbList<alexa_alarm_item>();
  @$core.pragma('dart2js:noInline')
  static alexa_alarm_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<alexa_alarm_item>(create);
  static alexa_alarm_item? _defaultInstance;

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
}

class protocol_alexa_alarm_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_alarm_operate({
    operate_type? operate,
    $core.Iterable<alexa_alarm_item>? alarmItem,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (alarmItem != null) {
      $result.alarmItem.addAll(alarmItem);
    }
    return $result;
  }
  protocol_alexa_alarm_operate._() : super();
  factory protocol_alexa_alarm_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_alarm_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_alarm_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..pc<alexa_alarm_item>(2, _omitFieldNames ? '' : 'alarmItem', $pb.PbFieldType.PM, subBuilder: alexa_alarm_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_alarm_operate clone() => protocol_alexa_alarm_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_alarm_operate copyWith(void Function(protocol_alexa_alarm_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_alarm_operate)) as protocol_alexa_alarm_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_alarm_operate create() => protocol_alexa_alarm_operate._();
  protocol_alexa_alarm_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_alarm_operate> createRepeated() => $pb.PbList<protocol_alexa_alarm_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_alarm_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_alarm_operate>(create);
  static protocol_alexa_alarm_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<alexa_alarm_item> get alarmItem => $_getList(1);
}

class protocol_alexa_alarm_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_alexa_alarm_inquire_reply({
    operate_type? operate,
    $core.int? funcTable,
    $core.int? alarmSupportMax,
    $core.Iterable<alexa_alarm_item>? alarmItem,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (alarmSupportMax != null) {
      $result.alarmSupportMax = alarmSupportMax;
    }
    if (alarmItem != null) {
      $result.alarmItem.addAll(alarmItem);
    }
    return $result;
  }
  protocol_alexa_alarm_inquire_reply._() : super();
  factory protocol_alexa_alarm_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_alarm_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_alarm_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'alarmSupportMax', $pb.PbFieldType.OU3)
    ..pc<alexa_alarm_item>(4, _omitFieldNames ? '' : 'alarmItem', $pb.PbFieldType.PM, subBuilder: alexa_alarm_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_alarm_inquire_reply clone() => protocol_alexa_alarm_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_alarm_inquire_reply copyWith(void Function(protocol_alexa_alarm_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_alexa_alarm_inquire_reply)) as protocol_alexa_alarm_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_alarm_inquire_reply create() => protocol_alexa_alarm_inquire_reply._();
  protocol_alexa_alarm_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_alarm_inquire_reply> createRepeated() => $pb.PbList<protocol_alexa_alarm_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_alarm_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_alarm_inquire_reply>(create);
  static protocol_alexa_alarm_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get funcTable => $_getIZ(1);
  @$pb.TagNumber(2)
  set funcTable($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFuncTable() => $_has(1);
  @$pb.TagNumber(2)
  void clearFuncTable() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get alarmSupportMax => $_getIZ(2);
  @$pb.TagNumber(3)
  set alarmSupportMax($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlarmSupportMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlarmSupportMax() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<alexa_alarm_item> get alarmItem => $_getList(3);
}

class alexa_reminder_item extends $pb.GeneratedMessage {
  factory alexa_reminder_item({
    $core.int? year,
    $core.int? month,
    $core.int? day,
    $core.int? hour,
    $core.int? minute,
    $core.List<$core.int>? content,
  }) {
    final $result = create();
    if (year != null) {
      $result.year = year;
    }
    if (month != null) {
      $result.month = month;
    }
    if (day != null) {
      $result.day = day;
    }
    if (hour != null) {
      $result.hour = hour;
    }
    if (minute != null) {
      $result.minute = minute;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  alexa_reminder_item._() : super();
  factory alexa_reminder_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory alexa_reminder_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'alexa_reminder_item', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'minute', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  alexa_reminder_item clone() => alexa_reminder_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  alexa_reminder_item copyWith(void Function(alexa_reminder_item) updates) => super.copyWith((message) => updates(message as alexa_reminder_item)) as alexa_reminder_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static alexa_reminder_item create() => alexa_reminder_item._();
  alexa_reminder_item createEmptyInstance() => create();
  static $pb.PbList<alexa_reminder_item> createRepeated() => $pb.PbList<alexa_reminder_item>();
  @$core.pragma('dart2js:noInline')
  static alexa_reminder_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<alexa_reminder_item>(create);
  static alexa_reminder_item? _defaultInstance;

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
  $core.List<$core.int> get content => $_getN(5);
  @$pb.TagNumber(6)
  set content($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);
}

class protocol_alexa_reminder_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_reminder_operate({
    operate_type? operate,
    $core.Iterable<alexa_reminder_item>? reminderItem,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (reminderItem != null) {
      $result.reminderItem.addAll(reminderItem);
    }
    return $result;
  }
  protocol_alexa_reminder_operate._() : super();
  factory protocol_alexa_reminder_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_reminder_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_reminder_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..pc<alexa_reminder_item>(2, _omitFieldNames ? '' : 'reminderItem', $pb.PbFieldType.PM, subBuilder: alexa_reminder_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_reminder_operate clone() => protocol_alexa_reminder_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_reminder_operate copyWith(void Function(protocol_alexa_reminder_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_reminder_operate)) as protocol_alexa_reminder_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_reminder_operate create() => protocol_alexa_reminder_operate._();
  protocol_alexa_reminder_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_reminder_operate> createRepeated() => $pb.PbList<protocol_alexa_reminder_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_reminder_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_reminder_operate>(create);
  static protocol_alexa_reminder_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<alexa_reminder_item> get reminderItem => $_getList(1);
}

class protocol_alexa_reminder_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_alexa_reminder_inquire_reply({
    operate_type? operate,
    $core.int? funcTable,
    $core.int? reminderSupportMax,
    $core.Iterable<alexa_reminder_item>? reminderItem,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (reminderSupportMax != null) {
      $result.reminderSupportMax = reminderSupportMax;
    }
    if (reminderItem != null) {
      $result.reminderItem.addAll(reminderItem);
    }
    return $result;
  }
  protocol_alexa_reminder_inquire_reply._() : super();
  factory protocol_alexa_reminder_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_reminder_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_reminder_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'reminderSupportMax', $pb.PbFieldType.OU3)
    ..pc<alexa_reminder_item>(4, _omitFieldNames ? '' : 'reminderItem', $pb.PbFieldType.PM, subBuilder: alexa_reminder_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_reminder_inquire_reply clone() => protocol_alexa_reminder_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_reminder_inquire_reply copyWith(void Function(protocol_alexa_reminder_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_alexa_reminder_inquire_reply)) as protocol_alexa_reminder_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_reminder_inquire_reply create() => protocol_alexa_reminder_inquire_reply._();
  protocol_alexa_reminder_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_reminder_inquire_reply> createRepeated() => $pb.PbList<protocol_alexa_reminder_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_reminder_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_reminder_inquire_reply>(create);
  static protocol_alexa_reminder_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get funcTable => $_getIZ(1);
  @$pb.TagNumber(2)
  set funcTable($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFuncTable() => $_has(1);
  @$pb.TagNumber(2)
  void clearFuncTable() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get reminderSupportMax => $_getIZ(2);
  @$pb.TagNumber(3)
  set reminderSupportMax($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReminderSupportMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearReminderSupportMax() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<alexa_reminder_item> get reminderItem => $_getList(3);
}

class alexa_timer_item extends $pb.GeneratedMessage {
  factory alexa_timer_item({
    $core.int? index,
    $core.int? timerSec,
  }) {
    final $result = create();
    if (index != null) {
      $result.index = index;
    }
    if (timerSec != null) {
      $result.timerSec = timerSec;
    }
    return $result;
  }
  alexa_timer_item._() : super();
  factory alexa_timer_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory alexa_timer_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'alexa_timer_item', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'timerSec', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  alexa_timer_item clone() => alexa_timer_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  alexa_timer_item copyWith(void Function(alexa_timer_item) updates) => super.copyWith((message) => updates(message as alexa_timer_item)) as alexa_timer_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static alexa_timer_item create() => alexa_timer_item._();
  alexa_timer_item createEmptyInstance() => create();
  static $pb.PbList<alexa_timer_item> createRepeated() => $pb.PbList<alexa_timer_item>();
  @$core.pragma('dart2js:noInline')
  static alexa_timer_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<alexa_timer_item>(create);
  static alexa_timer_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get timerSec => $_getIZ(1);
  @$pb.TagNumber(2)
  set timerSec($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimerSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimerSec() => clearField(2);
}

class protocol_alexa_timer_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_timer_operate({
    operate_type? operate,
    alexa_timer_operate? timerOperate,
    $core.int? index,
    $core.int? timerSec,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (timerOperate != null) {
      $result.timerOperate = timerOperate;
    }
    if (index != null) {
      $result.index = index;
    }
    if (timerSec != null) {
      $result.timerSec = timerSec;
    }
    return $result;
  }
  protocol_alexa_timer_operate._() : super();
  factory protocol_alexa_timer_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_timer_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_timer_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<alexa_timer_operate>(2, _omitFieldNames ? '' : 'timerOperate', $pb.PbFieldType.OE, defaultOrMaker: alexa_timer_operate.TIMER_INSERT, valueOf: alexa_timer_operate.valueOf, enumValues: alexa_timer_operate.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'timerSec', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_timer_operate clone() => protocol_alexa_timer_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_timer_operate copyWith(void Function(protocol_alexa_timer_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_timer_operate)) as protocol_alexa_timer_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_timer_operate create() => protocol_alexa_timer_operate._();
  protocol_alexa_timer_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_timer_operate> createRepeated() => $pb.PbList<protocol_alexa_timer_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_timer_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_timer_operate>(create);
  static protocol_alexa_timer_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  alexa_timer_operate get timerOperate => $_getN(1);
  @$pb.TagNumber(2)
  set timerOperate(alexa_timer_operate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimerOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimerOperate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get index => $_getIZ(2);
  @$pb.TagNumber(3)
  set index($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get timerSec => $_getIZ(3);
  @$pb.TagNumber(4)
  set timerSec($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimerSec() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimerSec() => clearField(4);
}

class protocol_alexa_timer_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_alexa_timer_inquire_reply({
    operate_type? operate,
    $core.int? funcTable,
    $core.int? timerSupportMax,
    $core.Iterable<alexa_timer_item>? items,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (timerSupportMax != null) {
      $result.timerSupportMax = timerSupportMax;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  protocol_alexa_timer_inquire_reply._() : super();
  factory protocol_alexa_timer_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_timer_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_timer_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'timerSupportMax', $pb.PbFieldType.OU3)
    ..pc<alexa_timer_item>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: alexa_timer_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_timer_inquire_reply clone() => protocol_alexa_timer_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_timer_inquire_reply copyWith(void Function(protocol_alexa_timer_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_alexa_timer_inquire_reply)) as protocol_alexa_timer_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_timer_inquire_reply create() => protocol_alexa_timer_inquire_reply._();
  protocol_alexa_timer_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_timer_inquire_reply> createRepeated() => $pb.PbList<protocol_alexa_timer_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_timer_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_timer_inquire_reply>(create);
  static protocol_alexa_timer_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get funcTable => $_getIZ(1);
  @$pb.TagNumber(2)
  set funcTable($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFuncTable() => $_has(1);
  @$pb.TagNumber(2)
  void clearFuncTable() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get timerSupportMax => $_getIZ(2);
  @$pb.TagNumber(3)
  set timerSupportMax($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimerSupportMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimerSupportMax() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<alexa_timer_item> get items => $_getList(3);
}

class alexa_weather_future_item extends $pb.GeneratedMessage {
  factory alexa_weather_future_item({
    $core.List<$core.int>? weatherType,
    $core.int? maxTemp,
    $core.int? minTemp,
  }) {
    final $result = create();
    if (weatherType != null) {
      $result.weatherType = weatherType;
    }
    if (maxTemp != null) {
      $result.maxTemp = maxTemp;
    }
    if (minTemp != null) {
      $result.minTemp = minTemp;
    }
    return $result;
  }
  alexa_weather_future_item._() : super();
  factory alexa_weather_future_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory alexa_weather_future_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'alexa_weather_future_item', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'weatherType', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'maxTemp', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'minTemp', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  alexa_weather_future_item clone() => alexa_weather_future_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  alexa_weather_future_item copyWith(void Function(alexa_weather_future_item) updates) => super.copyWith((message) => updates(message as alexa_weather_future_item)) as alexa_weather_future_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static alexa_weather_future_item create() => alexa_weather_future_item._();
  alexa_weather_future_item createEmptyInstance() => create();
  static $pb.PbList<alexa_weather_future_item> createRepeated() => $pb.PbList<alexa_weather_future_item>();
  @$core.pragma('dart2js:noInline')
  static alexa_weather_future_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<alexa_weather_future_item>(create);
  static alexa_weather_future_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get weatherType => $_getN(0);
  @$pb.TagNumber(1)
  set weatherType($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWeatherType() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeatherType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxTemp => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxTemp($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxTemp() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxTemp() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minTemp => $_getIZ(2);
  @$pb.TagNumber(3)
  set minTemp($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinTemp() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinTemp() => clearField(3);
}

class alexa_weather_detail_data_item extends $pb.GeneratedMessage {
  factory alexa_weather_detail_data_item({
    $core.int? year,
    $core.int? month,
    $core.int? day,
    $core.int? hour,
    $core.int? min,
    $core.int? week,
    $core.List<$core.int>? weatherType,
    $core.int? curTemp,
    $core.int? curMaxTemp,
    $core.int? curMinTemp,
    $core.List<$core.int>? cityName,
    $core.Iterable<alexa_weather_future_item>? futureItems,
    $core.int? tempUnit,
  }) {
    final $result = create();
    if (year != null) {
      $result.year = year;
    }
    if (month != null) {
      $result.month = month;
    }
    if (day != null) {
      $result.day = day;
    }
    if (hour != null) {
      $result.hour = hour;
    }
    if (min != null) {
      $result.min = min;
    }
    if (week != null) {
      $result.week = week;
    }
    if (weatherType != null) {
      $result.weatherType = weatherType;
    }
    if (curTemp != null) {
      $result.curTemp = curTemp;
    }
    if (curMaxTemp != null) {
      $result.curMaxTemp = curMaxTemp;
    }
    if (curMinTemp != null) {
      $result.curMinTemp = curMinTemp;
    }
    if (cityName != null) {
      $result.cityName = cityName;
    }
    if (futureItems != null) {
      $result.futureItems.addAll(futureItems);
    }
    if (tempUnit != null) {
      $result.tempUnit = tempUnit;
    }
    return $result;
  }
  alexa_weather_detail_data_item._() : super();
  factory alexa_weather_detail_data_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory alexa_weather_detail_data_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'alexa_weather_detail_data_item', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'min', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'week', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'weatherType', $pb.PbFieldType.OY)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'curTemp', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'curMaxTemp', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'curMinTemp', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(11, _omitFieldNames ? '' : 'cityName', $pb.PbFieldType.OY)
    ..pc<alexa_weather_future_item>(12, _omitFieldNames ? '' : 'futureItems', $pb.PbFieldType.PM, subBuilder: alexa_weather_future_item.create)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'tempUnit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  alexa_weather_detail_data_item clone() => alexa_weather_detail_data_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  alexa_weather_detail_data_item copyWith(void Function(alexa_weather_detail_data_item) updates) => super.copyWith((message) => updates(message as alexa_weather_detail_data_item)) as alexa_weather_detail_data_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static alexa_weather_detail_data_item create() => alexa_weather_detail_data_item._();
  alexa_weather_detail_data_item createEmptyInstance() => create();
  static $pb.PbList<alexa_weather_detail_data_item> createRepeated() => $pb.PbList<alexa_weather_detail_data_item>();
  @$core.pragma('dart2js:noInline')
  static alexa_weather_detail_data_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<alexa_weather_detail_data_item>(create);
  static alexa_weather_detail_data_item? _defaultInstance;

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
  $core.int get hour => $_getIZ(3);
  @$pb.TagNumber(4)
  set hour($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearHour() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get min => $_getIZ(4);
  @$pb.TagNumber(5)
  set min($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMin() => $_has(4);
  @$pb.TagNumber(5)
  void clearMin() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get week => $_getIZ(5);
  @$pb.TagNumber(6)
  set week($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWeek() => $_has(5);
  @$pb.TagNumber(6)
  void clearWeek() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get weatherType => $_getN(6);
  @$pb.TagNumber(7)
  set weatherType($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWeatherType() => $_has(6);
  @$pb.TagNumber(7)
  void clearWeatherType() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get curTemp => $_getIZ(7);
  @$pb.TagNumber(8)
  set curTemp($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCurTemp() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurTemp() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get curMaxTemp => $_getIZ(8);
  @$pb.TagNumber(9)
  set curMaxTemp($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCurMaxTemp() => $_has(8);
  @$pb.TagNumber(9)
  void clearCurMaxTemp() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get curMinTemp => $_getIZ(9);
  @$pb.TagNumber(10)
  set curMinTemp($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCurMinTemp() => $_has(9);
  @$pb.TagNumber(10)
  void clearCurMinTemp() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get cityName => $_getN(10);
  @$pb.TagNumber(11)
  set cityName($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCityName() => $_has(10);
  @$pb.TagNumber(11)
  void clearCityName() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<alexa_weather_future_item> get futureItems => $_getList(11);

  @$pb.TagNumber(13)
  $core.int get tempUnit => $_getIZ(12);
  @$pb.TagNumber(13)
  set tempUnit($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTempUnit() => $_has(12);
  @$pb.TagNumber(13)
  void clearTempUnit() => clearField(13);
}

class protocol_alexa_weather_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_weather_operate({
    operate_type? operate,
    alexa_weather_detail_data_item? detailDataItem,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (detailDataItem != null) {
      $result.detailDataItem = detailDataItem;
    }
    return $result;
  }
  protocol_alexa_weather_operate._() : super();
  factory protocol_alexa_weather_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_weather_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_weather_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<alexa_weather_detail_data_item>(2, _omitFieldNames ? '' : 'detailDataItem', subBuilder: alexa_weather_detail_data_item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_weather_operate clone() => protocol_alexa_weather_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_weather_operate copyWith(void Function(protocol_alexa_weather_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_weather_operate)) as protocol_alexa_weather_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_weather_operate create() => protocol_alexa_weather_operate._();
  protocol_alexa_weather_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_weather_operate> createRepeated() => $pb.PbList<protocol_alexa_weather_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_weather_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_weather_operate>(create);
  static protocol_alexa_weather_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  alexa_weather_detail_data_item get detailDataItem => $_getN(1);
  @$pb.TagNumber(2)
  set detailDataItem(alexa_weather_detail_data_item v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetailDataItem() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetailDataItem() => clearField(2);
  @$pb.TagNumber(2)
  alexa_weather_detail_data_item ensureDetailDataItem() => $_ensure(1);
}

class protocol_alexa_weather_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_alexa_weather_inquire_reply({
    operate_type? operate,
    $core.int? funcTable,
    $core.int? weatherSupportMax,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (weatherSupportMax != null) {
      $result.weatherSupportMax = weatherSupportMax;
    }
    return $result;
  }
  protocol_alexa_weather_inquire_reply._() : super();
  factory protocol_alexa_weather_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_weather_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_weather_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'weatherSupportMax', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_weather_inquire_reply clone() => protocol_alexa_weather_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_weather_inquire_reply copyWith(void Function(protocol_alexa_weather_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_alexa_weather_inquire_reply)) as protocol_alexa_weather_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_weather_inquire_reply create() => protocol_alexa_weather_inquire_reply._();
  protocol_alexa_weather_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_weather_inquire_reply> createRepeated() => $pb.PbList<protocol_alexa_weather_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_weather_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_weather_inquire_reply>(create);
  static protocol_alexa_weather_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get funcTable => $_getIZ(1);
  @$pb.TagNumber(2)
  set funcTable($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFuncTable() => $_has(1);
  @$pb.TagNumber(2)
  void clearFuncTable() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get weatherSupportMax => $_getIZ(2);
  @$pb.TagNumber(3)
  set weatherSupportMax($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeatherSupportMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeatherSupportMax() => clearField(3);
}

/// /通知
class protocol_alexa_notify_status_operate extends $pb.GeneratedMessage {
  factory protocol_alexa_notify_status_operate({
    operate_type? operate,
    $core.bool? notifyStatus,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (notifyStatus != null) {
      $result.notifyStatus = notifyStatus;
    }
    return $result;
  }
  protocol_alexa_notify_status_operate._() : super();
  factory protocol_alexa_notify_status_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_notify_status_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_notify_status_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'notifyStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_notify_status_operate clone() => protocol_alexa_notify_status_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_notify_status_operate copyWith(void Function(protocol_alexa_notify_status_operate) updates) => super.copyWith((message) => updates(message as protocol_alexa_notify_status_operate)) as protocol_alexa_notify_status_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_notify_status_operate create() => protocol_alexa_notify_status_operate._();
  protocol_alexa_notify_status_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_notify_status_operate> createRepeated() => $pb.PbList<protocol_alexa_notify_status_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_notify_status_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_notify_status_operate>(create);
  static protocol_alexa_notify_status_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get notifyStatus => $_getBF(1);
  @$pb.TagNumber(2)
  set notifyStatus($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifyStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifyStatus() => clearField(2);
}

class protocol_alexa_notify_status_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_alexa_notify_status_inquire_reply({
    operate_type? operate,
    $core.bool? notifyStatus,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (notifyStatus != null) {
      $result.notifyStatus = notifyStatus;
    }
    return $result;
  }
  protocol_alexa_notify_status_inquire_reply._() : super();
  factory protocol_alexa_notify_status_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_alexa_notify_status_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_alexa_notify_status_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'notifyStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_alexa_notify_status_inquire_reply clone() => protocol_alexa_notify_status_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_alexa_notify_status_inquire_reply copyWith(void Function(protocol_alexa_notify_status_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_alexa_notify_status_inquire_reply)) as protocol_alexa_notify_status_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_alexa_notify_status_inquire_reply create() => protocol_alexa_notify_status_inquire_reply._();
  protocol_alexa_notify_status_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_alexa_notify_status_inquire_reply> createRepeated() => $pb.PbList<protocol_alexa_notify_status_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_alexa_notify_status_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_alexa_notify_status_inquire_reply>(create);
  static protocol_alexa_notify_status_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get notifyStatus => $_getBF(1);
  @$pb.TagNumber(2)
  set notifyStatus($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifyStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifyStatus() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
