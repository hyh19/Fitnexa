///
//  Generated code. Do not modify.
//  source: SyncNoise.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncNoise extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncNoise', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataDate')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetLast', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noiseMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noiseMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noiseAverage', $pb.PbFieldType.OU3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'datas')
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SyncNoise._() : super();
  factory SyncNoise({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? dataDate,
    $core.int? offsetLast,
    $core.int? noiseMax,
    $core.int? noiseMin,
    $core.int? noiseAverage,
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
    if (noiseMax != null) {
      _result.noiseMax = noiseMax;
    }
    if (noiseMin != null) {
      _result.noiseMin = noiseMin;
    }
    if (noiseAverage != null) {
      _result.noiseAverage = noiseAverage;
    }
    if (datas != null) {
      _result.datas = datas;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SyncNoise.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncNoise.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncNoise clone() => SyncNoise()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncNoise copyWith(void Function(SyncNoise) updates) => super.copyWith((message) => updates(message as SyncNoise)) as SyncNoise; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncNoise create() => SyncNoise._();
  SyncNoise createEmptyInstance() => create();
  static $pb.PbList<SyncNoise> createRepeated() => $pb.PbList<SyncNoise>();
  @$core.pragma('dart2js:noInline')
  static SyncNoise getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncNoise>(create);
  static SyncNoise? _defaultInstance;

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
  $core.int get noiseMax => $_getIZ(4);
  @$pb.TagNumber(5)
  set noiseMax($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNoiseMax() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoiseMax() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get noiseMin => $_getIZ(5);
  @$pb.TagNumber(6)
  set noiseMin($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNoiseMin() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoiseMin() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get noiseAverage => $_getIZ(6);
  @$pb.TagNumber(7)
  set noiseAverage($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNoiseAverage() => $_has(6);
  @$pb.TagNumber(7)
  void clearNoiseAverage() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get datas => $_getSZ(7);
  @$pb.TagNumber(8)
  set datas($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDatas() => $_has(7);
  @$pb.TagNumber(8)
  void clearDatas() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get id => $_getI64(8);
  @$pb.TagNumber(9)
  set id($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasId() => $_has(8);
  @$pb.TagNumber(9)
  void clearId() => clearField(9);
}

class SyncNoiseList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncNoiseList', createEmptyInstance: create)
    ..pc<SyncNoise>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncNoise.create)
    ..hasRequiredFields = false
  ;

  SyncNoiseList._() : super();
  factory SyncNoiseList({
    $core.Iterable<SyncNoise>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory SyncNoiseList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncNoiseList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncNoiseList clone() => SyncNoiseList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncNoiseList copyWith(void Function(SyncNoiseList) updates) => super.copyWith((message) => updates(message as SyncNoiseList)) as SyncNoiseList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncNoiseList create() => SyncNoiseList._();
  SyncNoiseList createEmptyInstance() => create();
  static $pb.PbList<SyncNoiseList> createRepeated() => $pb.PbList<SyncNoiseList>();
  @$core.pragma('dart2js:noInline')
  static SyncNoiseList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncNoiseList>(create);
  static SyncNoiseList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncNoise> get list => $_getList(0);
}

