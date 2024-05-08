///
//  Generated code. Do not modify.
//  source: disturb.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'disturb.pbenum.dart';

export 'disturb.pbenum.dart';

class protocol_set_disturb_item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_set_disturb_item', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disturbId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..p<$core.bool>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeat', $pb.PbFieldType.KB)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switchFlag')
    ..hasRequiredFields = false
  ;

  protocol_set_disturb_item._() : super();
  factory protocol_set_disturb_item({
    $core.int? disturbId,
    $core.int? startHour,
    $core.int? startMinute,
    $core.int? endHour,
    $core.int? endMinute,
    $core.Iterable<$core.bool>? repeat,
    $core.bool? switchFlag,
  }) {
    final _result = create();
    if (disturbId != null) {
      _result.disturbId = disturbId;
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
    if (switchFlag != null) {
      _result.switchFlag = switchFlag;
    }
    return _result;
  }
  factory protocol_set_disturb_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_set_disturb_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_set_disturb_item clone() => protocol_set_disturb_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_set_disturb_item copyWith(void Function(protocol_set_disturb_item) updates) => super.copyWith((message) => updates(message as protocol_set_disturb_item)) as protocol_set_disturb_item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_set_disturb_item create() => protocol_set_disturb_item._();
  protocol_set_disturb_item createEmptyInstance() => create();
  static $pb.PbList<protocol_set_disturb_item> createRepeated() => $pb.PbList<protocol_set_disturb_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_set_disturb_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_set_disturb_item>(create);
  static protocol_set_disturb_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get disturbId => $_getIZ(0);
  @$pb.TagNumber(1)
  set disturbId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisturbId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisturbId() => clearField(1);

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
  $core.List<$core.bool> get repeat => $_getList(5);

  @$pb.TagNumber(7)
  $core.bool get switchFlag => $_getBF(6);
  @$pb.TagNumber(7)
  set switchFlag($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSwitchFlag() => $_has(6);
  @$pb.TagNumber(7)
  void clearSwitchFlag() => clearField(7);
}

class protocol_disturb_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_disturb_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'num', $pb.PbFieldType.OU3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disturbOnOff')
    ..pc<protocol_set_disturb_item>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disturbItem', $pb.PbFieldType.PM, subBuilder: protocol_set_disturb_item.create)
    ..hasRequiredFields = false
  ;

  protocol_disturb_operate._() : super();
  factory protocol_disturb_operate({
    operate_type? operate,
    $core.int? num,
    $core.bool? disturbOnOff,
    $core.Iterable<protocol_set_disturb_item>? disturbItem,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (num != null) {
      _result.num = num;
    }
    if (disturbOnOff != null) {
      _result.disturbOnOff = disturbOnOff;
    }
    if (disturbItem != null) {
      _result.disturbItem.addAll(disturbItem);
    }
    return _result;
  }
  factory protocol_disturb_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_disturb_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_disturb_operate clone() => protocol_disturb_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_disturb_operate copyWith(void Function(protocol_disturb_operate) updates) => super.copyWith((message) => updates(message as protocol_disturb_operate)) as protocol_disturb_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_disturb_operate create() => protocol_disturb_operate._();
  protocol_disturb_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_disturb_operate> createRepeated() => $pb.PbList<protocol_disturb_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_disturb_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_disturb_operate>(create);
  static protocol_disturb_operate? _defaultInstance;

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
  $core.bool get disturbOnOff => $_getBF(2);
  @$pb.TagNumber(3)
  set disturbOnOff($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisturbOnOff() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisturbOnOff() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<protocol_set_disturb_item> get disturbItem => $_getList(3);
}

class protocol_disturb_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_disturb_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disturbMax', $pb.PbFieldType.OU3)
    ..e<operate_type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'num', $pb.PbFieldType.OU3)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disturbOnOff')
    ..pc<protocol_set_disturb_item>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disturbItem', $pb.PbFieldType.PM, subBuilder: protocol_set_disturb_item.create)
    ..hasRequiredFields = false
  ;

  protocol_disturb_inquire_reply._() : super();
  factory protocol_disturb_inquire_reply({
    $core.int? funcTable,
    $core.int? disturbMax,
    operate_type? operate,
    $core.int? num,
    $core.bool? disturbOnOff,
    $core.Iterable<protocol_set_disturb_item>? disturbItem,
  }) {
    final _result = create();
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (disturbMax != null) {
      _result.disturbMax = disturbMax;
    }
    if (operate != null) {
      _result.operate = operate;
    }
    if (num != null) {
      _result.num = num;
    }
    if (disturbOnOff != null) {
      _result.disturbOnOff = disturbOnOff;
    }
    if (disturbItem != null) {
      _result.disturbItem.addAll(disturbItem);
    }
    return _result;
  }
  factory protocol_disturb_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_disturb_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_disturb_inquire_reply clone() => protocol_disturb_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_disturb_inquire_reply copyWith(void Function(protocol_disturb_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_disturb_inquire_reply)) as protocol_disturb_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_disturb_inquire_reply create() => protocol_disturb_inquire_reply._();
  protocol_disturb_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_disturb_inquire_reply> createRepeated() => $pb.PbList<protocol_disturb_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_disturb_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_disturb_inquire_reply>(create);
  static protocol_disturb_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get funcTable => $_getIZ(0);
  @$pb.TagNumber(1)
  set funcTable($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get disturbMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set disturbMax($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDisturbMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisturbMax() => clearField(2);

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
  $core.bool get disturbOnOff => $_getBF(4);
  @$pb.TagNumber(5)
  set disturbOnOff($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisturbOnOff() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisturbOnOff() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<protocol_set_disturb_item> get disturbItem => $_getList(5);
}

