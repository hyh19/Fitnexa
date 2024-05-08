//
//  Generated code. Do not modify.
//  source: userinfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'userinfo.pbenum.dart';

export 'userinfo.pbenum.dart';

class protocol_personal_info extends $pb.GeneratedMessage {
  factory protocol_personal_info({
    $core.int? height,
    $core.int? weight,
    gender_type? gender,
    $core.int? year,
    $core.int? month,
    $core.int? day,
  }) {
    final $result = create();
    if (height != null) {
      $result.height = height;
    }
    if (weight != null) {
      $result.weight = weight;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (year != null) {
      $result.year = year;
    }
    if (month != null) {
      $result.month = month;
    }
    if (day != null) {
      $result.day = day;
    }
    return $result;
  }
  protocol_personal_info._() : super();
  factory protocol_personal_info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_personal_info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_personal_info', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.OU3)
    ..e<gender_type>(3, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: gender_type.GENDER_MALE, valueOf: gender_type.valueOf, enumValues: gender_type.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'day', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_personal_info clone() => protocol_personal_info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_personal_info copyWith(void Function(protocol_personal_info) updates) => super.copyWith((message) => updates(message as protocol_personal_info)) as protocol_personal_info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_personal_info create() => protocol_personal_info._();
  protocol_personal_info createEmptyInstance() => create();
  static $pb.PbList<protocol_personal_info> createRepeated() => $pb.PbList<protocol_personal_info>();
  @$core.pragma('dart2js:noInline')
  static protocol_personal_info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_personal_info>(create);
  static protocol_personal_info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get height => $_getIZ(0);
  @$pb.TagNumber(1)
  set height($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get weight => $_getIZ(1);
  @$pb.TagNumber(2)
  set weight($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => clearField(2);

  @$pb.TagNumber(3)
  gender_type get gender => $_getN(2);
  @$pb.TagNumber(3)
  set gender(gender_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get year => $_getIZ(3);
  @$pb.TagNumber(4)
  set year($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasYear() => $_has(3);
  @$pb.TagNumber(4)
  void clearYear() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get month => $_getIZ(4);
  @$pb.TagNumber(5)
  set month($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMonth() => $_has(4);
  @$pb.TagNumber(5)
  void clearMonth() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get day => $_getIZ(5);
  @$pb.TagNumber(6)
  set day($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDay() => $_has(5);
  @$pb.TagNumber(6)
  void clearDay() => clearField(6);
}

class protocol_perferences extends $pb.GeneratedMessage {
  factory protocol_perferences({
    $core.int? distUnit,
    $core.int? weightUnit,
    $core.int? airTempUnit,
    $core.int? skinTempUnit,
    $core.int? is12hourFormat,
    $core.int? weekStartDay,
    $core.int? calorieUnit,
    $core.int? swimPoolUnit,
    $core.int? cyclingUnit,
    $core.int? walkingRunningUnit,
    $core.int? strideUnit,
    $core.int? heightUnit,
    $core.int? altitudeUnit,
  }) {
    final $result = create();
    if (distUnit != null) {
      $result.distUnit = distUnit;
    }
    if (weightUnit != null) {
      $result.weightUnit = weightUnit;
    }
    if (airTempUnit != null) {
      $result.airTempUnit = airTempUnit;
    }
    if (skinTempUnit != null) {
      $result.skinTempUnit = skinTempUnit;
    }
    if (is12hourFormat != null) {
      $result.is12hourFormat = is12hourFormat;
    }
    if (weekStartDay != null) {
      $result.weekStartDay = weekStartDay;
    }
    if (calorieUnit != null) {
      $result.calorieUnit = calorieUnit;
    }
    if (swimPoolUnit != null) {
      $result.swimPoolUnit = swimPoolUnit;
    }
    if (cyclingUnit != null) {
      $result.cyclingUnit = cyclingUnit;
    }
    if (walkingRunningUnit != null) {
      $result.walkingRunningUnit = walkingRunningUnit;
    }
    if (strideUnit != null) {
      $result.strideUnit = strideUnit;
    }
    if (heightUnit != null) {
      $result.heightUnit = heightUnit;
    }
    if (altitudeUnit != null) {
      $result.altitudeUnit = altitudeUnit;
    }
    return $result;
  }
  protocol_perferences._() : super();
  factory protocol_perferences.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_perferences.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_perferences', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'distUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'weightUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'airTempUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'skinTempUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'is12hourFormat', $pb.PbFieldType.OU3, protoName: 'is_12hour_format')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'weekStartDay', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'calorieUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'swimPoolUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'cyclingUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'walkingRunningUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'strideUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'heightUnit', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'altitudeUnit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_perferences clone() => protocol_perferences()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_perferences copyWith(void Function(protocol_perferences) updates) => super.copyWith((message) => updates(message as protocol_perferences)) as protocol_perferences;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_perferences create() => protocol_perferences._();
  protocol_perferences createEmptyInstance() => create();
  static $pb.PbList<protocol_perferences> createRepeated() => $pb.PbList<protocol_perferences>();
  @$core.pragma('dart2js:noInline')
  static protocol_perferences getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_perferences>(create);
  static protocol_perferences? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get distUnit => $_getIZ(0);
  @$pb.TagNumber(1)
  set distUnit($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDistUnit() => $_has(0);
  @$pb.TagNumber(1)
  void clearDistUnit() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get weightUnit => $_getIZ(1);
  @$pb.TagNumber(2)
  set weightUnit($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeightUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeightUnit() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get airTempUnit => $_getIZ(2);
  @$pb.TagNumber(3)
  set airTempUnit($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAirTempUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearAirTempUnit() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get skinTempUnit => $_getIZ(3);
  @$pb.TagNumber(4)
  set skinTempUnit($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSkinTempUnit() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkinTempUnit() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get is12hourFormat => $_getIZ(4);
  @$pb.TagNumber(5)
  set is12hourFormat($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIs12hourFormat() => $_has(4);
  @$pb.TagNumber(5)
  void clearIs12hourFormat() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get weekStartDay => $_getIZ(5);
  @$pb.TagNumber(6)
  set weekStartDay($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWeekStartDay() => $_has(5);
  @$pb.TagNumber(6)
  void clearWeekStartDay() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get calorieUnit => $_getIZ(6);
  @$pb.TagNumber(7)
  set calorieUnit($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCalorieUnit() => $_has(6);
  @$pb.TagNumber(7)
  void clearCalorieUnit() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get swimPoolUnit => $_getIZ(7);
  @$pb.TagNumber(8)
  set swimPoolUnit($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSwimPoolUnit() => $_has(7);
  @$pb.TagNumber(8)
  void clearSwimPoolUnit() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get cyclingUnit => $_getIZ(8);
  @$pb.TagNumber(9)
  set cyclingUnit($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCyclingUnit() => $_has(8);
  @$pb.TagNumber(9)
  void clearCyclingUnit() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get walkingRunningUnit => $_getIZ(9);
  @$pb.TagNumber(10)
  set walkingRunningUnit($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasWalkingRunningUnit() => $_has(9);
  @$pb.TagNumber(10)
  void clearWalkingRunningUnit() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get strideUnit => $_getIZ(10);
  @$pb.TagNumber(11)
  set strideUnit($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStrideUnit() => $_has(10);
  @$pb.TagNumber(11)
  void clearStrideUnit() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get heightUnit => $_getIZ(11);
  @$pb.TagNumber(12)
  set heightUnit($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasHeightUnit() => $_has(11);
  @$pb.TagNumber(12)
  void clearHeightUnit() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get altitudeUnit => $_getIZ(12);
  @$pb.TagNumber(13)
  set altitudeUnit($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAltitudeUnit() => $_has(12);
  @$pb.TagNumber(13)
  void clearAltitudeUnit() => clearField(13);
}

class protocol_goal_setting extends $pb.GeneratedMessage {
  factory protocol_goal_setting({
    $core.int? exerciseMin,
    $core.int? standingHour,
    $core.int? kcal,
    $core.int? steps,
    $core.int? distance,
    $core.int? workoutDay,
    $core.bool? notifySwitchFlag,
    notify_type? notifyFlag,
  }) {
    final $result = create();
    if (exerciseMin != null) {
      $result.exerciseMin = exerciseMin;
    }
    if (standingHour != null) {
      $result.standingHour = standingHour;
    }
    if (kcal != null) {
      $result.kcal = kcal;
    }
    if (steps != null) {
      $result.steps = steps;
    }
    if (distance != null) {
      $result.distance = distance;
    }
    if (workoutDay != null) {
      $result.workoutDay = workoutDay;
    }
    if (notifySwitchFlag != null) {
      $result.notifySwitchFlag = notifySwitchFlag;
    }
    if (notifyFlag != null) {
      $result.notifyFlag = notifyFlag;
    }
    return $result;
  }
  protocol_goal_setting._() : super();
  factory protocol_goal_setting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_goal_setting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_goal_setting', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'exerciseMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'standingHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'kcal', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'steps', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'distance', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'workoutDay', $pb.PbFieldType.OU3)
    ..aOB(7, _omitFieldNames ? '' : 'notifySwitchFlag')
    ..e<notify_type>(8, _omitFieldNames ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_goal_setting clone() => protocol_goal_setting()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_goal_setting copyWith(void Function(protocol_goal_setting) updates) => super.copyWith((message) => updates(message as protocol_goal_setting)) as protocol_goal_setting;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_goal_setting create() => protocol_goal_setting._();
  protocol_goal_setting createEmptyInstance() => create();
  static $pb.PbList<protocol_goal_setting> createRepeated() => $pb.PbList<protocol_goal_setting>();
  @$core.pragma('dart2js:noInline')
  static protocol_goal_setting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_goal_setting>(create);
  static protocol_goal_setting? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get exerciseMin => $_getIZ(0);
  @$pb.TagNumber(1)
  set exerciseMin($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExerciseMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearExerciseMin() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get standingHour => $_getIZ(1);
  @$pb.TagNumber(2)
  set standingHour($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStandingHour() => $_has(1);
  @$pb.TagNumber(2)
  void clearStandingHour() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get kcal => $_getIZ(2);
  @$pb.TagNumber(3)
  set kcal($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKcal() => $_has(2);
  @$pb.TagNumber(3)
  void clearKcal() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get steps => $_getIZ(3);
  @$pb.TagNumber(4)
  set steps($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSteps() => $_has(3);
  @$pb.TagNumber(4)
  void clearSteps() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get distance => $_getIZ(4);
  @$pb.TagNumber(5)
  set distance($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearDistance() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get workoutDay => $_getIZ(5);
  @$pb.TagNumber(6)
  set workoutDay($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWorkoutDay() => $_has(5);
  @$pb.TagNumber(6)
  void clearWorkoutDay() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get notifySwitchFlag => $_getBF(6);
  @$pb.TagNumber(7)
  set notifySwitchFlag($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNotifySwitchFlag() => $_has(6);
  @$pb.TagNumber(7)
  void clearNotifySwitchFlag() => clearField(7);

  @$pb.TagNumber(8)
  notify_type get notifyFlag => $_getN(7);
  @$pb.TagNumber(8)
  set notifyFlag(notify_type v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasNotifyFlag() => $_has(7);
  @$pb.TagNumber(8)
  void clearNotifyFlag() => clearField(8);
}

class protocol_user_info_operate extends $pb.GeneratedMessage {
  factory protocol_user_info_operate({
    operate_type? operate,
    protocol_personal_info? personalInfo,
    protocol_perferences? perferences,
    protocol_goal_setting? goalSetting,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (personalInfo != null) {
      $result.personalInfo = personalInfo;
    }
    if (perferences != null) {
      $result.perferences = perferences;
    }
    if (goalSetting != null) {
      $result.goalSetting = goalSetting;
    }
    return $result;
  }
  protocol_user_info_operate._() : super();
  factory protocol_user_info_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_user_info_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_user_info_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_personal_info>(2, _omitFieldNames ? '' : 'personalInfo', subBuilder: protocol_personal_info.create)
    ..aOM<protocol_perferences>(3, _omitFieldNames ? '' : 'perferences', subBuilder: protocol_perferences.create)
    ..aOM<protocol_goal_setting>(4, _omitFieldNames ? '' : 'goalSetting', subBuilder: protocol_goal_setting.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_user_info_operate clone() => protocol_user_info_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_user_info_operate copyWith(void Function(protocol_user_info_operate) updates) => super.copyWith((message) => updates(message as protocol_user_info_operate)) as protocol_user_info_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_user_info_operate create() => protocol_user_info_operate._();
  protocol_user_info_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_user_info_operate> createRepeated() => $pb.PbList<protocol_user_info_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_user_info_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_user_info_operate>(create);
  static protocol_user_info_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  protocol_personal_info get personalInfo => $_getN(1);
  @$pb.TagNumber(2)
  set personalInfo(protocol_personal_info v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPersonalInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearPersonalInfo() => clearField(2);
  @$pb.TagNumber(2)
  protocol_personal_info ensurePersonalInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  protocol_perferences get perferences => $_getN(2);
  @$pb.TagNumber(3)
  set perferences(protocol_perferences v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPerferences() => $_has(2);
  @$pb.TagNumber(3)
  void clearPerferences() => clearField(3);
  @$pb.TagNumber(3)
  protocol_perferences ensurePerferences() => $_ensure(2);

  @$pb.TagNumber(4)
  protocol_goal_setting get goalSetting => $_getN(3);
  @$pb.TagNumber(4)
  set goalSetting(protocol_goal_setting v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGoalSetting() => $_has(3);
  @$pb.TagNumber(4)
  void clearGoalSetting() => clearField(4);
  @$pb.TagNumber(4)
  protocol_goal_setting ensureGoalSetting() => $_ensure(3);
}

class protocol_user_info_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_user_info_inquire_reply({
    $core.int? funcTable,
    operate_type? operate,
    protocol_personal_info? personalInfo,
    protocol_perferences? perferences,
    protocol_goal_setting? goalSetting,
  }) {
    final $result = create();
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (operate != null) {
      $result.operate = operate;
    }
    if (personalInfo != null) {
      $result.personalInfo = personalInfo;
    }
    if (perferences != null) {
      $result.perferences = perferences;
    }
    if (goalSetting != null) {
      $result.goalSetting = goalSetting;
    }
    return $result;
  }
  protocol_user_info_inquire_reply._() : super();
  factory protocol_user_info_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_user_info_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_user_info_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_type>(2, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_personal_info>(3, _omitFieldNames ? '' : 'personalInfo', subBuilder: protocol_personal_info.create)
    ..aOM<protocol_perferences>(4, _omitFieldNames ? '' : 'perferences', subBuilder: protocol_perferences.create)
    ..aOM<protocol_goal_setting>(5, _omitFieldNames ? '' : 'goalSetting', subBuilder: protocol_goal_setting.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_user_info_inquire_reply clone() => protocol_user_info_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_user_info_inquire_reply copyWith(void Function(protocol_user_info_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_user_info_inquire_reply)) as protocol_user_info_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_user_info_inquire_reply create() => protocol_user_info_inquire_reply._();
  protocol_user_info_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_user_info_inquire_reply> createRepeated() => $pb.PbList<protocol_user_info_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_user_info_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_user_info_inquire_reply>(create);
  static protocol_user_info_inquire_reply? _defaultInstance;

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
  protocol_personal_info get personalInfo => $_getN(2);
  @$pb.TagNumber(3)
  set personalInfo(protocol_personal_info v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPersonalInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearPersonalInfo() => clearField(3);
  @$pb.TagNumber(3)
  protocol_personal_info ensurePersonalInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  protocol_perferences get perferences => $_getN(3);
  @$pb.TagNumber(4)
  set perferences(protocol_perferences v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPerferences() => $_has(3);
  @$pb.TagNumber(4)
  void clearPerferences() => clearField(4);
  @$pb.TagNumber(4)
  protocol_perferences ensurePerferences() => $_ensure(3);

  @$pb.TagNumber(5)
  protocol_goal_setting get goalSetting => $_getN(4);
  @$pb.TagNumber(5)
  set goalSetting(protocol_goal_setting v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGoalSetting() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoalSetting() => clearField(5);
  @$pb.TagNumber(5)
  protocol_goal_setting ensureGoalSetting() => $_ensure(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
