//
//  Generated code. Do not modify.
//  source: focus.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'focus.pbenum.dart';

export 'focus.pbenum.dart';

class protocol_focus_sleep_mode extends $pb.GeneratedMessage {
  factory protocol_focus_sleep_mode({
    $core.bool? switchFlag,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
  }) {
    final $result = create();
    if (switchFlag != null) {
      $result.switchFlag = switchFlag;
    }
    if (startHour != null) {
      $result.startHour = startHour;
    }
    if (startMinute != null) {
      $result.startMinute = startMinute;
    }
    if (endHour != null) {
      $result.endHour = endHour;
    }
    if (endMinute != null) {
      $result.endMinute = endMinute;
    }
    return $result;
  }
  protocol_focus_sleep_mode._() : super();
  factory protocol_focus_sleep_mode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_focus_sleep_mode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_focus_sleep_mode', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchFlag')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_focus_sleep_mode clone() => protocol_focus_sleep_mode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_focus_sleep_mode copyWith(void Function(protocol_focus_sleep_mode) updates) => super.copyWith((message) => updates(message as protocol_focus_sleep_mode)) as protocol_focus_sleep_mode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_focus_sleep_mode create() => protocol_focus_sleep_mode._();
  protocol_focus_sleep_mode createEmptyInstance() => create();
  static $pb.PbList<protocol_focus_sleep_mode> createRepeated() => $pb.PbList<protocol_focus_sleep_mode>();
  @$core.pragma('dart2js:noInline')
  static protocol_focus_sleep_mode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_focus_sleep_mode>(create);
  static protocol_focus_sleep_mode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchFlag => $_getBF(0);
  @$pb.TagNumber(1)
  set switchFlag($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchFlag() => clearField(1);

  /// 开始时间
  @$pb.TagNumber(2)
  $core.int get startHour => $_getIZ(1);
  @$pb.TagNumber(2)
  set startHour($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartHour() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartHour() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get startMinute => $_getIZ(2);
  @$pb.TagNumber(3)
  set startMinute($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartMinute() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartMinute() => clearField(3);

  /// 结束时间
  @$pb.TagNumber(4)
  $core.int get endHour => $_getIZ(3);
  @$pb.TagNumber(4)
  set endHour($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndHour() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get endMinute => $_getIZ(4);
  @$pb.TagNumber(5)
  set endMinute($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndMinute() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndMinute() => clearField(5);
}

class protocol_focus_mode_operate extends $pb.GeneratedMessage {
  factory protocol_focus_mode_operate({
    operate_type? operate,
    protocol_focus_sleep_mode? sleepMode,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (sleepMode != null) {
      $result.sleepMode = sleepMode;
    }
    return $result;
  }
  protocol_focus_mode_operate._() : super();
  factory protocol_focus_mode_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_focus_mode_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_focus_mode_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_focus_sleep_mode>(2, _omitFieldNames ? '' : 'sleepMode', subBuilder: protocol_focus_sleep_mode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_focus_mode_operate clone() => protocol_focus_mode_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_focus_mode_operate copyWith(void Function(protocol_focus_mode_operate) updates) => super.copyWith((message) => updates(message as protocol_focus_mode_operate)) as protocol_focus_mode_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_focus_mode_operate create() => protocol_focus_mode_operate._();
  protocol_focus_mode_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_focus_mode_operate> createRepeated() => $pb.PbList<protocol_focus_mode_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_focus_mode_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_focus_mode_operate>(create);
  static protocol_focus_mode_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  protocol_focus_sleep_mode get sleepMode => $_getN(1);
  @$pb.TagNumber(2)
  set sleepMode(protocol_focus_sleep_mode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSleepMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearSleepMode() => clearField(2);
  @$pb.TagNumber(2)
  protocol_focus_sleep_mode ensureSleepMode() => $_ensure(1);
}

class protocol_focus_mode_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_focus_mode_inquire_reply({
    operate_type? operate,
    $core.int? funcTable,
    protocol_focus_sleep_mode? sleepMode,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (sleepMode != null) {
      $result.sleepMode = sleepMode;
    }
    return $result;
  }
  protocol_focus_mode_inquire_reply._() : super();
  factory protocol_focus_mode_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_focus_mode_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_focus_mode_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..aOM<protocol_focus_sleep_mode>(3, _omitFieldNames ? '' : 'sleepMode', subBuilder: protocol_focus_sleep_mode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_focus_mode_inquire_reply clone() => protocol_focus_mode_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_focus_mode_inquire_reply copyWith(void Function(protocol_focus_mode_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_focus_mode_inquire_reply)) as protocol_focus_mode_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_focus_mode_inquire_reply create() => protocol_focus_mode_inquire_reply._();
  protocol_focus_mode_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_focus_mode_inquire_reply> createRepeated() => $pb.PbList<protocol_focus_mode_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_focus_mode_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_focus_mode_inquire_reply>(create);
  static protocol_focus_mode_inquire_reply? _defaultInstance;

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
  protocol_focus_sleep_mode get sleepMode => $_getN(2);
  @$pb.TagNumber(3)
  set sleepMode(protocol_focus_sleep_mode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSleepMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearSleepMode() => clearField(3);
  @$pb.TagNumber(3)
  protocol_focus_sleep_mode ensureSleepMode() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
