//
//  Generated code. Do not modify.
//  source: SyncActivity.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncActivity extends $pb.GeneratedMessage {
  factory SyncActivity({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? dataDate,
    $core.int? totalStepCount,
    $core.int? totalExerciseDuration,
    $core.int? totalActivityCalorie,
    $core.int? totalRestCalorie,
    $core.int? totalDistance,
    $core.int? totalStandDuration,
    $core.int? activityItemCount,
    $core.String? datas,
    $fixnum.Int64? id,
    $core.int? isSupportAltitudeFloors,
    $core.int? altitudeFloors,
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
    if (totalStepCount != null) {
      $result.totalStepCount = totalStepCount;
    }
    if (totalExerciseDuration != null) {
      $result.totalExerciseDuration = totalExerciseDuration;
    }
    if (totalActivityCalorie != null) {
      $result.totalActivityCalorie = totalActivityCalorie;
    }
    if (totalRestCalorie != null) {
      $result.totalRestCalorie = totalRestCalorie;
    }
    if (totalDistance != null) {
      $result.totalDistance = totalDistance;
    }
    if (totalStandDuration != null) {
      $result.totalStandDuration = totalStandDuration;
    }
    if (activityItemCount != null) {
      $result.activityItemCount = activityItemCount;
    }
    if (datas != null) {
      $result.datas = datas;
    }
    if (id != null) {
      $result.id = id;
    }
    if (isSupportAltitudeFloors != null) {
      $result.isSupportAltitudeFloors = isSupportAltitudeFloors;
    }
    if (altitudeFloors != null) {
      $result.altitudeFloors = altitudeFloors;
    }
    return $result;
  }
  SyncActivity._() : super();
  factory SyncActivity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncActivity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncActivity', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'macId')
    ..aOS(3, _omitFieldNames ? '' : 'dataDate')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'totalStepCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'totalExerciseDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'totalActivityCalorie', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'totalRestCalorie', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'totalDistance', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'totalStandDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'activityItemCount', $pb.PbFieldType.OU3)
    ..aOS(11, _omitFieldNames ? '' : 'datas')
    ..a<$fixnum.Int64>(12, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'isSupportAltitudeFloors', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'altitudeFloors', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncActivity clone() => SyncActivity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncActivity copyWith(void Function(SyncActivity) updates) => super.copyWith((message) => updates(message as SyncActivity)) as SyncActivity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncActivity create() => SyncActivity._();
  SyncActivity createEmptyInstance() => create();
  static $pb.PbList<SyncActivity> createRepeated() => $pb.PbList<SyncActivity>();
  @$core.pragma('dart2js:noInline')
  static SyncActivity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncActivity>(create);
  static SyncActivity? _defaultInstance;

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
  $core.int get totalStepCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalStepCount($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalStepCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalStepCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalExerciseDuration => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalExerciseDuration($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalExerciseDuration() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalExerciseDuration() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalActivityCalorie => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalActivityCalorie($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalActivityCalorie() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalActivityCalorie() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get totalRestCalorie => $_getIZ(6);
  @$pb.TagNumber(7)
  set totalRestCalorie($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalRestCalorie() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalRestCalorie() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get totalDistance => $_getIZ(7);
  @$pb.TagNumber(8)
  set totalDistance($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTotalDistance() => $_has(7);
  @$pb.TagNumber(8)
  void clearTotalDistance() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get totalStandDuration => $_getIZ(8);
  @$pb.TagNumber(9)
  set totalStandDuration($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTotalStandDuration() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalStandDuration() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get activityItemCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set activityItemCount($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasActivityItemCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearActivityItemCount() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get datas => $_getSZ(10);
  @$pb.TagNumber(11)
  set datas($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDatas() => $_has(10);
  @$pb.TagNumber(11)
  void clearDatas() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get id => $_getI64(11);
  @$pb.TagNumber(12)
  set id($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasId() => $_has(11);
  @$pb.TagNumber(12)
  void clearId() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get isSupportAltitudeFloors => $_getIZ(12);
  @$pb.TagNumber(13)
  set isSupportAltitudeFloors($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsSupportAltitudeFloors() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsSupportAltitudeFloors() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get altitudeFloors => $_getIZ(13);
  @$pb.TagNumber(14)
  set altitudeFloors($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAltitudeFloors() => $_has(13);
  @$pb.TagNumber(14)
  void clearAltitudeFloors() => clearField(14);
}

class SyncActivityList extends $pb.GeneratedMessage {
  factory SyncActivityList({
    $core.Iterable<SyncActivity>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  SyncActivityList._() : super();
  factory SyncActivityList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncActivityList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncActivityList', createEmptyInstance: create)
    ..pc<SyncActivity>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncActivity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncActivityList clone() => SyncActivityList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncActivityList copyWith(void Function(SyncActivityList) updates) => super.copyWith((message) => updates(message as SyncActivityList)) as SyncActivityList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncActivityList create() => SyncActivityList._();
  SyncActivityList createEmptyInstance() => create();
  static $pb.PbList<SyncActivityList> createRepeated() => $pb.PbList<SyncActivityList>();
  @$core.pragma('dart2js:noInline')
  static SyncActivityList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncActivityList>(create);
  static SyncActivityList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncActivity> get list => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
