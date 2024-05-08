//
//  Generated code. Do not modify.
//  source: card.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'card.pbenum.dart';

export 'card.pbenum.dart';

class quick_card_func extends $pb.GeneratedMessage {
  factory quick_card_func({
    $core.bool? isSupport,
    $core.bool? isDelete,
  }) {
    final $result = create();
    if (isSupport != null) {
      $result.isSupport = isSupport;
    }
    if (isDelete != null) {
      $result.isDelete = isDelete;
    }
    return $result;
  }
  quick_card_func._() : super();
  factory quick_card_func.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory quick_card_func.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'quick_card_func', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSupport')
    ..aOB(2, _omitFieldNames ? '' : 'isDelete')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  quick_card_func clone() => quick_card_func()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  quick_card_func copyWith(void Function(quick_card_func) updates) => super.copyWith((message) => updates(message as quick_card_func)) as quick_card_func;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static quick_card_func create() => quick_card_func._();
  quick_card_func createEmptyInstance() => create();
  static $pb.PbList<quick_card_func> createRepeated() => $pb.PbList<quick_card_func>();
  @$core.pragma('dart2js:noInline')
  static quick_card_func getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<quick_card_func>(create);
  static quick_card_func? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSupport => $_getBF(0);
  @$pb.TagNumber(1)
  set isSupport($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSupport() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSupport() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isDelete => $_getBF(1);
  @$pb.TagNumber(2)
  set isDelete($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsDelete() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsDelete() => clearField(2);
}

class protocol_quick_card_operate extends $pb.GeneratedMessage {
  factory protocol_quick_card_operate({
    operate_type? operate,
    $core.Iterable<quick_card_type>? cardType,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (cardType != null) {
      $result.cardType.addAll(cardType);
    }
    return $result;
  }
  protocol_quick_card_operate._() : super();
  factory protocol_quick_card_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_quick_card_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_quick_card_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..pc<quick_card_type>(2, _omitFieldNames ? '' : 'cardType', $pb.PbFieldType.KE, valueOf: quick_card_type.valueOf, enumValues: quick_card_type.values, defaultEnumValue: quick_card_type.CARD_TYPE_EXERCISE)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_quick_card_operate clone() => protocol_quick_card_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_quick_card_operate copyWith(void Function(protocol_quick_card_operate) updates) => super.copyWith((message) => updates(message as protocol_quick_card_operate)) as protocol_quick_card_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_quick_card_operate create() => protocol_quick_card_operate._();
  protocol_quick_card_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_quick_card_operate> createRepeated() => $pb.PbList<protocol_quick_card_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_quick_card_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_quick_card_operate>(create);
  static protocol_quick_card_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<quick_card_type> get cardType => $_getList(1);
}

class protocol_quick_card_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_quick_card_inquire_reply({
    operate_type? operate,
    $core.int? quickCardSupportMax,
    $core.int? quickCardSupportMin,
    $core.int? funcTable,
    $core.Iterable<quick_card_type>? cardType,
    quick_card_func? cardTypeExerciseSupport,
    quick_card_func? cardTypeWeatherSupport,
    quick_card_func? cardTypeSuggestSupport,
    quick_card_func? cardTypeDialSupport,
    quick_card_func? cardTypeActivitySupport,
    quick_card_func? cardTypeHeartrateSupport,
    quick_card_func? cardTypeSleepSupport,
    quick_card_func? cardTypeStepsSupport,
    quick_card_func? cardTypeSpo2Support,
    quick_card_func? cardTypeMenstruationSupport,
    quick_card_func? cardTypeMeasurementSupport,
    quick_card_func? cardTypeRecentWorkoutSupport,
    quick_card_func? cardTypeHrvSupport,
    quick_card_func? cardTypeUvSupport,
    quick_card_func? cardTypeAstronomySupport,
    quick_card_func? cardTypeWorldClockSupport,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (quickCardSupportMax != null) {
      $result.quickCardSupportMax = quickCardSupportMax;
    }
    if (quickCardSupportMin != null) {
      $result.quickCardSupportMin = quickCardSupportMin;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (cardType != null) {
      $result.cardType.addAll(cardType);
    }
    if (cardTypeExerciseSupport != null) {
      $result.cardTypeExerciseSupport = cardTypeExerciseSupport;
    }
    if (cardTypeWeatherSupport != null) {
      $result.cardTypeWeatherSupport = cardTypeWeatherSupport;
    }
    if (cardTypeSuggestSupport != null) {
      $result.cardTypeSuggestSupport = cardTypeSuggestSupport;
    }
    if (cardTypeDialSupport != null) {
      $result.cardTypeDialSupport = cardTypeDialSupport;
    }
    if (cardTypeActivitySupport != null) {
      $result.cardTypeActivitySupport = cardTypeActivitySupport;
    }
    if (cardTypeHeartrateSupport != null) {
      $result.cardTypeHeartrateSupport = cardTypeHeartrateSupport;
    }
    if (cardTypeSleepSupport != null) {
      $result.cardTypeSleepSupport = cardTypeSleepSupport;
    }
    if (cardTypeStepsSupport != null) {
      $result.cardTypeStepsSupport = cardTypeStepsSupport;
    }
    if (cardTypeSpo2Support != null) {
      $result.cardTypeSpo2Support = cardTypeSpo2Support;
    }
    if (cardTypeMenstruationSupport != null) {
      $result.cardTypeMenstruationSupport = cardTypeMenstruationSupport;
    }
    if (cardTypeMeasurementSupport != null) {
      $result.cardTypeMeasurementSupport = cardTypeMeasurementSupport;
    }
    if (cardTypeRecentWorkoutSupport != null) {
      $result.cardTypeRecentWorkoutSupport = cardTypeRecentWorkoutSupport;
    }
    if (cardTypeHrvSupport != null) {
      $result.cardTypeHrvSupport = cardTypeHrvSupport;
    }
    if (cardTypeUvSupport != null) {
      $result.cardTypeUvSupport = cardTypeUvSupport;
    }
    if (cardTypeAstronomySupport != null) {
      $result.cardTypeAstronomySupport = cardTypeAstronomySupport;
    }
    if (cardTypeWorldClockSupport != null) {
      $result.cardTypeWorldClockSupport = cardTypeWorldClockSupport;
    }
    return $result;
  }
  protocol_quick_card_inquire_reply._() : super();
  factory protocol_quick_card_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_quick_card_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_quick_card_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'quickCardSupportMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'quickCardSupportMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..pc<quick_card_type>(5, _omitFieldNames ? '' : 'cardType', $pb.PbFieldType.KE, valueOf: quick_card_type.valueOf, enumValues: quick_card_type.values, defaultEnumValue: quick_card_type.CARD_TYPE_EXERCISE)
    ..aOM<quick_card_func>(6, _omitFieldNames ? '' : 'cardTypeExerciseSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(7, _omitFieldNames ? '' : 'cardTypeWeatherSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(8, _omitFieldNames ? '' : 'cardTypeSuggestSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(9, _omitFieldNames ? '' : 'cardTypeDialSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(10, _omitFieldNames ? '' : 'cardTypeActivitySupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(11, _omitFieldNames ? '' : 'cardTypeHeartrateSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(12, _omitFieldNames ? '' : 'cardTypeSleepSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(13, _omitFieldNames ? '' : 'cardTypeStepsSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(14, _omitFieldNames ? '' : 'cardTypeSpo2Support', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(15, _omitFieldNames ? '' : 'cardTypeMenstruationSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(16, _omitFieldNames ? '' : 'cardTypeMeasurementSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(17, _omitFieldNames ? '' : 'cardTypeRecentWorkoutSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(18, _omitFieldNames ? '' : 'cardTypeHrvSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(19, _omitFieldNames ? '' : 'cardTypeUvSupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(20, _omitFieldNames ? '' : 'cardTypeAstronomySupport', subBuilder: quick_card_func.create)
    ..aOM<quick_card_func>(21, _omitFieldNames ? '' : 'cardTypeWorldClockSupport', subBuilder: quick_card_func.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_quick_card_inquire_reply clone() => protocol_quick_card_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_quick_card_inquire_reply copyWith(void Function(protocol_quick_card_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_quick_card_inquire_reply)) as protocol_quick_card_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_quick_card_inquire_reply create() => protocol_quick_card_inquire_reply._();
  protocol_quick_card_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_quick_card_inquire_reply> createRepeated() => $pb.PbList<protocol_quick_card_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_quick_card_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_quick_card_inquire_reply>(create);
  static protocol_quick_card_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quickCardSupportMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set quickCardSupportMax($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuickCardSupportMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuickCardSupportMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get quickCardSupportMin => $_getIZ(2);
  @$pb.TagNumber(3)
  set quickCardSupportMin($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuickCardSupportMin() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuickCardSupportMin() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get funcTable => $_getIZ(3);
  @$pb.TagNumber(4)
  set funcTable($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFuncTable() => $_has(3);
  @$pb.TagNumber(4)
  void clearFuncTable() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<quick_card_type> get cardType => $_getList(4);

  @$pb.TagNumber(6)
  quick_card_func get cardTypeExerciseSupport => $_getN(5);
  @$pb.TagNumber(6)
  set cardTypeExerciseSupport(quick_card_func v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCardTypeExerciseSupport() => $_has(5);
  @$pb.TagNumber(6)
  void clearCardTypeExerciseSupport() => clearField(6);
  @$pb.TagNumber(6)
  quick_card_func ensureCardTypeExerciseSupport() => $_ensure(5);

  @$pb.TagNumber(7)
  quick_card_func get cardTypeWeatherSupport => $_getN(6);
  @$pb.TagNumber(7)
  set cardTypeWeatherSupport(quick_card_func v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCardTypeWeatherSupport() => $_has(6);
  @$pb.TagNumber(7)
  void clearCardTypeWeatherSupport() => clearField(7);
  @$pb.TagNumber(7)
  quick_card_func ensureCardTypeWeatherSupport() => $_ensure(6);

  @$pb.TagNumber(8)
  quick_card_func get cardTypeSuggestSupport => $_getN(7);
  @$pb.TagNumber(8)
  set cardTypeSuggestSupport(quick_card_func v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCardTypeSuggestSupport() => $_has(7);
  @$pb.TagNumber(8)
  void clearCardTypeSuggestSupport() => clearField(8);
  @$pb.TagNumber(8)
  quick_card_func ensureCardTypeSuggestSupport() => $_ensure(7);

  @$pb.TagNumber(9)
  quick_card_func get cardTypeDialSupport => $_getN(8);
  @$pb.TagNumber(9)
  set cardTypeDialSupport(quick_card_func v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCardTypeDialSupport() => $_has(8);
  @$pb.TagNumber(9)
  void clearCardTypeDialSupport() => clearField(9);
  @$pb.TagNumber(9)
  quick_card_func ensureCardTypeDialSupport() => $_ensure(8);

  @$pb.TagNumber(10)
  quick_card_func get cardTypeActivitySupport => $_getN(9);
  @$pb.TagNumber(10)
  set cardTypeActivitySupport(quick_card_func v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCardTypeActivitySupport() => $_has(9);
  @$pb.TagNumber(10)
  void clearCardTypeActivitySupport() => clearField(10);
  @$pb.TagNumber(10)
  quick_card_func ensureCardTypeActivitySupport() => $_ensure(9);

  @$pb.TagNumber(11)
  quick_card_func get cardTypeHeartrateSupport => $_getN(10);
  @$pb.TagNumber(11)
  set cardTypeHeartrateSupport(quick_card_func v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCardTypeHeartrateSupport() => $_has(10);
  @$pb.TagNumber(11)
  void clearCardTypeHeartrateSupport() => clearField(11);
  @$pb.TagNumber(11)
  quick_card_func ensureCardTypeHeartrateSupport() => $_ensure(10);

  @$pb.TagNumber(12)
  quick_card_func get cardTypeSleepSupport => $_getN(11);
  @$pb.TagNumber(12)
  set cardTypeSleepSupport(quick_card_func v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCardTypeSleepSupport() => $_has(11);
  @$pb.TagNumber(12)
  void clearCardTypeSleepSupport() => clearField(12);
  @$pb.TagNumber(12)
  quick_card_func ensureCardTypeSleepSupport() => $_ensure(11);

  @$pb.TagNumber(13)
  quick_card_func get cardTypeStepsSupport => $_getN(12);
  @$pb.TagNumber(13)
  set cardTypeStepsSupport(quick_card_func v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasCardTypeStepsSupport() => $_has(12);
  @$pb.TagNumber(13)
  void clearCardTypeStepsSupport() => clearField(13);
  @$pb.TagNumber(13)
  quick_card_func ensureCardTypeStepsSupport() => $_ensure(12);

  @$pb.TagNumber(14)
  quick_card_func get cardTypeSpo2Support => $_getN(13);
  @$pb.TagNumber(14)
  set cardTypeSpo2Support(quick_card_func v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasCardTypeSpo2Support() => $_has(13);
  @$pb.TagNumber(14)
  void clearCardTypeSpo2Support() => clearField(14);
  @$pb.TagNumber(14)
  quick_card_func ensureCardTypeSpo2Support() => $_ensure(13);

  @$pb.TagNumber(15)
  quick_card_func get cardTypeMenstruationSupport => $_getN(14);
  @$pb.TagNumber(15)
  set cardTypeMenstruationSupport(quick_card_func v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasCardTypeMenstruationSupport() => $_has(14);
  @$pb.TagNumber(15)
  void clearCardTypeMenstruationSupport() => clearField(15);
  @$pb.TagNumber(15)
  quick_card_func ensureCardTypeMenstruationSupport() => $_ensure(14);

  @$pb.TagNumber(16)
  quick_card_func get cardTypeMeasurementSupport => $_getN(15);
  @$pb.TagNumber(16)
  set cardTypeMeasurementSupport(quick_card_func v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasCardTypeMeasurementSupport() => $_has(15);
  @$pb.TagNumber(16)
  void clearCardTypeMeasurementSupport() => clearField(16);
  @$pb.TagNumber(16)
  quick_card_func ensureCardTypeMeasurementSupport() => $_ensure(15);

  @$pb.TagNumber(17)
  quick_card_func get cardTypeRecentWorkoutSupport => $_getN(16);
  @$pb.TagNumber(17)
  set cardTypeRecentWorkoutSupport(quick_card_func v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasCardTypeRecentWorkoutSupport() => $_has(16);
  @$pb.TagNumber(17)
  void clearCardTypeRecentWorkoutSupport() => clearField(17);
  @$pb.TagNumber(17)
  quick_card_func ensureCardTypeRecentWorkoutSupport() => $_ensure(16);

  @$pb.TagNumber(18)
  quick_card_func get cardTypeHrvSupport => $_getN(17);
  @$pb.TagNumber(18)
  set cardTypeHrvSupport(quick_card_func v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasCardTypeHrvSupport() => $_has(17);
  @$pb.TagNumber(18)
  void clearCardTypeHrvSupport() => clearField(18);
  @$pb.TagNumber(18)
  quick_card_func ensureCardTypeHrvSupport() => $_ensure(17);

  @$pb.TagNumber(19)
  quick_card_func get cardTypeUvSupport => $_getN(18);
  @$pb.TagNumber(19)
  set cardTypeUvSupport(quick_card_func v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasCardTypeUvSupport() => $_has(18);
  @$pb.TagNumber(19)
  void clearCardTypeUvSupport() => clearField(19);
  @$pb.TagNumber(19)
  quick_card_func ensureCardTypeUvSupport() => $_ensure(18);

  @$pb.TagNumber(20)
  quick_card_func get cardTypeAstronomySupport => $_getN(19);
  @$pb.TagNumber(20)
  set cardTypeAstronomySupport(quick_card_func v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasCardTypeAstronomySupport() => $_has(19);
  @$pb.TagNumber(20)
  void clearCardTypeAstronomySupport() => clearField(20);
  @$pb.TagNumber(20)
  quick_card_func ensureCardTypeAstronomySupport() => $_ensure(19);

  @$pb.TagNumber(21)
  quick_card_func get cardTypeWorldClockSupport => $_getN(20);
  @$pb.TagNumber(21)
  set cardTypeWorldClockSupport(quick_card_func v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasCardTypeWorldClockSupport() => $_has(20);
  @$pb.TagNumber(21)
  void clearCardTypeWorldClockSupport() => clearField(21);
  @$pb.TagNumber(21)
  quick_card_func ensureCardTypeWorldClockSupport() => $_ensure(20);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
