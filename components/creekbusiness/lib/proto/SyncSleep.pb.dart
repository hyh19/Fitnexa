//
//  Generated code. Do not modify.
//  source: SyncSleep.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncSleep extends $pb.GeneratedMessage {
  factory SyncSleep({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? fallAsleepTime,
    $core.String? getUpTime,
    $core.int? totalSleepDuration,
    $core.int? totalWakeDuration,
    $core.int? totalSleepLightDuration,
    $core.int? totalSleepDeepDuration,
    $core.int? totalRemDuration,
    $core.int? wakeCount,
    $core.int? sleepLightCount,
    $core.int? sleepDeepCount,
    $core.int? remCount,
    $core.int? sleepScore,
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
    if (fallAsleepTime != null) {
      $result.fallAsleepTime = fallAsleepTime;
    }
    if (getUpTime != null) {
      $result.getUpTime = getUpTime;
    }
    if (totalSleepDuration != null) {
      $result.totalSleepDuration = totalSleepDuration;
    }
    if (totalWakeDuration != null) {
      $result.totalWakeDuration = totalWakeDuration;
    }
    if (totalSleepLightDuration != null) {
      $result.totalSleepLightDuration = totalSleepLightDuration;
    }
    if (totalSleepDeepDuration != null) {
      $result.totalSleepDeepDuration = totalSleepDeepDuration;
    }
    if (totalRemDuration != null) {
      $result.totalRemDuration = totalRemDuration;
    }
    if (wakeCount != null) {
      $result.wakeCount = wakeCount;
    }
    if (sleepLightCount != null) {
      $result.sleepLightCount = sleepLightCount;
    }
    if (sleepDeepCount != null) {
      $result.sleepDeepCount = sleepDeepCount;
    }
    if (remCount != null) {
      $result.remCount = remCount;
    }
    if (sleepScore != null) {
      $result.sleepScore = sleepScore;
    }
    if (datas != null) {
      $result.datas = datas;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SyncSleep._() : super();
  factory SyncSleep.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSleep.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncSleep', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'macId')
    ..aOS(3, _omitFieldNames ? '' : 'fallAsleepTime')
    ..aOS(4, _omitFieldNames ? '' : 'getUpTime')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'totalSleepDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'totalWakeDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'totalSleepLightDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'totalSleepDeepDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'totalRemDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'wakeCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'sleepLightCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'sleepDeepCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'remCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'sleepScore', $pb.PbFieldType.OU3)
    ..aOS(15, _omitFieldNames ? '' : 'datas')
    ..a<$fixnum.Int64>(16, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSleep clone() => SyncSleep()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSleep copyWith(void Function(SyncSleep) updates) => super.copyWith((message) => updates(message as SyncSleep)) as SyncSleep;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncSleep create() => SyncSleep._();
  SyncSleep createEmptyInstance() => create();
  static $pb.PbList<SyncSleep> createRepeated() => $pb.PbList<SyncSleep>();
  @$core.pragma('dart2js:noInline')
  static SyncSleep getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSleep>(create);
  static SyncSleep? _defaultInstance;

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
  $core.String get fallAsleepTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set fallAsleepTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFallAsleepTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearFallAsleepTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get getUpTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set getUpTime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetUpTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetUpTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalSleepDuration => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalSleepDuration($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalSleepDuration() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalSleepDuration() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalWakeDuration => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalWakeDuration($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalWakeDuration() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalWakeDuration() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get totalSleepLightDuration => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalSleepLightDuration($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalSleepLightDuration() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalSleepLightDuration() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get totalSleepDeepDuration => $_getIZ(7);
  @$pb.TagNumber(8)
  set totalSleepDeepDuration($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalSleepDeepDuration() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalSleepDeepDuration() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get totalRemDuration => $_getIZ(8);
  @$pb.TagNumber(9)
  set totalRemDuration($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTotalRemDuration() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalRemDuration() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get wakeCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set wakeCount($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasWakeCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearWakeCount() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get sleepLightCount => $_getIZ(10);
  @$pb.TagNumber(11)
  set sleepLightCount($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSleepLightCount() => $_has(10);
  @$pb.TagNumber(11)
  void clearSleepLightCount() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get sleepDeepCount => $_getIZ(11);
  @$pb.TagNumber(12)
  set sleepDeepCount($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSleepDeepCount() => $_has(11);
  @$pb.TagNumber(12)
  void clearSleepDeepCount() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get remCount => $_getIZ(12);
  @$pb.TagNumber(13)
  set remCount($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRemCount() => $_has(12);
  @$pb.TagNumber(13)
  void clearRemCount() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get sleepScore => $_getIZ(13);
  @$pb.TagNumber(14)
  set sleepScore($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasSleepScore() => $_has(13);
  @$pb.TagNumber(14)
  void clearSleepScore() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get datas => $_getSZ(14);
  @$pb.TagNumber(15)
  set datas($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDatas() => $_has(14);
  @$pb.TagNumber(15)
  void clearDatas() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get id => $_getI64(15);
  @$pb.TagNumber(16)
  set id($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasId() => $_has(15);
  @$pb.TagNumber(16)
  void clearId() => clearField(16);
}

class SyncSleepList extends $pb.GeneratedMessage {
  factory SyncSleepList({
    $core.Iterable<SyncSleep>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  SyncSleepList._() : super();
  factory SyncSleepList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSleepList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncSleepList', createEmptyInstance: create)
    ..pc<SyncSleep>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncSleep.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSleepList clone() => SyncSleepList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSleepList copyWith(void Function(SyncSleepList) updates) => super.copyWith((message) => updates(message as SyncSleepList)) as SyncSleepList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncSleepList create() => SyncSleepList._();
  SyncSleepList createEmptyInstance() => create();
  static $pb.PbList<SyncSleepList> createRepeated() => $pb.PbList<SyncSleepList>();
  @$core.pragma('dart2js:noInline')
  static SyncSleepList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSleepList>(create);
  static SyncSleepList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncSleep> get list => $_getList(0);
}

class SyncSleepGroup extends $pb.GeneratedMessage {
  factory SyncSleepGroup({
    $core.String? groupDate,
    $core.Iterable<SyncSleep>? list,
  }) {
    final $result = create();
    if (groupDate != null) {
      $result.groupDate = groupDate;
    }
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  SyncSleepGroup._() : super();
  factory SyncSleepGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSleepGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncSleepGroup', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'groupDate', protoName: 'groupDate')
    ..pc<SyncSleep>(2, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncSleep.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSleepGroup clone() => SyncSleepGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSleepGroup copyWith(void Function(SyncSleepGroup) updates) => super.copyWith((message) => updates(message as SyncSleepGroup)) as SyncSleepGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncSleepGroup create() => SyncSleepGroup._();
  SyncSleepGroup createEmptyInstance() => create();
  static $pb.PbList<SyncSleepGroup> createRepeated() => $pb.PbList<SyncSleepGroup>();
  @$core.pragma('dart2js:noInline')
  static SyncSleepGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSleepGroup>(create);
  static SyncSleepGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<SyncSleep> get list => $_getList(1);
}

class SyncSleepGroupProto extends $pb.GeneratedMessage {
  factory SyncSleepGroupProto({
    $core.Iterable<SyncSleepGroup>? sleepGroup,
  }) {
    final $result = create();
    if (sleepGroup != null) {
      $result.sleepGroup.addAll(sleepGroup);
    }
    return $result;
  }
  SyncSleepGroupProto._() : super();
  factory SyncSleepGroupProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSleepGroupProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncSleepGroupProto', createEmptyInstance: create)
    ..pc<SyncSleepGroup>(1, _omitFieldNames ? '' : 'sleepGroup', $pb.PbFieldType.PM, protoName: 'sleepGroup', subBuilder: SyncSleepGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSleepGroupProto clone() => SyncSleepGroupProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSleepGroupProto copyWith(void Function(SyncSleepGroupProto) updates) => super.copyWith((message) => updates(message as SyncSleepGroupProto)) as SyncSleepGroupProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncSleepGroupProto create() => SyncSleepGroupProto._();
  SyncSleepGroupProto createEmptyInstance() => create();
  static $pb.PbList<SyncSleepGroupProto> createRepeated() => $pb.PbList<SyncSleepGroupProto>();
  @$core.pragma('dart2js:noInline')
  static SyncSleepGroupProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSleepGroupProto>(create);
  static SyncSleepGroupProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncSleepGroup> get sleepGroup => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
