///
//  Generated code. Do not modify.
//  source: health.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/healthhead.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'health.pbenum.dart';

export 'health.pbenum.dart';

class protocol_health_get_data_size_item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_get_data_size_item', createEmptyInstance: create)
    ..e<sync_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: sync_type.SYNC_HEART_RATE, valueOf: sync_type.valueOf, enumValues: sync_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataOffset', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_health_get_data_size_item._() : super();
  factory protocol_health_get_data_size_item({
    sync_type? type,
    $core.int? dataOffset,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (dataOffset != null) {
      _result.dataOffset = dataOffset;
    }
    return _result;
  }
  factory protocol_health_get_data_size_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_get_data_size_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_item clone() => protocol_health_get_data_size_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_item copyWith(void Function(protocol_health_get_data_size_item) updates) => super.copyWith((message) => updates(message as protocol_health_get_data_size_item)) as protocol_health_get_data_size_item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_item create() => protocol_health_get_data_size_item._();
  protocol_health_get_data_size_item createEmptyInstance() => create();
  static $pb.PbList<protocol_health_get_data_size_item> createRepeated() => $pb.PbList<protocol_health_get_data_size_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_get_data_size_item>(create);
  static protocol_health_get_data_size_item? _defaultInstance;

  @$pb.TagNumber(1)
  sync_type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(sync_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get dataOffset => $_getIZ(1);
  @$pb.TagNumber(2)
  set dataOffset($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDataOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataOffset() => clearField(2);
}

class protocol_health_get_data_size_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_get_data_size_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..pc<protocol_health_get_data_size_item>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', $pb.PbFieldType.PM, subBuilder: protocol_health_get_data_size_item.create)
    ..hasRequiredFields = false
  ;

  protocol_health_get_data_size_operate._() : super();
  factory protocol_health_get_data_size_operate({
    operate_type? operate,
    $core.Iterable<protocol_health_get_data_size_item>? item,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (item != null) {
      _result.item.addAll(item);
    }
    return _result;
  }
  factory protocol_health_get_data_size_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_get_data_size_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_operate clone() => protocol_health_get_data_size_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_operate copyWith(void Function(protocol_health_get_data_size_operate) updates) => super.copyWith((message) => updates(message as protocol_health_get_data_size_operate)) as protocol_health_get_data_size_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_operate create() => protocol_health_get_data_size_operate._();
  protocol_health_get_data_size_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_health_get_data_size_operate> createRepeated() => $pb.PbList<protocol_health_get_data_size_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_get_data_size_operate>(create);
  static protocol_health_get_data_size_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<protocol_health_get_data_size_item> get item => $_getList(1);
}

class protocol_health_get_data_size_set_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_get_data_size_set_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorCode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_health_get_data_size_set_reply._() : super();
  factory protocol_health_get_data_size_set_reply({
    operate_type? operate,
    $core.int? totalSize,
    $core.int? errorCode,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (totalSize != null) {
      _result.totalSize = totalSize;
    }
    if (errorCode != null) {
      _result.errorCode = errorCode;
    }
    return _result;
  }
  factory protocol_health_get_data_size_set_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_get_data_size_set_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_set_reply clone() => protocol_health_get_data_size_set_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_set_reply copyWith(void Function(protocol_health_get_data_size_set_reply) updates) => super.copyWith((message) => updates(message as protocol_health_get_data_size_set_reply)) as protocol_health_get_data_size_set_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_set_reply create() => protocol_health_get_data_size_set_reply._();
  protocol_health_get_data_size_set_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_health_get_data_size_set_reply> createRepeated() => $pb.PbList<protocol_health_get_data_size_set_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_set_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_get_data_size_set_reply>(create);
  static protocol_health_get_data_size_set_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalSize($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get errorCode => $_getIZ(2);
  @$pb.TagNumber(3)
  set errorCode($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorCode() => clearField(3);
}

class protocol_health_get_data_size_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_get_data_size_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hearRateSupport')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stressSupport')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spo2Support')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sleepSupport')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exerciseSupport')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'activitySupport')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swimSupport')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hrvSupport')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noiseSupport')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bodyEnergySupport')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'respiratoryRateSupport')
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skinTemperatureSupport')
    ..hasRequiredFields = false
  ;

  protocol_health_get_data_size_inquire_reply._() : super();
  factory protocol_health_get_data_size_inquire_reply({
    operate_type? operate,
    $core.bool? hearRateSupport,
    $core.bool? stressSupport,
    $core.bool? spo2Support,
    $core.bool? sleepSupport,
    $core.bool? exerciseSupport,
    $core.bool? activitySupport,
    $core.bool? swimSupport,
    $core.bool? hrvSupport,
    $core.bool? noiseSupport,
    $core.bool? bodyEnergySupport,
    $core.bool? respiratoryRateSupport,
    $core.bool? skinTemperatureSupport,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (hearRateSupport != null) {
      _result.hearRateSupport = hearRateSupport;
    }
    if (stressSupport != null) {
      _result.stressSupport = stressSupport;
    }
    if (spo2Support != null) {
      _result.spo2Support = spo2Support;
    }
    if (sleepSupport != null) {
      _result.sleepSupport = sleepSupport;
    }
    if (exerciseSupport != null) {
      _result.exerciseSupport = exerciseSupport;
    }
    if (activitySupport != null) {
      _result.activitySupport = activitySupport;
    }
    if (swimSupport != null) {
      _result.swimSupport = swimSupport;
    }
    if (hrvSupport != null) {
      _result.hrvSupport = hrvSupport;
    }
    if (noiseSupport != null) {
      _result.noiseSupport = noiseSupport;
    }
    if (bodyEnergySupport != null) {
      _result.bodyEnergySupport = bodyEnergySupport;
    }
    if (respiratoryRateSupport != null) {
      _result.respiratoryRateSupport = respiratoryRateSupport;
    }
    if (skinTemperatureSupport != null) {
      _result.skinTemperatureSupport = skinTemperatureSupport;
    }
    return _result;
  }
  factory protocol_health_get_data_size_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_get_data_size_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_inquire_reply clone() => protocol_health_get_data_size_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_get_data_size_inquire_reply copyWith(void Function(protocol_health_get_data_size_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_health_get_data_size_inquire_reply)) as protocol_health_get_data_size_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_inquire_reply create() => protocol_health_get_data_size_inquire_reply._();
  protocol_health_get_data_size_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_health_get_data_size_inquire_reply> createRepeated() => $pb.PbList<protocol_health_get_data_size_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_get_data_size_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_get_data_size_inquire_reply>(create);
  static protocol_health_get_data_size_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hearRateSupport => $_getBF(1);
  @$pb.TagNumber(2)
  set hearRateSupport($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHearRateSupport() => $_has(1);
  @$pb.TagNumber(2)
  void clearHearRateSupport() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get stressSupport => $_getBF(2);
  @$pb.TagNumber(3)
  set stressSupport($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStressSupport() => $_has(2);
  @$pb.TagNumber(3)
  void clearStressSupport() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get spo2Support => $_getBF(3);
  @$pb.TagNumber(4)
  set spo2Support($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpo2Support() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpo2Support() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get sleepSupport => $_getBF(4);
  @$pb.TagNumber(5)
  set sleepSupport($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSleepSupport() => $_has(4);
  @$pb.TagNumber(5)
  void clearSleepSupport() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get exerciseSupport => $_getBF(5);
  @$pb.TagNumber(6)
  set exerciseSupport($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExerciseSupport() => $_has(5);
  @$pb.TagNumber(6)
  void clearExerciseSupport() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get activitySupport => $_getBF(6);
  @$pb.TagNumber(7)
  set activitySupport($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasActivitySupport() => $_has(6);
  @$pb.TagNumber(7)
  void clearActivitySupport() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get swimSupport => $_getBF(7);
  @$pb.TagNumber(8)
  set swimSupport($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSwimSupport() => $_has(7);
  @$pb.TagNumber(8)
  void clearSwimSupport() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get hrvSupport => $_getBF(8);
  @$pb.TagNumber(9)
  set hrvSupport($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHrvSupport() => $_has(8);
  @$pb.TagNumber(9)
  void clearHrvSupport() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get noiseSupport => $_getBF(9);
  @$pb.TagNumber(10)
  set noiseSupport($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasNoiseSupport() => $_has(9);
  @$pb.TagNumber(10)
  void clearNoiseSupport() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get bodyEnergySupport => $_getBF(10);
  @$pb.TagNumber(11)
  set bodyEnergySupport($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBodyEnergySupport() => $_has(10);
  @$pb.TagNumber(11)
  void clearBodyEnergySupport() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get respiratoryRateSupport => $_getBF(11);
  @$pb.TagNumber(12)
  set respiratoryRateSupport($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasRespiratoryRateSupport() => $_has(11);
  @$pb.TagNumber(12)
  void clearRespiratoryRateSupport() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get skinTemperatureSupport => $_getBF(12);
  @$pb.TagNumber(13)
  set skinTemperatureSupport($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSkinTemperatureSupport() => $_has(12);
  @$pb.TagNumber(13)
  void clearSkinTemperatureSupport() => clearField(13);
}

