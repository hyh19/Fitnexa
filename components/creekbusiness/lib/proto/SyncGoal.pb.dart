///
//  Generated code. Do not modify.
//  source: SyncGoal.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncGoal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncGoal', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataDate')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exerciseDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'standDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'calorie', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stepCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'distance', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sportDay', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sleepDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifySwitch', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notifyType', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SyncGoal._() : super();
  factory SyncGoal({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? dataDate,
    $core.int? exerciseDuration,
    $core.int? standDuration,
    $core.int? calorie,
    $core.int? stepCount,
    $core.int? distance,
    $core.int? sportDay,
    $core.int? sleepDuration,
    $core.int? notifySwitch,
    $core.int? notifyType,
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
    if (exerciseDuration != null) {
      _result.exerciseDuration = exerciseDuration;
    }
    if (standDuration != null) {
      _result.standDuration = standDuration;
    }
    if (calorie != null) {
      _result.calorie = calorie;
    }
    if (stepCount != null) {
      _result.stepCount = stepCount;
    }
    if (distance != null) {
      _result.distance = distance;
    }
    if (sportDay != null) {
      _result.sportDay = sportDay;
    }
    if (sleepDuration != null) {
      _result.sleepDuration = sleepDuration;
    }
    if (notifySwitch != null) {
      _result.notifySwitch = notifySwitch;
    }
    if (notifyType != null) {
      _result.notifyType = notifyType;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SyncGoal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncGoal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncGoal clone() => SyncGoal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncGoal copyWith(void Function(SyncGoal) updates) => super.copyWith((message) => updates(message as SyncGoal)) as SyncGoal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncGoal create() => SyncGoal._();
  SyncGoal createEmptyInstance() => create();
  static $pb.PbList<SyncGoal> createRepeated() => $pb.PbList<SyncGoal>();
  @$core.pragma('dart2js:noInline')
  static SyncGoal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncGoal>(create);
  static SyncGoal? _defaultInstance;

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
  $core.int get exerciseDuration => $_getIZ(3);
  @$pb.TagNumber(4)
  set exerciseDuration($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExerciseDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearExerciseDuration() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get standDuration => $_getIZ(4);
  @$pb.TagNumber(5)
  set standDuration($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStandDuration() => $_has(4);
  @$pb.TagNumber(5)
  void clearStandDuration() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get calorie => $_getIZ(5);
  @$pb.TagNumber(6)
  set calorie($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCalorie() => $_has(5);
  @$pb.TagNumber(6)
  void clearCalorie() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get stepCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set stepCount($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStepCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearStepCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get distance => $_getIZ(7);
  @$pb.TagNumber(8)
  set distance($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDistance() => $_has(7);
  @$pb.TagNumber(8)
  void clearDistance() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get sportDay => $_getIZ(8);
  @$pb.TagNumber(9)
  set sportDay($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSportDay() => $_has(8);
  @$pb.TagNumber(9)
  void clearSportDay() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get sleepDuration => $_getIZ(9);
  @$pb.TagNumber(10)
  set sleepDuration($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSleepDuration() => $_has(9);
  @$pb.TagNumber(10)
  void clearSleepDuration() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get notifySwitch => $_getIZ(10);
  @$pb.TagNumber(11)
  set notifySwitch($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNotifySwitch() => $_has(10);
  @$pb.TagNumber(11)
  void clearNotifySwitch() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get notifyType => $_getIZ(11);
  @$pb.TagNumber(12)
  set notifyType($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNotifyType() => $_has(11);
  @$pb.TagNumber(12)
  void clearNotifyType() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get id => $_getI64(12);
  @$pb.TagNumber(13)
  set id($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasId() => $_has(12);
  @$pb.TagNumber(13)
  void clearId() => clearField(13);
}

class SyncGoalList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncGoalList', createEmptyInstance: create)
    ..pc<SyncGoal>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncGoal.create)
    ..hasRequiredFields = false
  ;

  SyncGoalList._() : super();
  factory SyncGoalList({
    $core.Iterable<SyncGoal>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory SyncGoalList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncGoalList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncGoalList clone() => SyncGoalList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncGoalList copyWith(void Function(SyncGoalList) updates) => super.copyWith((message) => updates(message as SyncGoalList)) as SyncGoalList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncGoalList create() => SyncGoalList._();
  SyncGoalList createEmptyInstance() => create();
  static $pb.PbList<SyncGoalList> createRepeated() => $pb.PbList<SyncGoalList>();
  @$core.pragma('dart2js:noInline')
  static SyncGoalList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncGoalList>(create);
  static SyncGoalList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncGoal> get list => $_getList(0);
}

