//
//  Generated code. Do not modify.
//  source: screen.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'screen.pbenum.dart';

export 'screen.pbenum.dart';

class protocol_screen_night_auto_adjust extends $pb.GeneratedMessage {
  factory protocol_screen_night_auto_adjust({
    $core.bool? switchFlag,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
    $core.int? nightLevel,
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
    if (nightLevel != null) {
      $result.nightLevel = nightLevel;
    }
    return $result;
  }
  protocol_screen_night_auto_adjust._() : super();
  factory protocol_screen_night_auto_adjust.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_screen_night_auto_adjust.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_screen_night_auto_adjust', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'switchFlag')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'nightLevel', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_screen_night_auto_adjust clone() => protocol_screen_night_auto_adjust()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_screen_night_auto_adjust copyWith(void Function(protocol_screen_night_auto_adjust) updates) => super.copyWith((message) => updates(message as protocol_screen_night_auto_adjust)) as protocol_screen_night_auto_adjust;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_screen_night_auto_adjust create() => protocol_screen_night_auto_adjust._();
  protocol_screen_night_auto_adjust createEmptyInstance() => create();
  static $pb.PbList<protocol_screen_night_auto_adjust> createRepeated() => $pb.PbList<protocol_screen_night_auto_adjust>();
  @$core.pragma('dart2js:noInline')
  static protocol_screen_night_auto_adjust getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_screen_night_auto_adjust>(create);
  static protocol_screen_night_auto_adjust? _defaultInstance;

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

  @$pb.TagNumber(6)
  $core.int get nightLevel => $_getIZ(5);
  @$pb.TagNumber(6)
  set nightLevel($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNightLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearNightLevel() => clearField(6);
}

class protocol_screen_aod_time_setting extends $pb.GeneratedMessage {
  factory protocol_screen_aod_time_setting({
    aod_mode? mode,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
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
  protocol_screen_aod_time_setting._() : super();
  factory protocol_screen_aod_time_setting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_screen_aod_time_setting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_screen_aod_time_setting', createEmptyInstance: create)
    ..e<aod_mode>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: aod_mode.INTELLIGENT_MODE, valueOf: aod_mode.valueOf, enumValues: aod_mode.values)
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
  protocol_screen_aod_time_setting clone() => protocol_screen_aod_time_setting()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_screen_aod_time_setting copyWith(void Function(protocol_screen_aod_time_setting) updates) => super.copyWith((message) => updates(message as protocol_screen_aod_time_setting)) as protocol_screen_aod_time_setting;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_screen_aod_time_setting create() => protocol_screen_aod_time_setting._();
  protocol_screen_aod_time_setting createEmptyInstance() => create();
  static $pb.PbList<protocol_screen_aod_time_setting> createRepeated() => $pb.PbList<protocol_screen_aod_time_setting>();
  @$core.pragma('dart2js:noInline')
  static protocol_screen_aod_time_setting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_screen_aod_time_setting>(create);
  static protocol_screen_aod_time_setting? _defaultInstance;

  @$pb.TagNumber(1)
  aod_mode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(aod_mode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);

  /// 开始时间 定时模式
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

class protocol_screen_brightness_operate extends $pb.GeneratedMessage {
  factory protocol_screen_brightness_operate({
    operate_type? operate,
    $core.int? level,
    $core.int? showInterval,
    protocol_screen_night_auto_adjust? nightAutoAdjust,
    $core.bool? aodSwitchFlag,
    $core.bool? raiseWristSwitchFlag,
    protocol_screen_aod_time_setting? aodTimeSetting,
    $core.bool? levelFlag,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (level != null) {
      $result.level = level;
    }
    if (showInterval != null) {
      $result.showInterval = showInterval;
    }
    if (nightAutoAdjust != null) {
      $result.nightAutoAdjust = nightAutoAdjust;
    }
    if (aodSwitchFlag != null) {
      $result.aodSwitchFlag = aodSwitchFlag;
    }
    if (raiseWristSwitchFlag != null) {
      $result.raiseWristSwitchFlag = raiseWristSwitchFlag;
    }
    if (aodTimeSetting != null) {
      $result.aodTimeSetting = aodTimeSetting;
    }
    if (levelFlag != null) {
      $result.levelFlag = levelFlag;
    }
    return $result;
  }
  protocol_screen_brightness_operate._() : super();
  factory protocol_screen_brightness_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_screen_brightness_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_screen_brightness_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'level', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'showInterval', $pb.PbFieldType.OU3)
    ..aOM<protocol_screen_night_auto_adjust>(4, _omitFieldNames ? '' : 'nightAutoAdjust', subBuilder: protocol_screen_night_auto_adjust.create)
    ..aOB(5, _omitFieldNames ? '' : 'aodSwitchFlag')
    ..aOB(6, _omitFieldNames ? '' : 'raiseWristSwitchFlag')
    ..aOM<protocol_screen_aod_time_setting>(7, _omitFieldNames ? '' : 'aodTimeSetting', subBuilder: protocol_screen_aod_time_setting.create)
    ..aOB(8, _omitFieldNames ? '' : 'levelFlag')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_screen_brightness_operate clone() => protocol_screen_brightness_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_screen_brightness_operate copyWith(void Function(protocol_screen_brightness_operate) updates) => super.copyWith((message) => updates(message as protocol_screen_brightness_operate)) as protocol_screen_brightness_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_screen_brightness_operate create() => protocol_screen_brightness_operate._();
  protocol_screen_brightness_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_screen_brightness_operate> createRepeated() => $pb.PbList<protocol_screen_brightness_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_screen_brightness_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_screen_brightness_operate>(create);
  static protocol_screen_brightness_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get level => $_getIZ(1);
  @$pb.TagNumber(2)
  set level($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get showInterval => $_getIZ(2);
  @$pb.TagNumber(3)
  set showInterval($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShowInterval() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowInterval() => clearField(3);

  @$pb.TagNumber(4)
  protocol_screen_night_auto_adjust get nightAutoAdjust => $_getN(3);
  @$pb.TagNumber(4)
  set nightAutoAdjust(protocol_screen_night_auto_adjust v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNightAutoAdjust() => $_has(3);
  @$pb.TagNumber(4)
  void clearNightAutoAdjust() => clearField(4);
  @$pb.TagNumber(4)
  protocol_screen_night_auto_adjust ensureNightAutoAdjust() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get aodSwitchFlag => $_getBF(4);
  @$pb.TagNumber(5)
  set aodSwitchFlag($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAodSwitchFlag() => $_has(4);
  @$pb.TagNumber(5)
  void clearAodSwitchFlag() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get raiseWristSwitchFlag => $_getBF(5);
  @$pb.TagNumber(6)
  set raiseWristSwitchFlag($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRaiseWristSwitchFlag() => $_has(5);
  @$pb.TagNumber(6)
  void clearRaiseWristSwitchFlag() => clearField(6);

  @$pb.TagNumber(7)
  protocol_screen_aod_time_setting get aodTimeSetting => $_getN(6);
  @$pb.TagNumber(7)
  set aodTimeSetting(protocol_screen_aod_time_setting v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAodTimeSetting() => $_has(6);
  @$pb.TagNumber(7)
  void clearAodTimeSetting() => clearField(7);
  @$pb.TagNumber(7)
  protocol_screen_aod_time_setting ensureAodTimeSetting() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.bool get levelFlag => $_getBF(7);
  @$pb.TagNumber(8)
  set levelFlag($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLevelFlag() => $_has(7);
  @$pb.TagNumber(8)
  void clearLevelFlag() => clearField(8);
}

class protocol_screen_brightness_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_screen_brightness_inquire_reply({
    $core.int? funcTable,
    operate_type? operate,
    $core.int? level,
    $core.int? showInterval,
    protocol_screen_night_auto_adjust? nightAutoAdjust,
    $core.bool? aodSwitchFlag,
    $core.bool? raiseWristSwitchFlag,
    protocol_screen_aod_time_setting? aodTimeSetting,
  }) {
    final $result = create();
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (operate != null) {
      $result.operate = operate;
    }
    if (level != null) {
      $result.level = level;
    }
    if (showInterval != null) {
      $result.showInterval = showInterval;
    }
    if (nightAutoAdjust != null) {
      $result.nightAutoAdjust = nightAutoAdjust;
    }
    if (aodSwitchFlag != null) {
      $result.aodSwitchFlag = aodSwitchFlag;
    }
    if (raiseWristSwitchFlag != null) {
      $result.raiseWristSwitchFlag = raiseWristSwitchFlag;
    }
    if (aodTimeSetting != null) {
      $result.aodTimeSetting = aodTimeSetting;
    }
    return $result;
  }
  protocol_screen_brightness_inquire_reply._() : super();
  factory protocol_screen_brightness_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_screen_brightness_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_screen_brightness_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_type>(2, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'level', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'showInterval', $pb.PbFieldType.OU3)
    ..aOM<protocol_screen_night_auto_adjust>(5, _omitFieldNames ? '' : 'nightAutoAdjust', subBuilder: protocol_screen_night_auto_adjust.create)
    ..aOB(6, _omitFieldNames ? '' : 'aodSwitchFlag')
    ..aOB(7, _omitFieldNames ? '' : 'raiseWristSwitchFlag')
    ..aOM<protocol_screen_aod_time_setting>(8, _omitFieldNames ? '' : 'aodTimeSetting', subBuilder: protocol_screen_aod_time_setting.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_screen_brightness_inquire_reply clone() => protocol_screen_brightness_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_screen_brightness_inquire_reply copyWith(void Function(protocol_screen_brightness_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_screen_brightness_inquire_reply)) as protocol_screen_brightness_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_screen_brightness_inquire_reply create() => protocol_screen_brightness_inquire_reply._();
  protocol_screen_brightness_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_screen_brightness_inquire_reply> createRepeated() => $pb.PbList<protocol_screen_brightness_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_screen_brightness_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_screen_brightness_inquire_reply>(create);
  static protocol_screen_brightness_inquire_reply? _defaultInstance;

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
  $core.int get level => $_getIZ(2);
  @$pb.TagNumber(3)
  set level($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get showInterval => $_getIZ(3);
  @$pb.TagNumber(4)
  set showInterval($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowInterval() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowInterval() => clearField(4);

  @$pb.TagNumber(5)
  protocol_screen_night_auto_adjust get nightAutoAdjust => $_getN(4);
  @$pb.TagNumber(5)
  set nightAutoAdjust(protocol_screen_night_auto_adjust v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNightAutoAdjust() => $_has(4);
  @$pb.TagNumber(5)
  void clearNightAutoAdjust() => clearField(5);
  @$pb.TagNumber(5)
  protocol_screen_night_auto_adjust ensureNightAutoAdjust() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get aodSwitchFlag => $_getBF(5);
  @$pb.TagNumber(6)
  set aodSwitchFlag($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAodSwitchFlag() => $_has(5);
  @$pb.TagNumber(6)
  void clearAodSwitchFlag() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get raiseWristSwitchFlag => $_getBF(6);
  @$pb.TagNumber(7)
  set raiseWristSwitchFlag($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRaiseWristSwitchFlag() => $_has(6);
  @$pb.TagNumber(7)
  void clearRaiseWristSwitchFlag() => clearField(7);

  @$pb.TagNumber(8)
  protocol_screen_aod_time_setting get aodTimeSetting => $_getN(7);
  @$pb.TagNumber(8)
  set aodTimeSetting(protocol_screen_aod_time_setting v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAodTimeSetting() => $_has(7);
  @$pb.TagNumber(8)
  void clearAodTimeSetting() => clearField(8);
  @$pb.TagNumber(8)
  protocol_screen_aod_time_setting ensureAodTimeSetting() => $_ensure(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
