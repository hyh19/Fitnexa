///
//  Generated code. Do not modify.
//  source: monitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'monitor.pbenum.dart';

export 'monitor.pbenum.dart';

class protocol_health_monitor_auto_adjust extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_monitor_auto_adjust', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..e<health_monitor_mode>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adjustMode', $pb.PbFieldType.OE, defaultOrMaker: health_monitor_mode.MANUAL, valueOf: health_monitor_mode.valueOf, enumValues: health_monitor_mode.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_health_monitor_auto_adjust._() : super();
  factory protocol_health_monitor_auto_adjust({
    $core.bool? switchFlag,
    health_monitor_mode? adjustMode,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
  }) {
    final _result = create();
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    if (adjustMode != null) {
      _result.adjustMode = adjustMode;
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
    return _result;
  }
  factory protocol_health_monitor_auto_adjust.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_monitor_auto_adjust.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_monitor_auto_adjust clone() => protocol_health_monitor_auto_adjust()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_monitor_auto_adjust copyWith(void Function(protocol_health_monitor_auto_adjust) updates) => super.copyWith((message) => updates(message as protocol_health_monitor_auto_adjust)) as protocol_health_monitor_auto_adjust; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_monitor_auto_adjust create() => protocol_health_monitor_auto_adjust._();
  protocol_health_monitor_auto_adjust createEmptyInstance() => create();
  static $pb.PbList<protocol_health_monitor_auto_adjust> createRepeated() => $pb.PbList<protocol_health_monitor_auto_adjust>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_monitor_auto_adjust getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_monitor_auto_adjust>(create);
  static protocol_health_monitor_auto_adjust? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get switchFlag => $_getBF(0);
  @$pb.TagNumber(1)
  set switchFlag($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwitchFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwitchFlag() => clearField(1);

  @$pb.TagNumber(2)
  health_monitor_mode get adjustMode => $_getN(1);
  @$pb.TagNumber(2)
  set adjustMode(health_monitor_mode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdjustMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdjustMode() => clearField(2);

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
}

class protocol_heart_monitor_notify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_heart_monitor_notify', createEmptyInstance: create)
    ..e<notify_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highRemindSwitch')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lowRemindSwitch')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highThresholdValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lowThresholdValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', $pb.PbFieldType.OU3)
    ..p<$core.bool>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeat', $pb.PbFieldType.KB)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_heart_monitor_notify._() : super();
  factory protocol_heart_monitor_notify({
    notify_type? notifyFlag,
    $core.bool? highRemindSwitch,
    $core.bool? lowRemindSwitch,
    $core.int? highThresholdValue,
    $core.int? lowThresholdValue,
    $core.int? interval,
    $core.Iterable<$core.bool>? repeat,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
  }) {
    final _result = create();
    if (notifyFlag != null) {
      _result.notifyFlag = notifyFlag;
    }
    if (highRemindSwitch != null) {
      _result.highRemindSwitch = highRemindSwitch;
    }
    if (lowRemindSwitch != null) {
      _result.lowRemindSwitch = lowRemindSwitch;
    }
    if (highThresholdValue != null) {
      _result.highThresholdValue = highThresholdValue;
    }
    if (lowThresholdValue != null) {
      _result.lowThresholdValue = lowThresholdValue;
    }
    if (interval != null) {
      _result.interval = interval;
    }
    if (repeat != null) {
      _result.repeat.addAll(repeat);
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
    return _result;
  }
  factory protocol_heart_monitor_notify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_heart_monitor_notify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_heart_monitor_notify clone() => protocol_heart_monitor_notify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_heart_monitor_notify copyWith(void Function(protocol_heart_monitor_notify) updates) => super.copyWith((message) => updates(message as protocol_heart_monitor_notify)) as protocol_heart_monitor_notify; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_heart_monitor_notify create() => protocol_heart_monitor_notify._();
  protocol_heart_monitor_notify createEmptyInstance() => create();
  static $pb.PbList<protocol_heart_monitor_notify> createRepeated() => $pb.PbList<protocol_heart_monitor_notify>();
  @$core.pragma('dart2js:noInline')
  static protocol_heart_monitor_notify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_heart_monitor_notify>(create);
  static protocol_heart_monitor_notify? _defaultInstance;

  @$pb.TagNumber(1)
  notify_type get notifyFlag => $_getN(0);
  @$pb.TagNumber(1)
  set notifyFlag(notify_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotifyFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotifyFlag() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get highRemindSwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set highRemindSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHighRemindSwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearHighRemindSwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get lowRemindSwitch => $_getBF(2);
  @$pb.TagNumber(3)
  set lowRemindSwitch($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLowRemindSwitch() => $_has(2);
  @$pb.TagNumber(3)
  void clearLowRemindSwitch() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get highThresholdValue => $_getIZ(3);
  @$pb.TagNumber(4)
  set highThresholdValue($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHighThresholdValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearHighThresholdValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get lowThresholdValue => $_getIZ(4);
  @$pb.TagNumber(5)
  set lowThresholdValue($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLowThresholdValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearLowThresholdValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get interval => $_getIZ(5);
  @$pb.TagNumber(6)
  set interval($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInterval() => $_has(5);
  @$pb.TagNumber(6)
  void clearInterval() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.bool> get repeat => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get startHour => $_getIZ(7);
  @$pb.TagNumber(8)
  set startHour($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStartHour() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartHour() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get startMinute => $_getIZ(8);
  @$pb.TagNumber(9)
  set startMinute($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStartMinute() => $_has(8);
  @$pb.TagNumber(9)
  void clearStartMinute() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get endHour => $_getIZ(9);
  @$pb.TagNumber(10)
  set endHour($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEndHour() => $_has(9);
  @$pb.TagNumber(10)
  void clearEndHour() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get endMinute => $_getIZ(10);
  @$pb.TagNumber(11)
  set endMinute($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndMinute() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndMinute() => clearField(11);
}

class protocol_health_monitor_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_monitor_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<health_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthType', $pb.PbFieldType.OE, defaultOrMaker: health_type.HEART_RATE, valueOf: health_type.valueOf, enumValues: health_type.values)
    ..e<health_monitor_mode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultMode', $pb.PbFieldType.OE, defaultOrMaker: health_monitor_mode.MANUAL, valueOf: health_monitor_mode.valueOf, enumValues: health_monitor_mode.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'measurementInterval', $pb.PbFieldType.OU3)
    ..aOM<protocol_health_monitor_auto_adjust>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modeAutoAdjust', subBuilder: protocol_health_monitor_auto_adjust.create)
    ..aOM<protocol_heart_monitor_notify>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifySetting', subBuilder: protocol_heart_monitor_notify.create)
    ..hasRequiredFields = false
  ;

  protocol_health_monitor_operate._() : super();
  factory protocol_health_monitor_operate({
    operate_type? operate,
    health_type? healthType,
    health_monitor_mode? defaultMode,
    $core.int? measurementInterval,
    protocol_health_monitor_auto_adjust? modeAutoAdjust,
    protocol_heart_monitor_notify? notifySetting,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (healthType != null) {
      _result.healthType = healthType;
    }
    if (defaultMode != null) {
      _result.defaultMode = defaultMode;
    }
    if (measurementInterval != null) {
      _result.measurementInterval = measurementInterval;
    }
    if (modeAutoAdjust != null) {
      _result.modeAutoAdjust = modeAutoAdjust;
    }
    if (notifySetting != null) {
      _result.notifySetting = notifySetting;
    }
    return _result;
  }
  factory protocol_health_monitor_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_monitor_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_monitor_operate clone() => protocol_health_monitor_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_monitor_operate copyWith(void Function(protocol_health_monitor_operate) updates) => super.copyWith((message) => updates(message as protocol_health_monitor_operate)) as protocol_health_monitor_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_monitor_operate create() => protocol_health_monitor_operate._();
  protocol_health_monitor_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_health_monitor_operate> createRepeated() => $pb.PbList<protocol_health_monitor_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_monitor_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_monitor_operate>(create);
  static protocol_health_monitor_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  health_type get healthType => $_getN(1);
  @$pb.TagNumber(2)
  set healthType(health_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHealthType() => $_has(1);
  @$pb.TagNumber(2)
  void clearHealthType() => clearField(2);

  @$pb.TagNumber(3)
  health_monitor_mode get defaultMode => $_getN(2);
  @$pb.TagNumber(3)
  set defaultMode(health_monitor_mode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDefaultMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get measurementInterval => $_getIZ(3);
  @$pb.TagNumber(4)
  set measurementInterval($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMeasurementInterval() => $_has(3);
  @$pb.TagNumber(4)
  void clearMeasurementInterval() => clearField(4);

  @$pb.TagNumber(5)
  protocol_health_monitor_auto_adjust get modeAutoAdjust => $_getN(4);
  @$pb.TagNumber(5)
  set modeAutoAdjust(protocol_health_monitor_auto_adjust v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasModeAutoAdjust() => $_has(4);
  @$pb.TagNumber(5)
  void clearModeAutoAdjust() => clearField(5);
  @$pb.TagNumber(5)
  protocol_health_monitor_auto_adjust ensureModeAutoAdjust() => $_ensure(4);

  @$pb.TagNumber(6)
  protocol_heart_monitor_notify get notifySetting => $_getN(5);
  @$pb.TagNumber(6)
  set notifySetting(protocol_heart_monitor_notify v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasNotifySetting() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotifySetting() => clearField(6);
  @$pb.TagNumber(6)
  protocol_heart_monitor_notify ensureNotifySetting() => $_ensure(5);
}

class protocol_health_monitor_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_monitor_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<health_type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'healthType', $pb.PbFieldType.OE, defaultOrMaker: health_type.HEART_RATE, valueOf: health_type.valueOf, enumValues: health_type.values)
    ..e<health_monitor_mode>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultMode', $pb.PbFieldType.OE, defaultOrMaker: health_monitor_mode.MANUAL, valueOf: health_monitor_mode.valueOf, enumValues: health_monitor_mode.values)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'measurementInterval', $pb.PbFieldType.OU3)
    ..aOM<protocol_health_monitor_auto_adjust>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modeAutoAdjust', subBuilder: protocol_health_monitor_auto_adjust.create)
    ..aOM<protocol_heart_monitor_notify>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifySetting', subBuilder: protocol_heart_monitor_notify.create)
    ..hasRequiredFields = false
  ;

  protocol_health_monitor_inquire_reply._() : super();
  factory protocol_health_monitor_inquire_reply({
    $core.int? funcTable,
    operate_type? operate,
    health_type? healthType,
    health_monitor_mode? defaultMode,
    $core.int? measurementInterval,
    protocol_health_monitor_auto_adjust? modeAutoAdjust,
    protocol_heart_monitor_notify? notifySetting,
  }) {
    final _result = create();
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (operate != null) {
      _result.operate = operate;
    }
    if (healthType != null) {
      _result.healthType = healthType;
    }
    if (defaultMode != null) {
      _result.defaultMode = defaultMode;
    }
    if (measurementInterval != null) {
      _result.measurementInterval = measurementInterval;
    }
    if (modeAutoAdjust != null) {
      _result.modeAutoAdjust = modeAutoAdjust;
    }
    if (notifySetting != null) {
      _result.notifySetting = notifySetting;
    }
    return _result;
  }
  factory protocol_health_monitor_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_monitor_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_monitor_inquire_reply clone() => protocol_health_monitor_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_monitor_inquire_reply copyWith(void Function(protocol_health_monitor_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_health_monitor_inquire_reply)) as protocol_health_monitor_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_monitor_inquire_reply create() => protocol_health_monitor_inquire_reply._();
  protocol_health_monitor_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_health_monitor_inquire_reply> createRepeated() => $pb.PbList<protocol_health_monitor_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_monitor_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_monitor_inquire_reply>(create);
  static protocol_health_monitor_inquire_reply? _defaultInstance;

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
  health_type get healthType => $_getN(2);
  @$pb.TagNumber(3)
  set healthType(health_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHealthType() => $_has(2);
  @$pb.TagNumber(3)
  void clearHealthType() => clearField(3);

  @$pb.TagNumber(4)
  health_monitor_mode get defaultMode => $_getN(3);
  @$pb.TagNumber(4)
  set defaultMode(health_monitor_mode v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDefaultMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearDefaultMode() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get measurementInterval => $_getIZ(4);
  @$pb.TagNumber(5)
  set measurementInterval($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMeasurementInterval() => $_has(4);
  @$pb.TagNumber(5)
  void clearMeasurementInterval() => clearField(5);

  @$pb.TagNumber(6)
  protocol_health_monitor_auto_adjust get modeAutoAdjust => $_getN(5);
  @$pb.TagNumber(6)
  set modeAutoAdjust(protocol_health_monitor_auto_adjust v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasModeAutoAdjust() => $_has(5);
  @$pb.TagNumber(6)
  void clearModeAutoAdjust() => clearField(6);
  @$pb.TagNumber(6)
  protocol_health_monitor_auto_adjust ensureModeAutoAdjust() => $_ensure(5);

  @$pb.TagNumber(7)
  protocol_heart_monitor_notify get notifySetting => $_getN(6);
  @$pb.TagNumber(7)
  set notifySetting(protocol_heart_monitor_notify v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNotifySetting() => $_has(6);
  @$pb.TagNumber(7)
  void clearNotifySetting() => clearField(7);
  @$pb.TagNumber(7)
  protocol_heart_monitor_notify ensureNotifySetting() => $_ensure(6);
}

