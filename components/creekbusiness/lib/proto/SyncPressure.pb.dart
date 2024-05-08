///
//  Generated code. Do not modify.
//  source: SyncPressure.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncPressure extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncPressure', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataDate')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetLast', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pressureMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pressureMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pressureAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratioLow', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratioUsual', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratioHigh', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratioVeryHigh', $pb.PbFieldType.OU3)
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'datas')
    ..a<$fixnum.Int64>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SyncPressure._() : super();
  factory SyncPressure({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? dataDate,
    $core.int? offsetLast,
    $core.int? pressureMax,
    $core.int? pressureMin,
    $core.int? pressureAverage,
    $core.int? ratioLow,
    $core.int? ratioUsual,
    $core.int? ratioHigh,
    $core.int? ratioVeryHigh,
    $core.String? datas,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (macId != null) {
      _result.macId = macId;
    }
    if (dataDate != null) {
      _result.dataDate = dataDate;
    }
    if (offsetLast != null) {
      _result.offsetLast = offsetLast;
    }
    if (pressureMax != null) {
      _result.pressureMax = pressureMax;
    }
    if (pressureMin != null) {
      _result.pressureMin = pressureMin;
    }
    if (pressureAverage != null) {
      _result.pressureAverage = pressureAverage;
    }
    if (ratioLow != null) {
      _result.ratioLow = ratioLow;
    }
    if (ratioUsual != null) {
      _result.ratioUsual = ratioUsual;
    }
    if (ratioHigh != null) {
      _result.ratioHigh = ratioHigh;
    }
    if (ratioVeryHigh != null) {
      _result.ratioVeryHigh = ratioVeryHigh;
    }
    if (datas != null) {
      _result.datas = datas;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SyncPressure.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncPressure.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncPressure clone() => SyncPressure()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncPressure copyWith(void Function(SyncPressure) updates) => super.copyWith((message) => updates(message as SyncPressure)) as SyncPressure; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncPressure create() => SyncPressure._();
  SyncPressure createEmptyInstance() => create();
  static $pb.PbList<SyncPressure> createRepeated() => $pb.PbList<SyncPressure>();
  @$core.pragma('dart2js:noInline')
  static SyncPressure getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncPressure>(create);
  static SyncPressure? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macId => $_getSZ(1);
  @$pb.TagNumber(2)
  set macId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dataDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataDate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get offsetLast => $_getIZ(3);
  @$pb.TagNumber(4)
  set offsetLast($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOffsetLast() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffsetLast() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pressureMax => $_getIZ(4);
  @$pb.TagNumber(5)
  set pressureMax($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPressureMax() => $_has(4);
  @$pb.TagNumber(5)
  void clearPressureMax() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get pressureMin => $_getIZ(5);
  @$pb.TagNumber(6)
  set pressureMin($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPressureMin() => $_has(5);
  @$pb.TagNumber(6)
  void clearPressureMin() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get pressureAverage => $_getIZ(6);
  @$pb.TagNumber(7)
  set pressureAverage($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPressureAverage() => $_has(6);
  @$pb.TagNumber(7)
  void clearPressureAverage() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get ratioLow => $_getIZ(7);
  @$pb.TagNumber(8)
  set ratioLow($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRatioLow() => $_has(7);
  @$pb.TagNumber(8)
  void clearRatioLow() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get ratioUsual => $_getIZ(8);
  @$pb.TagNumber(9)
  set ratioUsual($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRatioUsual() => $_has(8);
  @$pb.TagNumber(9)
  void clearRatioUsual() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get ratioHigh => $_getIZ(9);
  @$pb.TagNumber(10)
  set ratioHigh($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRatioHigh() => $_has(9);
  @$pb.TagNumber(10)
  void clearRatioHigh() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get ratioVeryHigh => $_getIZ(10);
  @$pb.TagNumber(11)
  set ratioVeryHigh($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRatioVeryHigh() => $_has(10);
  @$pb.TagNumber(11)
  void clearRatioVeryHigh() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get datas => $_getSZ(11);
  @$pb.TagNumber(12)
  set datas($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDatas() => $_has(11);
  @$pb.TagNumber(12)
  void clearDatas() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get id => $_getI64(12);
  @$pb.TagNumber(13)
  set id($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasId() => $_has(12);
  @$pb.TagNumber(13)
  void clearId() => clearField(13);
}

class SyncPressureList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncPressureList', createEmptyInstance: create)
    ..pc<SyncPressure>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncPressure.create)
    ..hasRequiredFields = false
  ;

  SyncPressureList._() : super();
  factory SyncPressureList({
    $core.Iterable<SyncPressure>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory SyncPressureList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncPressureList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncPressureList clone() => SyncPressureList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncPressureList copyWith(void Function(SyncPressureList) updates) => super.copyWith((message) => updates(message as SyncPressureList)) as SyncPressureList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncPressureList create() => SyncPressureList._();
  SyncPressureList createEmptyInstance() => create();
  static $pb.PbList<SyncPressureList> createRepeated() => $pb.PbList<SyncPressureList>();
  @$core.pragma('dart2js:noInline')
  static SyncPressureList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncPressureList>(create);
  static SyncPressureList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncPressure> get list => $_getList(0);
}

