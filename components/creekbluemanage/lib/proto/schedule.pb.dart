///
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/alarm.pb.dart';
import 'package:creek_blue_manage/proto/message.pb.dart';
import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'schedule.pbenum.dart';

export 'schedule.pbenum.dart';

class protocol_schedule_item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_schedule_item', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleId', $pb.PbFieldType.OU3)
    ..e<disp_status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: disp_status.DISP_OFF, valueOf: disp_status.valueOf, enumValues: disp_status.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mon', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minute', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sec', $pb.PbFieldType.OU3)
    ..p<$core.bool>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeat', $pb.PbFieldType.KB)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'titleLen', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentLen', $pb.PbFieldType.OU3)
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  protocol_schedule_item._() : super();
  factory protocol_schedule_item({
    $core.int? scheduleId,
    disp_status? status,
    $core.int? year,
    $core.int? mon,
    $core.int? day,
    $core.int? hour,
    $core.int? minute,
    $core.int? sec,
    $core.Iterable<$core.bool>? repeat,
    $core.int? titleLen,
    $core.int? contentLen,
    $core.String? title,
    $core.String? content,
  }) {
    final _result = create();
    if (scheduleId != null) {
      _result.scheduleId = scheduleId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (year != null) {
      _result.year = year;
    }
    if (mon != null) {
      _result.mon = mon;
    }
    if (day != null) {
      _result.day = day;
    }
    if (hour != null) {
      _result.hour = hour;
    }
    if (minute != null) {
      _result.minute = minute;
    }
    if (sec != null) {
      _result.sec = sec;
    }
    if (repeat != null) {
      _result.repeat.addAll(repeat);
    }
    if (titleLen != null) {
      _result.titleLen = titleLen;
    }
    if (contentLen != null) {
      _result.contentLen = contentLen;
    }
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory protocol_schedule_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_schedule_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_schedule_item clone() => protocol_schedule_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_schedule_item copyWith(void Function(protocol_schedule_item) updates) => super.copyWith((message) => updates(message as protocol_schedule_item)) as protocol_schedule_item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_schedule_item create() => protocol_schedule_item._();
  protocol_schedule_item createEmptyInstance() => create();
  static $pb.PbList<protocol_schedule_item> createRepeated() => $pb.PbList<protocol_schedule_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_schedule_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_schedule_item>(create);
  static protocol_schedule_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get scheduleId => $_getIZ(0);
  @$pb.TagNumber(1)
  set scheduleId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleId() => clearField(1);

  @$pb.TagNumber(2)
  disp_status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(disp_status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get year => $_getIZ(2);
  @$pb.TagNumber(3)
  set year($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYear() => $_has(2);
  @$pb.TagNumber(3)
  void clearYear() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get mon => $_getIZ(3);
  @$pb.TagNumber(4)
  set mon($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMon() => $_has(3);
  @$pb.TagNumber(4)
  void clearMon() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get day => $_getIZ(4);
  @$pb.TagNumber(5)
  set day($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDay() => $_has(4);
  @$pb.TagNumber(5)
  void clearDay() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get hour => $_getIZ(5);
  @$pb.TagNumber(6)
  set hour($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHour() => $_has(5);
  @$pb.TagNumber(6)
  void clearHour() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get minute => $_getIZ(6);
  @$pb.TagNumber(7)
  set minute($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMinute() => $_has(6);
  @$pb.TagNumber(7)
  void clearMinute() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get sec => $_getIZ(7);
  @$pb.TagNumber(8)
  set sec($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSec() => $_has(7);
  @$pb.TagNumber(8)
  void clearSec() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.bool> get repeat => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get titleLen => $_getIZ(9);
  @$pb.TagNumber(10)
  set titleLen($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTitleLen() => $_has(9);
  @$pb.TagNumber(10)
  void clearTitleLen() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get contentLen => $_getIZ(10);
  @$pb.TagNumber(11)
  set contentLen($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasContentLen() => $_has(10);
  @$pb.TagNumber(11)
  void clearContentLen() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get title => $_getSZ(11);
  @$pb.TagNumber(12)
  set title($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTitle() => $_has(11);
  @$pb.TagNumber(12)
  void clearTitle() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get content => $_getSZ(12);
  @$pb.TagNumber(13)
  set content($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasContent() => $_has(12);
  @$pb.TagNumber(13)
  void clearContent() => clearField(13);
}

class protocol_schedule_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_schedule_operate', createEmptyInstance: create)
    ..e<operate_II_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_II_type.INSERT, valueOf: operate_II_type.valueOf, enumValues: operate_II_type.values)
    ..e<notify_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemNum', $pb.PbFieldType.OU3)
    ..aOM<protocol_schedule_item>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleItem', subBuilder: protocol_schedule_item.create)
    ..hasRequiredFields = false
  ;

  protocol_schedule_operate._() : super();
  factory protocol_schedule_operate({
    operate_II_type? operate,
    notify_type? notifyFlag,
    $core.int? itemNum,
    protocol_schedule_item? scheduleItem,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (notifyFlag != null) {
      _result.notifyFlag = notifyFlag;
    }
    if (itemNum != null) {
      _result.itemNum = itemNum;
    }
    if (scheduleItem != null) {
      _result.scheduleItem = scheduleItem;
    }
    return _result;
  }
  factory protocol_schedule_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_schedule_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_schedule_operate clone() => protocol_schedule_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_schedule_operate copyWith(void Function(protocol_schedule_operate) updates) => super.copyWith((message) => updates(message as protocol_schedule_operate)) as protocol_schedule_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_schedule_operate create() => protocol_schedule_operate._();
  protocol_schedule_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_schedule_operate> createRepeated() => $pb.PbList<protocol_schedule_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_schedule_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_schedule_operate>(create);
  static protocol_schedule_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_II_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_II_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  notify_type get notifyFlag => $_getN(1);
  @$pb.TagNumber(2)
  set notifyFlag(notify_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifyFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifyFlag() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemNum($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemNum() => clearField(3);

  @$pb.TagNumber(4)
  protocol_schedule_item get scheduleItem => $_getN(3);
  @$pb.TagNumber(4)
  set scheduleItem(protocol_schedule_item v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScheduleItem() => $_has(3);
  @$pb.TagNumber(4)
  void clearScheduleItem() => clearField(4);
  @$pb.TagNumber(4)
  protocol_schedule_item ensureScheduleItem() => $_ensure(3);
}

class protocol_schedule_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_schedule_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_II_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_II_type.INSERT, valueOf: operate_II_type.valueOf, enumValues: operate_II_type.values)
    ..e<notify_type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemNum', $pb.PbFieldType.OU3)
    ..aOM<protocol_schedule_item>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleItem', subBuilder: protocol_schedule_item.create)
    ..hasRequiredFields = false
  ;

  protocol_schedule_inquire_reply._() : super();
  factory protocol_schedule_inquire_reply({
    $core.int? funcTable,
    operate_II_type? operate,
    notify_type? notifyFlag,
    $core.int? itemNum,
    protocol_schedule_item? scheduleItem,
  }) {
    final _result = create();
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (operate != null) {
      _result.operate = operate;
    }
    if (notifyFlag != null) {
      _result.notifyFlag = notifyFlag;
    }
    if (itemNum != null) {
      _result.itemNum = itemNum;
    }
    if (scheduleItem != null) {
      _result.scheduleItem = scheduleItem;
    }
    return _result;
  }
  factory protocol_schedule_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_schedule_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_schedule_inquire_reply clone() => protocol_schedule_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_schedule_inquire_reply copyWith(void Function(protocol_schedule_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_schedule_inquire_reply)) as protocol_schedule_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_schedule_inquire_reply create() => protocol_schedule_inquire_reply._();
  protocol_schedule_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_schedule_inquire_reply> createRepeated() => $pb.PbList<protocol_schedule_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_schedule_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_schedule_inquire_reply>(create);
  static protocol_schedule_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get funcTable => $_getIZ(0);
  @$pb.TagNumber(1)
  set funcTable($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncTable() => clearField(1);

  @$pb.TagNumber(2)
  operate_II_type get operate => $_getN(1);
  @$pb.TagNumber(2)
  set operate(operate_II_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperate() => clearField(2);

  @$pb.TagNumber(3)
  notify_type get notifyFlag => $_getN(2);
  @$pb.TagNumber(3)
  set notifyFlag(notify_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotifyFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotifyFlag() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get itemNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set itemNum($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItemNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemNum() => clearField(4);

  @$pb.TagNumber(5)
  protocol_schedule_item get scheduleItem => $_getN(4);
  @$pb.TagNumber(5)
  set scheduleItem(protocol_schedule_item v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasScheduleItem() => $_has(4);
  @$pb.TagNumber(5)
  void clearScheduleItem() => clearField(5);
  @$pb.TagNumber(5)
  protocol_schedule_item ensureScheduleItem() => $_ensure(4);
}

