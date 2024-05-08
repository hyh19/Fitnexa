//
//  Generated code. Do not modify.
//  source: SyncHeartRateVariability.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncHeartRateVariability extends $pb.GeneratedMessage {
  factory SyncHeartRateVariability({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? dataDate,
    $core.int? offsetLast,
    $core.int? hrvMax,
    $core.int? hrvMin,
    $core.int? hrvAverage,
    $core.int? sleepMax,
    $core.int? sleepMin,
    $core.String? datas,
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (macId != null) {
      $result.macId = macId;
    }
    if (dataDate != null) {
      $result.dataDate = dataDate;
    }
    if (offsetLast != null) {
      $result.offsetLast = offsetLast;
    }
    if (hrvMax != null) {
      $result.hrvMax = hrvMax;
    }
    if (hrvMin != null) {
      $result.hrvMin = hrvMin;
    }
    if (hrvAverage != null) {
      $result.hrvAverage = hrvAverage;
    }
    if (sleepMax != null) {
      $result.sleepMax = sleepMax;
    }
    if (sleepMin != null) {
      $result.sleepMin = sleepMin;
    }
    if (datas != null) {
      $result.datas = datas;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SyncHeartRateVariability._() : super();
  factory SyncHeartRateVariability.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncHeartRateVariability.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncHeartRateVariability', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'macId')
    ..aOS(3, _omitFieldNames ? '' : 'dataDate')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'offsetLast', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'hrvMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'hrvMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'hrvAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'sleepMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'sleepMin', $pb.PbFieldType.OU3)
    ..aOS(10, _omitFieldNames ? '' : 'datas')
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncHeartRateVariability clone() => SyncHeartRateVariability()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncHeartRateVariability copyWith(void Function(SyncHeartRateVariability) updates) => super.copyWith((message) => updates(message as SyncHeartRateVariability)) as SyncHeartRateVariability;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncHeartRateVariability create() => SyncHeartRateVariability._();
  SyncHeartRateVariability createEmptyInstance() => create();
  static $pb.PbList<SyncHeartRateVariability> createRepeated() => $pb.PbList<SyncHeartRateVariability>();
  @$core.pragma('dart2js:noInline')
  static SyncHeartRateVariability getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncHeartRateVariability>(create);
  static SyncHeartRateVariability? _defaultInstance;

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
  $core.int get hrvMax => $_getIZ(4);
  @$pb.TagNumber(5)
  set hrvMax($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHrvMax() => $_has(4);
  @$pb.TagNumber(5)
  void clearHrvMax() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get hrvMin => $_getIZ(5);
  @$pb.TagNumber(6)
  set hrvMin($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHrvMin() => $_has(5);
  @$pb.TagNumber(6)
  void clearHrvMin() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get hrvAverage => $_getIZ(6);
  @$pb.TagNumber(7)
  set hrvAverage($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHrvAverage() => $_has(6);
  @$pb.TagNumber(7)
  void clearHrvAverage() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get sleepMax => $_getIZ(7);
  @$pb.TagNumber(8)
  set sleepMax($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSleepMax() => $_has(7);
  @$pb.TagNumber(8)
  void clearSleepMax() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get sleepMin => $_getIZ(8);
  @$pb.TagNumber(9)
  set sleepMin($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSleepMin() => $_has(8);
  @$pb.TagNumber(9)
  void clearSleepMin() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get datas => $_getSZ(9);
  @$pb.TagNumber(10)
  set datas($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDatas() => $_has(9);
  @$pb.TagNumber(10)
  void clearDatas() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get id => $_getI64(10);
  @$pb.TagNumber(11)
  set id($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasId() => $_has(10);
  @$pb.TagNumber(11)
  void clearId() => clearField(11);
}

class SyncHeartRateVariabilityList extends $pb.GeneratedMessage {
  factory SyncHeartRateVariabilityList({
    $core.Iterable<SyncHeartRateVariability>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  SyncHeartRateVariabilityList._() : super();
  factory SyncHeartRateVariabilityList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncHeartRateVariabilityList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncHeartRateVariabilityList', createEmptyInstance: create)
    ..pc<SyncHeartRateVariability>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncHeartRateVariability.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncHeartRateVariabilityList clone() => SyncHeartRateVariabilityList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncHeartRateVariabilityList copyWith(void Function(SyncHeartRateVariabilityList) updates) => super.copyWith((message) => updates(message as SyncHeartRateVariabilityList)) as SyncHeartRateVariabilityList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncHeartRateVariabilityList create() => SyncHeartRateVariabilityList._();
  SyncHeartRateVariabilityList createEmptyInstance() => create();
  static $pb.PbList<SyncHeartRateVariabilityList> createRepeated() => $pb.PbList<SyncHeartRateVariabilityList>();
  @$core.pragma('dart2js:noInline')
  static SyncHeartRateVariabilityList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncHeartRateVariabilityList>(create);
  static SyncHeartRateVariabilityList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncHeartRateVariability> get list => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
