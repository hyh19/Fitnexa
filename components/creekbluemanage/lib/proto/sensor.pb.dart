//
//  Generated code. Do not modify.
//  source: sensor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'sensor.pbenum.dart';

export 'sensor.pbenum.dart';

class protocol_sensor_rawdata_tran_operate extends $pb.GeneratedMessage {
  factory protocol_sensor_rawdata_tran_operate({
    operate_type? operate,
    sensor_operate_type? sensorOperate,
    $core.bool? ppgGData,
    $core.bool? ppgRData,
    $core.bool? ppgIrData,
    $core.bool? accData,
    $core.bool? gyroData,
    $core.bool? geomagneticData,
    $core.bool? gnssData,
    $core.bool? audioData,
    $core.bool? infraredData,
    $core.bool? sarData,
    $core.int? autoStopUtcTime,
    $core.bool? hrvData,
    $core.bool? threeLights100hzData,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (sensorOperate != null) {
      $result.sensorOperate = sensorOperate;
    }
    if (ppgGData != null) {
      $result.ppgGData = ppgGData;
    }
    if (ppgRData != null) {
      $result.ppgRData = ppgRData;
    }
    if (ppgIrData != null) {
      $result.ppgIrData = ppgIrData;
    }
    if (accData != null) {
      $result.accData = accData;
    }
    if (gyroData != null) {
      $result.gyroData = gyroData;
    }
    if (geomagneticData != null) {
      $result.geomagneticData = geomagneticData;
    }
    if (gnssData != null) {
      $result.gnssData = gnssData;
    }
    if (audioData != null) {
      $result.audioData = audioData;
    }
    if (infraredData != null) {
      $result.infraredData = infraredData;
    }
    if (sarData != null) {
      $result.sarData = sarData;
    }
    if (autoStopUtcTime != null) {
      $result.autoStopUtcTime = autoStopUtcTime;
    }
    if (hrvData != null) {
      $result.hrvData = hrvData;
    }
    if (threeLights100hzData != null) {
      $result.threeLights100hzData = threeLights100hzData;
    }
    return $result;
  }
  protocol_sensor_rawdata_tran_operate._() : super();
  factory protocol_sensor_rawdata_tran_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_sensor_rawdata_tran_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_sensor_rawdata_tran_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<sensor_operate_type>(2, _omitFieldNames ? '' : 'sensorOperate', $pb.PbFieldType.OE, defaultOrMaker: sensor_operate_type.SENSOR_TRAN_START, valueOf: sensor_operate_type.valueOf, enumValues: sensor_operate_type.values)
    ..aOB(3, _omitFieldNames ? '' : 'ppgGData')
    ..aOB(4, _omitFieldNames ? '' : 'ppgRData')
    ..aOB(5, _omitFieldNames ? '' : 'ppgIrData')
    ..aOB(6, _omitFieldNames ? '' : 'accData')
    ..aOB(7, _omitFieldNames ? '' : 'gyroData')
    ..aOB(8, _omitFieldNames ? '' : 'geomagneticData')
    ..aOB(9, _omitFieldNames ? '' : 'gnssData')
    ..aOB(10, _omitFieldNames ? '' : 'audioData')
    ..aOB(11, _omitFieldNames ? '' : 'infraredData')
    ..aOB(12, _omitFieldNames ? '' : 'sarData')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'autoStopUtcTime', $pb.PbFieldType.OU3)
    ..aOB(14, _omitFieldNames ? '' : 'hrvData')
    ..aOB(15, _omitFieldNames ? '' : 'threeLights100hzData', protoName: 'three_lights_100hz_data')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_sensor_rawdata_tran_operate clone() => protocol_sensor_rawdata_tran_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_sensor_rawdata_tran_operate copyWith(void Function(protocol_sensor_rawdata_tran_operate) updates) => super.copyWith((message) => updates(message as protocol_sensor_rawdata_tran_operate)) as protocol_sensor_rawdata_tran_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_sensor_rawdata_tran_operate create() => protocol_sensor_rawdata_tran_operate._();
  protocol_sensor_rawdata_tran_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_sensor_rawdata_tran_operate> createRepeated() => $pb.PbList<protocol_sensor_rawdata_tran_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_sensor_rawdata_tran_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_sensor_rawdata_tran_operate>(create);
  static protocol_sensor_rawdata_tran_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  sensor_operate_type get sensorOperate => $_getN(1);
  @$pb.TagNumber(2)
  set sensorOperate(sensor_operate_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSensorOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearSensorOperate() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get ppgGData => $_getBF(2);
  @$pb.TagNumber(3)
  set ppgGData($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPpgGData() => $_has(2);
  @$pb.TagNumber(3)
  void clearPpgGData() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get ppgRData => $_getBF(3);
  @$pb.TagNumber(4)
  set ppgRData($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPpgRData() => $_has(3);
  @$pb.TagNumber(4)
  void clearPpgRData() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get ppgIrData => $_getBF(4);
  @$pb.TagNumber(5)
  set ppgIrData($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPpgIrData() => $_has(4);
  @$pb.TagNumber(5)
  void clearPpgIrData() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get accData => $_getBF(5);
  @$pb.TagNumber(6)
  set accData($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccData() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccData() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get gyroData => $_getBF(6);
  @$pb.TagNumber(7)
  set gyroData($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGyroData() => $_has(6);
  @$pb.TagNumber(7)
  void clearGyroData() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get geomagneticData => $_getBF(7);
  @$pb.TagNumber(8)
  set geomagneticData($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGeomagneticData() => $_has(7);
  @$pb.TagNumber(8)
  void clearGeomagneticData() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get gnssData => $_getBF(8);
  @$pb.TagNumber(9)
  set gnssData($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasGnssData() => $_has(8);
  @$pb.TagNumber(9)
  void clearGnssData() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get audioData => $_getBF(9);
  @$pb.TagNumber(10)
  set audioData($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAudioData() => $_has(9);
  @$pb.TagNumber(10)
  void clearAudioData() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get infraredData => $_getBF(10);
  @$pb.TagNumber(11)
  set infraredData($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasInfraredData() => $_has(10);
  @$pb.TagNumber(11)
  void clearInfraredData() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get sarData => $_getBF(11);
  @$pb.TagNumber(12)
  set sarData($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSarData() => $_has(11);
  @$pb.TagNumber(12)
  void clearSarData() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get autoStopUtcTime => $_getIZ(12);
  @$pb.TagNumber(13)
  set autoStopUtcTime($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAutoStopUtcTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearAutoStopUtcTime() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get hrvData => $_getBF(13);
  @$pb.TagNumber(14)
  set hrvData($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasHrvData() => $_has(13);
  @$pb.TagNumber(14)
  void clearHrvData() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get threeLights100hzData => $_getBF(14);
  @$pb.TagNumber(15)
  set threeLights100hzData($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasThreeLights100hzData() => $_has(14);
  @$pb.TagNumber(15)
  void clearThreeLights100hzData() => clearField(15);
}

class protocol_sensor_rawdata_tran_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_sensor_rawdata_tran_inquire_reply({
    operate_type? operate,
    $core.int? hrVersion,
    $core.int? spo2Version,
    $core.int? stressVersion,
    $core.int? hrvVersion,
    $core.int? pedoVersion,
    $core.int? calorieVersion,
    $core.int? distanceVersion,
    $core.int? activityLevelVersion,
    $core.int? gestureVersion,
    $core.int? wearVersion,
    $core.int? noiseVersion,
    $core.int? exerciseDurationVersion,
    $core.int? sleepVersion,
    $core.int? gnssVersion,
    $core.int? motionRecognitionVersion,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (hrVersion != null) {
      $result.hrVersion = hrVersion;
    }
    if (spo2Version != null) {
      $result.spo2Version = spo2Version;
    }
    if (stressVersion != null) {
      $result.stressVersion = stressVersion;
    }
    if (hrvVersion != null) {
      $result.hrvVersion = hrvVersion;
    }
    if (pedoVersion != null) {
      $result.pedoVersion = pedoVersion;
    }
    if (calorieVersion != null) {
      $result.calorieVersion = calorieVersion;
    }
    if (distanceVersion != null) {
      $result.distanceVersion = distanceVersion;
    }
    if (activityLevelVersion != null) {
      $result.activityLevelVersion = activityLevelVersion;
    }
    if (gestureVersion != null) {
      $result.gestureVersion = gestureVersion;
    }
    if (wearVersion != null) {
      $result.wearVersion = wearVersion;
    }
    if (noiseVersion != null) {
      $result.noiseVersion = noiseVersion;
    }
    if (exerciseDurationVersion != null) {
      $result.exerciseDurationVersion = exerciseDurationVersion;
    }
    if (sleepVersion != null) {
      $result.sleepVersion = sleepVersion;
    }
    if (gnssVersion != null) {
      $result.gnssVersion = gnssVersion;
    }
    if (motionRecognitionVersion != null) {
      $result.motionRecognitionVersion = motionRecognitionVersion;
    }
    return $result;
  }
  protocol_sensor_rawdata_tran_inquire_reply._() : super();
  factory protocol_sensor_rawdata_tran_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_sensor_rawdata_tran_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_sensor_rawdata_tran_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'hrVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'spo2Version', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'stressVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'hrvVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'pedoVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'calorieVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'distanceVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'activityLevelVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'gestureVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'wearVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'noiseVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'exerciseDurationVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'sleepVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'gnssVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'motionRecognitionVersion', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_sensor_rawdata_tran_inquire_reply clone() => protocol_sensor_rawdata_tran_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_sensor_rawdata_tran_inquire_reply copyWith(void Function(protocol_sensor_rawdata_tran_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_sensor_rawdata_tran_inquire_reply)) as protocol_sensor_rawdata_tran_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_sensor_rawdata_tran_inquire_reply create() => protocol_sensor_rawdata_tran_inquire_reply._();
  protocol_sensor_rawdata_tran_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_sensor_rawdata_tran_inquire_reply> createRepeated() => $pb.PbList<protocol_sensor_rawdata_tran_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_sensor_rawdata_tran_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_sensor_rawdata_tran_inquire_reply>(create);
  static protocol_sensor_rawdata_tran_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get hrVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set hrVersion($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHrVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearHrVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get spo2Version => $_getIZ(2);
  @$pb.TagNumber(3)
  set spo2Version($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpo2Version() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpo2Version() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get stressVersion => $_getIZ(3);
  @$pb.TagNumber(4)
  set stressVersion($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStressVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearStressVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get hrvVersion => $_getIZ(4);
  @$pb.TagNumber(5)
  set hrvVersion($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHrvVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearHrvVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get pedoVersion => $_getIZ(5);
  @$pb.TagNumber(6)
  set pedoVersion($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPedoVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearPedoVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get calorieVersion => $_getIZ(6);
  @$pb.TagNumber(7)
  set calorieVersion($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCalorieVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearCalorieVersion() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get distanceVersion => $_getIZ(7);
  @$pb.TagNumber(8)
  set distanceVersion($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDistanceVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearDistanceVersion() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get activityLevelVersion => $_getIZ(8);
  @$pb.TagNumber(9)
  set activityLevelVersion($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasActivityLevelVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearActivityLevelVersion() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get gestureVersion => $_getIZ(9);
  @$pb.TagNumber(10)
  set gestureVersion($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasGestureVersion() => $_has(9);
  @$pb.TagNumber(10)
  void clearGestureVersion() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get wearVersion => $_getIZ(10);
  @$pb.TagNumber(11)
  set wearVersion($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasWearVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearWearVersion() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get noiseVersion => $_getIZ(11);
  @$pb.TagNumber(12)
  set noiseVersion($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNoiseVersion() => $_has(11);
  @$pb.TagNumber(12)
  void clearNoiseVersion() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get exerciseDurationVersion => $_getIZ(12);
  @$pb.TagNumber(13)
  set exerciseDurationVersion($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasExerciseDurationVersion() => $_has(12);
  @$pb.TagNumber(13)
  void clearExerciseDurationVersion() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get sleepVersion => $_getIZ(13);
  @$pb.TagNumber(14)
  set sleepVersion($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasSleepVersion() => $_has(13);
  @$pb.TagNumber(14)
  void clearSleepVersion() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get gnssVersion => $_getIZ(14);
  @$pb.TagNumber(15)
  set gnssVersion($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasGnssVersion() => $_has(14);
  @$pb.TagNumber(15)
  void clearGnssVersion() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get motionRecognitionVersion => $_getIZ(15);
  @$pb.TagNumber(16)
  set motionRecognitionVersion($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasMotionRecognitionVersion() => $_has(15);
  @$pb.TagNumber(16)
  void clearMotionRecognitionVersion() => clearField(16);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
