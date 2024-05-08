///
//  Generated code. Do not modify.
//  source: SyncSpo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncSpo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncSpo', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataDate')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetLast', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spoMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spoMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spoAverage', $pb.PbFieldType.OU3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'datas')
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SyncSpo._() : super();
  factory SyncSpo({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? dataDate,
    $core.int? offsetLast,
    $core.int? spoMax,
    $core.int? spoMin,
    $core.int? spoAverage,
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
    if (spoMax != null) {
      _result.spoMax = spoMax;
    }
    if (spoMin != null) {
      _result.spoMin = spoMin;
    }
    if (spoAverage != null) {
      _result.spoAverage = spoAverage;
    }
    if (datas != null) {
      _result.datas = datas;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SyncSpo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSpo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSpo clone() => SyncSpo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSpo copyWith(void Function(SyncSpo) updates) => super.copyWith((message) => updates(message as SyncSpo)) as SyncSpo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncSpo create() => SyncSpo._();
  SyncSpo createEmptyInstance() => create();
  static $pb.PbList<SyncSpo> createRepeated() => $pb.PbList<SyncSpo>();
  @$core.pragma('dart2js:noInline')
  static SyncSpo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSpo>(create);
  static SyncSpo? _defaultInstance;

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
  $core.int get spoMax => $_getIZ(4);
  @$pb.TagNumber(5)
  set spoMax($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpoMax() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpoMax() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get spoMin => $_getIZ(5);
  @$pb.TagNumber(6)
  set spoMin($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSpoMin() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpoMin() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get spoAverage => $_getIZ(6);
  @$pb.TagNumber(7)
  set spoAverage($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSpoAverage() => $_has(6);
  @$pb.TagNumber(7)
  void clearSpoAverage() => clearField(7);

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

class SyncSpoList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncSpoList', createEmptyInstance: create)
    ..pc<SyncSpo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncSpo.create)
    ..hasRequiredFields = false
  ;

  SyncSpoList._() : super();
  factory SyncSpoList({
    $core.Iterable<SyncSpo>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory SyncSpoList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSpoList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSpoList clone() => SyncSpoList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSpoList copyWith(void Function(SyncSpoList) updates) => super.copyWith((message) => updates(message as SyncSpoList)) as SyncSpoList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncSpoList create() => SyncSpoList._();
  SyncSpoList createEmptyInstance() => create();
  static $pb.PbList<SyncSpoList> createRepeated() => $pb.PbList<SyncSpoList>();
  @$core.pragma('dart2js:noInline')
  static SyncSpoList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSpoList>(create);
  static SyncSpoList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncSpo> get list => $_getList(0);
}

