//
//  Generated code. Do not modify.
//  source: SyncSport.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncSport extends $pb.GeneratedMessage {
  factory SyncSport({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? startTime,
    $core.String? endTime,
    $core.int? isConnectApp,
    $core.int? sportType,
    $core.int? sportInitiator,
    $core.int? sportDuration,
    $core.int? sportGoalType,
    $core.int? sportGoalValue,
    $core.int? hrAverage,
    $core.int? hrMax,
    $core.int? hrMin,
    $core.int? warmUpDuration,
    $core.int? fatBurningDuration,
    $core.int? aerobicExerciseDuration,
    $core.int? anaerobicExerciseDuration,
    $core.int? extremeExerciseDuration,
    $core.int? totalStep,
    $core.int? totalCalories,
    $core.int? totalDistance,
    $core.int? swimDistance,
    $core.int? kmPaceAverage,
    $core.int? kmPaceFast,
    $core.int? speedAverage,
    $core.int? speedFast,
    $core.int? stepFrequencyAverage,
    $core.int? stepFrequencyMax,
    $core.int? stepStrideAverage,
    $core.int? stepStrideMax,
    $core.int? altitudeMax,
    $core.int? altitudeMin,
    $core.int? altitudeAverage,
    $core.int? altitudeRise,
    $core.int? trainScore,
    $core.int? vo2Max,
    $core.int? vo2Grade,
    $core.int? recoveryDuration,
    $core.int? mets,
    $core.int? hrCount,
    $core.int? kmSpeedCount,
    $core.int? kmPaceCount,
    $core.int? stepFrequencyCount,
    $core.int? stepStrideCount,
    $core.int? sportTrackCount,
    $core.String? hrDatas,
    $core.String? kmSpeedDatas,
    $core.String? kmPaceDatas,
    $core.String? stepFrequencyDatas,
    $core.String? stepStrideDatas,
    $core.String? sportTrackDatas,
    $core.String? miSpeedDatas,
    $core.String? miPaceDatas,
    $core.String? altitudeDatas,
    $fixnum.Int64? id,
    $core.int? power,
    $core.int? isSupportPower,
    $core.int? isSupportMets,
    $core.int? isSupportAltitude,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (macId != null) {
      $result.macId = macId;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (isConnectApp != null) {
      $result.isConnectApp = isConnectApp;
    }
    if (sportType != null) {
      $result.sportType = sportType;
    }
    if (sportInitiator != null) {
      $result.sportInitiator = sportInitiator;
    }
    if (sportDuration != null) {
      $result.sportDuration = sportDuration;
    }
    if (sportGoalType != null) {
      $result.sportGoalType = sportGoalType;
    }
    if (sportGoalValue != null) {
      $result.sportGoalValue = sportGoalValue;
    }
    if (hrAverage != null) {
      $result.hrAverage = hrAverage;
    }
    if (hrMax != null) {
      $result.hrMax = hrMax;
    }
    if (hrMin != null) {
      $result.hrMin = hrMin;
    }
    if (warmUpDuration != null) {
      $result.warmUpDuration = warmUpDuration;
    }
    if (fatBurningDuration != null) {
      $result.fatBurningDuration = fatBurningDuration;
    }
    if (aerobicExerciseDuration != null) {
      $result.aerobicExerciseDuration = aerobicExerciseDuration;
    }
    if (anaerobicExerciseDuration != null) {
      $result.anaerobicExerciseDuration = anaerobicExerciseDuration;
    }
    if (extremeExerciseDuration != null) {
      $result.extremeExerciseDuration = extremeExerciseDuration;
    }
    if (totalStep != null) {
      $result.totalStep = totalStep;
    }
    if (totalCalories != null) {
      $result.totalCalories = totalCalories;
    }
    if (totalDistance != null) {
      $result.totalDistance = totalDistance;
    }
    if (swimDistance != null) {
      $result.swimDistance = swimDistance;
    }
    if (kmPaceAverage != null) {
      $result.kmPaceAverage = kmPaceAverage;
    }
    if (kmPaceFast != null) {
      $result.kmPaceFast = kmPaceFast;
    }
    if (speedAverage != null) {
      $result.speedAverage = speedAverage;
    }
    if (speedFast != null) {
      $result.speedFast = speedFast;
    }
    if (stepFrequencyAverage != null) {
      $result.stepFrequencyAverage = stepFrequencyAverage;
    }
    if (stepFrequencyMax != null) {
      $result.stepFrequencyMax = stepFrequencyMax;
    }
    if (stepStrideAverage != null) {
      $result.stepStrideAverage = stepStrideAverage;
    }
    if (stepStrideMax != null) {
      $result.stepStrideMax = stepStrideMax;
    }
    if (altitudeMax != null) {
      $result.altitudeMax = altitudeMax;
    }
    if (altitudeMin != null) {
      $result.altitudeMin = altitudeMin;
    }
    if (altitudeAverage != null) {
      $result.altitudeAverage = altitudeAverage;
    }
    if (altitudeRise != null) {
      $result.altitudeRise = altitudeRise;
    }
    if (trainScore != null) {
      $result.trainScore = trainScore;
    }
    if (vo2Max != null) {
      $result.vo2Max = vo2Max;
    }
    if (vo2Grade != null) {
      $result.vo2Grade = vo2Grade;
    }
    if (recoveryDuration != null) {
      $result.recoveryDuration = recoveryDuration;
    }
    if (mets != null) {
      $result.mets = mets;
    }
    if (hrCount != null) {
      $result.hrCount = hrCount;
    }
    if (kmSpeedCount != null) {
      $result.kmSpeedCount = kmSpeedCount;
    }
    if (kmPaceCount != null) {
      $result.kmPaceCount = kmPaceCount;
    }
    if (stepFrequencyCount != null) {
      $result.stepFrequencyCount = stepFrequencyCount;
    }
    if (stepStrideCount != null) {
      $result.stepStrideCount = stepStrideCount;
    }
    if (sportTrackCount != null) {
      $result.sportTrackCount = sportTrackCount;
    }
    if (hrDatas != null) {
      $result.hrDatas = hrDatas;
    }
    if (kmSpeedDatas != null) {
      $result.kmSpeedDatas = kmSpeedDatas;
    }
    if (kmPaceDatas != null) {
      $result.kmPaceDatas = kmPaceDatas;
    }
    if (stepFrequencyDatas != null) {
      $result.stepFrequencyDatas = stepFrequencyDatas;
    }
    if (stepStrideDatas != null) {
      $result.stepStrideDatas = stepStrideDatas;
    }
    if (sportTrackDatas != null) {
      $result.sportTrackDatas = sportTrackDatas;
    }
    if (miSpeedDatas != null) {
      $result.miSpeedDatas = miSpeedDatas;
    }
    if (miPaceDatas != null) {
      $result.miPaceDatas = miPaceDatas;
    }
    if (altitudeDatas != null) {
      $result.altitudeDatas = altitudeDatas;
    }
    if (id != null) {
      $result.id = id;
    }
    if (power != null) {
      $result.power = power;
    }
    if (isSupportPower != null) {
      $result.isSupportPower = isSupportPower;
    }
    if (isSupportMets != null) {
      $result.isSupportMets = isSupportMets;
    }
    if (isSupportAltitude != null) {
      $result.isSupportAltitude = isSupportAltitude;
    }
    return $result;
  }
  SyncSport._() : super();
  factory SyncSport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncSport', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'macId')
    ..aOS(3, _omitFieldNames ? '' : 'startTime')
    ..aOS(4, _omitFieldNames ? '' : 'endTime')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'isConnectApp', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'sportType', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'sportInitiator', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'sportDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'sportGoalType', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'sportGoalValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'hrAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'hrMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'hrMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'warmUpDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'fatBurningDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'aerobicExerciseDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'anaerobicExerciseDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, _omitFieldNames ? '' : 'extremeExerciseDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'totalStep', $pb.PbFieldType.OU3)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'totalCalories', $pb.PbFieldType.OU3)
    ..a<$core.int>(21, _omitFieldNames ? '' : 'totalDistance', $pb.PbFieldType.OU3)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'swimDistance', $pb.PbFieldType.OU3)
    ..a<$core.int>(23, _omitFieldNames ? '' : 'kmPaceAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(24, _omitFieldNames ? '' : 'kmPaceFast', $pb.PbFieldType.OU3)
    ..a<$core.int>(25, _omitFieldNames ? '' : 'speedAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(26, _omitFieldNames ? '' : 'speedFast', $pb.PbFieldType.OU3)
    ..a<$core.int>(27, _omitFieldNames ? '' : 'stepFrequencyAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(28, _omitFieldNames ? '' : 'stepFrequencyMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(29, _omitFieldNames ? '' : 'stepStrideAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(30, _omitFieldNames ? '' : 'stepStrideMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(31, _omitFieldNames ? '' : 'altitudeMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(32, _omitFieldNames ? '' : 'altitudeMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(33, _omitFieldNames ? '' : 'altitudeAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(34, _omitFieldNames ? '' : 'altitudeRise', $pb.PbFieldType.OU3)
    ..a<$core.int>(35, _omitFieldNames ? '' : 'trainScore', $pb.PbFieldType.OU3)
    ..a<$core.int>(36, _omitFieldNames ? '' : 'vo2Max', $pb.PbFieldType.OU3)
    ..a<$core.int>(37, _omitFieldNames ? '' : 'vo2Grade', $pb.PbFieldType.OU3)
    ..a<$core.int>(38, _omitFieldNames ? '' : 'recoveryDuration', $pb.PbFieldType.OU3)
    ..a<$core.int>(39, _omitFieldNames ? '' : 'mets', $pb.PbFieldType.OU3)
    ..a<$core.int>(40, _omitFieldNames ? '' : 'hrCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(41, _omitFieldNames ? '' : 'kmSpeedCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(42, _omitFieldNames ? '' : 'kmPaceCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(43, _omitFieldNames ? '' : 'stepFrequencyCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(44, _omitFieldNames ? '' : 'stepStrideCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(45, _omitFieldNames ? '' : 'sportTrackCount', $pb.PbFieldType.OU3)
    ..aOS(46, _omitFieldNames ? '' : 'hrDatas')
    ..aOS(47, _omitFieldNames ? '' : 'kmSpeedDatas')
    ..aOS(48, _omitFieldNames ? '' : 'kmPaceDatas')
    ..aOS(49, _omitFieldNames ? '' : 'stepFrequencyDatas')
    ..aOS(50, _omitFieldNames ? '' : 'stepStrideDatas')
    ..aOS(51, _omitFieldNames ? '' : 'sportTrackDatas')
    ..aOS(52, _omitFieldNames ? '' : 'miSpeedDatas')
    ..aOS(53, _omitFieldNames ? '' : 'miPaceDatas')
    ..aOS(54, _omitFieldNames ? '' : 'altitudeDatas')
    ..a<$fixnum.Int64>(55, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(56, _omitFieldNames ? '' : 'power', $pb.PbFieldType.OU3)
    ..a<$core.int>(57, _omitFieldNames ? '' : 'isSupportPower', $pb.PbFieldType.OU3)
    ..a<$core.int>(58, _omitFieldNames ? '' : 'isSupportMets', $pb.PbFieldType.OU3)
    ..a<$core.int>(59, _omitFieldNames ? '' : 'isSupportAltitude', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSport clone() => SyncSport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSport copyWith(void Function(SyncSport) updates) => super.copyWith((message) => updates(message as SyncSport)) as SyncSport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncSport create() => SyncSport._();
  SyncSport createEmptyInstance() => create();
  static $pb.PbList<SyncSport> createRepeated() => $pb.PbList<SyncSport>();
  @$core.pragma('dart2js:noInline')
  static SyncSport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSport>(create);
  static SyncSport? _defaultInstance;

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
  $core.String get startTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set startTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get endTime => $_getSZ(3);
  @$pb.TagNumber(4)
  set endTime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get isConnectApp => $_getIZ(4);
  @$pb.TagNumber(5)
  set isConnectApp($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsConnectApp() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsConnectApp() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get sportType => $_getIZ(5);
  @$pb.TagNumber(6)
  set sportType($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSportType() => $_has(5);
  @$pb.TagNumber(6)
  void clearSportType() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get sportInitiator => $_getIZ(6);
  @$pb.TagNumber(7)
  set sportInitiator($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSportInitiator() => $_has(6);
  @$pb.TagNumber(7)
  void clearSportInitiator() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get sportDuration => $_getIZ(7);
  @$pb.TagNumber(8)
  set sportDuration($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSportDuration() => $_has(7);
  @$pb.TagNumber(8)
  void clearSportDuration() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get sportGoalType => $_getIZ(8);
  @$pb.TagNumber(9)
  set sportGoalType($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSportGoalType() => $_has(8);
  @$pb.TagNumber(9)
  void clearSportGoalType() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get sportGoalValue => $_getIZ(9);
  @$pb.TagNumber(10)
  set sportGoalValue($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSportGoalValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearSportGoalValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get hrAverage => $_getIZ(10);
  @$pb.TagNumber(11)
  set hrAverage($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasHrAverage() => $_has(10);
  @$pb.TagNumber(11)
  void clearHrAverage() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get hrMax => $_getIZ(11);
  @$pb.TagNumber(12)
  set hrMax($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasHrMax() => $_has(11);
  @$pb.TagNumber(12)
  void clearHrMax() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get hrMin => $_getIZ(12);
  @$pb.TagNumber(13)
  set hrMin($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasHrMin() => $_has(12);
  @$pb.TagNumber(13)
  void clearHrMin() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get warmUpDuration => $_getIZ(13);
  @$pb.TagNumber(14)
  set warmUpDuration($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasWarmUpDuration() => $_has(13);
  @$pb.TagNumber(14)
  void clearWarmUpDuration() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get fatBurningDuration => $_getIZ(14);
  @$pb.TagNumber(15)
  set fatBurningDuration($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFatBurningDuration() => $_has(14);
  @$pb.TagNumber(15)
  void clearFatBurningDuration() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get aerobicExerciseDuration => $_getIZ(15);
  @$pb.TagNumber(16)
  set aerobicExerciseDuration($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAerobicExerciseDuration() => $_has(15);
  @$pb.TagNumber(16)
  void clearAerobicExerciseDuration() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get anaerobicExerciseDuration => $_getIZ(16);
  @$pb.TagNumber(17)
  set anaerobicExerciseDuration($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasAnaerobicExerciseDuration() => $_has(16);
  @$pb.TagNumber(17)
  void clearAnaerobicExerciseDuration() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get extremeExerciseDuration => $_getIZ(17);
  @$pb.TagNumber(18)
  set extremeExerciseDuration($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasExtremeExerciseDuration() => $_has(17);
  @$pb.TagNumber(18)
  void clearExtremeExerciseDuration() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get totalStep => $_getIZ(18);
  @$pb.TagNumber(19)
  set totalStep($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasTotalStep() => $_has(18);
  @$pb.TagNumber(19)
  void clearTotalStep() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get totalCalories => $_getIZ(19);
  @$pb.TagNumber(20)
  set totalCalories($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasTotalCalories() => $_has(19);
  @$pb.TagNumber(20)
  void clearTotalCalories() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get totalDistance => $_getIZ(20);
  @$pb.TagNumber(21)
  set totalDistance($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasTotalDistance() => $_has(20);
  @$pb.TagNumber(21)
  void clearTotalDistance() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get swimDistance => $_getIZ(21);
  @$pb.TagNumber(22)
  set swimDistance($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasSwimDistance() => $_has(21);
  @$pb.TagNumber(22)
  void clearSwimDistance() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get kmPaceAverage => $_getIZ(22);
  @$pb.TagNumber(23)
  set kmPaceAverage($core.int v) { $_setUnsignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasKmPaceAverage() => $_has(22);
  @$pb.TagNumber(23)
  void clearKmPaceAverage() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get kmPaceFast => $_getIZ(23);
  @$pb.TagNumber(24)
  set kmPaceFast($core.int v) { $_setUnsignedInt32(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasKmPaceFast() => $_has(23);
  @$pb.TagNumber(24)
  void clearKmPaceFast() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get speedAverage => $_getIZ(24);
  @$pb.TagNumber(25)
  set speedAverage($core.int v) { $_setUnsignedInt32(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasSpeedAverage() => $_has(24);
  @$pb.TagNumber(25)
  void clearSpeedAverage() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get speedFast => $_getIZ(25);
  @$pb.TagNumber(26)
  set speedFast($core.int v) { $_setUnsignedInt32(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasSpeedFast() => $_has(25);
  @$pb.TagNumber(26)
  void clearSpeedFast() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get stepFrequencyAverage => $_getIZ(26);
  @$pb.TagNumber(27)
  set stepFrequencyAverage($core.int v) { $_setUnsignedInt32(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasStepFrequencyAverage() => $_has(26);
  @$pb.TagNumber(27)
  void clearStepFrequencyAverage() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get stepFrequencyMax => $_getIZ(27);
  @$pb.TagNumber(28)
  set stepFrequencyMax($core.int v) { $_setUnsignedInt32(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasStepFrequencyMax() => $_has(27);
  @$pb.TagNumber(28)
  void clearStepFrequencyMax() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get stepStrideAverage => $_getIZ(28);
  @$pb.TagNumber(29)
  set stepStrideAverage($core.int v) { $_setUnsignedInt32(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasStepStrideAverage() => $_has(28);
  @$pb.TagNumber(29)
  void clearStepStrideAverage() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get stepStrideMax => $_getIZ(29);
  @$pb.TagNumber(30)
  set stepStrideMax($core.int v) { $_setUnsignedInt32(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasStepStrideMax() => $_has(29);
  @$pb.TagNumber(30)
  void clearStepStrideMax() => clearField(30);

  @$pb.TagNumber(31)
  $core.int get altitudeMax => $_getIZ(30);
  @$pb.TagNumber(31)
  set altitudeMax($core.int v) { $_setUnsignedInt32(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasAltitudeMax() => $_has(30);
  @$pb.TagNumber(31)
  void clearAltitudeMax() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get altitudeMin => $_getIZ(31);
  @$pb.TagNumber(32)
  set altitudeMin($core.int v) { $_setUnsignedInt32(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasAltitudeMin() => $_has(31);
  @$pb.TagNumber(32)
  void clearAltitudeMin() => clearField(32);

  @$pb.TagNumber(33)
  $core.int get altitudeAverage => $_getIZ(32);
  @$pb.TagNumber(33)
  set altitudeAverage($core.int v) { $_setUnsignedInt32(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasAltitudeAverage() => $_has(32);
  @$pb.TagNumber(33)
  void clearAltitudeAverage() => clearField(33);

  @$pb.TagNumber(34)
  $core.int get altitudeRise => $_getIZ(33);
  @$pb.TagNumber(34)
  set altitudeRise($core.int v) { $_setUnsignedInt32(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasAltitudeRise() => $_has(33);
  @$pb.TagNumber(34)
  void clearAltitudeRise() => clearField(34);

  @$pb.TagNumber(35)
  $core.int get trainScore => $_getIZ(34);
  @$pb.TagNumber(35)
  set trainScore($core.int v) { $_setUnsignedInt32(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasTrainScore() => $_has(34);
  @$pb.TagNumber(35)
  void clearTrainScore() => clearField(35);

  @$pb.TagNumber(36)
  $core.int get vo2Max => $_getIZ(35);
  @$pb.TagNumber(36)
  set vo2Max($core.int v) { $_setUnsignedInt32(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasVo2Max() => $_has(35);
  @$pb.TagNumber(36)
  void clearVo2Max() => clearField(36);

  @$pb.TagNumber(37)
  $core.int get vo2Grade => $_getIZ(36);
  @$pb.TagNumber(37)
  set vo2Grade($core.int v) { $_setUnsignedInt32(36, v); }
  @$pb.TagNumber(37)
  $core.bool hasVo2Grade() => $_has(36);
  @$pb.TagNumber(37)
  void clearVo2Grade() => clearField(37);

  @$pb.TagNumber(38)
  $core.int get recoveryDuration => $_getIZ(37);
  @$pb.TagNumber(38)
  set recoveryDuration($core.int v) { $_setUnsignedInt32(37, v); }
  @$pb.TagNumber(38)
  $core.bool hasRecoveryDuration() => $_has(37);
  @$pb.TagNumber(38)
  void clearRecoveryDuration() => clearField(38);

  @$pb.TagNumber(39)
  $core.int get mets => $_getIZ(38);
  @$pb.TagNumber(39)
  set mets($core.int v) { $_setUnsignedInt32(38, v); }
  @$pb.TagNumber(39)
  $core.bool hasMets() => $_has(38);
  @$pb.TagNumber(39)
  void clearMets() => clearField(39);

  @$pb.TagNumber(40)
  $core.int get hrCount => $_getIZ(39);
  @$pb.TagNumber(40)
  set hrCount($core.int v) { $_setUnsignedInt32(39, v); }
  @$pb.TagNumber(40)
  $core.bool hasHrCount() => $_has(39);
  @$pb.TagNumber(40)
  void clearHrCount() => clearField(40);

  @$pb.TagNumber(41)
  $core.int get kmSpeedCount => $_getIZ(40);
  @$pb.TagNumber(41)
  set kmSpeedCount($core.int v) { $_setUnsignedInt32(40, v); }
  @$pb.TagNumber(41)
  $core.bool hasKmSpeedCount() => $_has(40);
  @$pb.TagNumber(41)
  void clearKmSpeedCount() => clearField(41);

  @$pb.TagNumber(42)
  $core.int get kmPaceCount => $_getIZ(41);
  @$pb.TagNumber(42)
  set kmPaceCount($core.int v) { $_setUnsignedInt32(41, v); }
  @$pb.TagNumber(42)
  $core.bool hasKmPaceCount() => $_has(41);
  @$pb.TagNumber(42)
  void clearKmPaceCount() => clearField(42);

  @$pb.TagNumber(43)
  $core.int get stepFrequencyCount => $_getIZ(42);
  @$pb.TagNumber(43)
  set stepFrequencyCount($core.int v) { $_setUnsignedInt32(42, v); }
  @$pb.TagNumber(43)
  $core.bool hasStepFrequencyCount() => $_has(42);
  @$pb.TagNumber(43)
  void clearStepFrequencyCount() => clearField(43);

  @$pb.TagNumber(44)
  $core.int get stepStrideCount => $_getIZ(43);
  @$pb.TagNumber(44)
  set stepStrideCount($core.int v) { $_setUnsignedInt32(43, v); }
  @$pb.TagNumber(44)
  $core.bool hasStepStrideCount() => $_has(43);
  @$pb.TagNumber(44)
  void clearStepStrideCount() => clearField(44);

  @$pb.TagNumber(45)
  $core.int get sportTrackCount => $_getIZ(44);
  @$pb.TagNumber(45)
  set sportTrackCount($core.int v) { $_setUnsignedInt32(44, v); }
  @$pb.TagNumber(45)
  $core.bool hasSportTrackCount() => $_has(44);
  @$pb.TagNumber(45)
  void clearSportTrackCount() => clearField(45);

  @$pb.TagNumber(46)
  $core.String get hrDatas => $_getSZ(45);
  @$pb.TagNumber(46)
  set hrDatas($core.String v) { $_setString(45, v); }
  @$pb.TagNumber(46)
  $core.bool hasHrDatas() => $_has(45);
  @$pb.TagNumber(46)
  void clearHrDatas() => clearField(46);

  @$pb.TagNumber(47)
  $core.String get kmSpeedDatas => $_getSZ(46);
  @$pb.TagNumber(47)
  set kmSpeedDatas($core.String v) { $_setString(46, v); }
  @$pb.TagNumber(47)
  $core.bool hasKmSpeedDatas() => $_has(46);
  @$pb.TagNumber(47)
  void clearKmSpeedDatas() => clearField(47);

  @$pb.TagNumber(48)
  $core.String get kmPaceDatas => $_getSZ(47);
  @$pb.TagNumber(48)
  set kmPaceDatas($core.String v) { $_setString(47, v); }
  @$pb.TagNumber(48)
  $core.bool hasKmPaceDatas() => $_has(47);
  @$pb.TagNumber(48)
  void clearKmPaceDatas() => clearField(48);

  @$pb.TagNumber(49)
  $core.String get stepFrequencyDatas => $_getSZ(48);
  @$pb.TagNumber(49)
  set stepFrequencyDatas($core.String v) { $_setString(48, v); }
  @$pb.TagNumber(49)
  $core.bool hasStepFrequencyDatas() => $_has(48);
  @$pb.TagNumber(49)
  void clearStepFrequencyDatas() => clearField(49);

  @$pb.TagNumber(50)
  $core.String get stepStrideDatas => $_getSZ(49);
  @$pb.TagNumber(50)
  set stepStrideDatas($core.String v) { $_setString(49, v); }
  @$pb.TagNumber(50)
  $core.bool hasStepStrideDatas() => $_has(49);
  @$pb.TagNumber(50)
  void clearStepStrideDatas() => clearField(50);

  @$pb.TagNumber(51)
  $core.String get sportTrackDatas => $_getSZ(50);
  @$pb.TagNumber(51)
  set sportTrackDatas($core.String v) { $_setString(50, v); }
  @$pb.TagNumber(51)
  $core.bool hasSportTrackDatas() => $_has(50);
  @$pb.TagNumber(51)
  void clearSportTrackDatas() => clearField(51);

  @$pb.TagNumber(52)
  $core.String get miSpeedDatas => $_getSZ(51);
  @$pb.TagNumber(52)
  set miSpeedDatas($core.String v) { $_setString(51, v); }
  @$pb.TagNumber(52)
  $core.bool hasMiSpeedDatas() => $_has(51);
  @$pb.TagNumber(52)
  void clearMiSpeedDatas() => clearField(52);

  @$pb.TagNumber(53)
  $core.String get miPaceDatas => $_getSZ(52);
  @$pb.TagNumber(53)
  set miPaceDatas($core.String v) { $_setString(52, v); }
  @$pb.TagNumber(53)
  $core.bool hasMiPaceDatas() => $_has(52);
  @$pb.TagNumber(53)
  void clearMiPaceDatas() => clearField(53);

  @$pb.TagNumber(54)
  $core.String get altitudeDatas => $_getSZ(53);
  @$pb.TagNumber(54)
  set altitudeDatas($core.String v) { $_setString(53, v); }
  @$pb.TagNumber(54)
  $core.bool hasAltitudeDatas() => $_has(53);
  @$pb.TagNumber(54)
  void clearAltitudeDatas() => clearField(54);

  @$pb.TagNumber(55)
  $fixnum.Int64 get id => $_getI64(54);
  @$pb.TagNumber(55)
  set id($fixnum.Int64 v) { $_setInt64(54, v); }
  @$pb.TagNumber(55)
  $core.bool hasId() => $_has(54);
  @$pb.TagNumber(55)
  void clearId() => clearField(55);

  @$pb.TagNumber(56)
  $core.int get power => $_getIZ(55);
  @$pb.TagNumber(56)
  set power($core.int v) { $_setUnsignedInt32(55, v); }
  @$pb.TagNumber(56)
  $core.bool hasPower() => $_has(55);
  @$pb.TagNumber(56)
  void clearPower() => clearField(56);

  @$pb.TagNumber(57)
  $core.int get isSupportPower => $_getIZ(56);
  @$pb.TagNumber(57)
  set isSupportPower($core.int v) { $_setUnsignedInt32(56, v); }
  @$pb.TagNumber(57)
  $core.bool hasIsSupportPower() => $_has(56);
  @$pb.TagNumber(57)
  void clearIsSupportPower() => clearField(57);

  @$pb.TagNumber(58)
  $core.int get isSupportMets => $_getIZ(57);
  @$pb.TagNumber(58)
  set isSupportMets($core.int v) { $_setUnsignedInt32(57, v); }
  @$pb.TagNumber(58)
  $core.bool hasIsSupportMets() => $_has(57);
  @$pb.TagNumber(58)
  void clearIsSupportMets() => clearField(58);

  @$pb.TagNumber(59)
  $core.int get isSupportAltitude => $_getIZ(58);
  @$pb.TagNumber(59)
  set isSupportAltitude($core.int v) { $_setUnsignedInt32(58, v); }
  @$pb.TagNumber(59)
  $core.bool hasIsSupportAltitude() => $_has(58);
  @$pb.TagNumber(59)
  void clearIsSupportAltitude() => clearField(59);
}

class SyncSportList extends $pb.GeneratedMessage {
  factory SyncSportList({
    $core.Iterable<SyncSport>? list,
  }) {
    final $result = create();
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  SyncSportList._() : super();
  factory SyncSportList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncSportList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncSportList', createEmptyInstance: create)
    ..pc<SyncSport>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncSport.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncSportList clone() => SyncSportList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncSportList copyWith(void Function(SyncSportList) updates) => super.copyWith((message) => updates(message as SyncSportList)) as SyncSportList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncSportList create() => SyncSportList._();
  SyncSportList createEmptyInstance() => create();
  static $pb.PbList<SyncSportList> createRepeated() => $pb.PbList<SyncSportList>();
  @$core.pragma('dart2js:noInline')
  static SyncSportList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncSportList>(create);
  static SyncSportList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncSport> get list => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
