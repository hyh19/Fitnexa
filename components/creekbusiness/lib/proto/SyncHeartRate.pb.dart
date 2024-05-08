///
//  Generated code. Do not modify.
//  source: SyncHeartRate.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncHeartRate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncHeartRate', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataDate')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetLast', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hrMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hrMin', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hrSilent', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hrAverage', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hrRiseRatio', $pb.PbFieldType.OU3)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hrInterval')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'datas')
    ..a<$fixnum.Int64>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SyncHeartRate._() : super();
  factory SyncHeartRate({
    $fixnum.Int64? userId,
    $core.String? macId,
    $core.String? dataDate,
    $core.int? offsetLast,
    $core.int? hrMax,
    $core.int? hrMin,
    $core.int? hrSilent,
    $core.int? hrAverage,
    $core.int? hrRiseRatio,
    $core.String? hrInterval,
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
    if (hrMax != null) {
      _result.hrMax = hrMax;
    }
    if (hrMin != null) {
      _result.hrMin = hrMin;
    }
    if (hrSilent != null) {
      _result.hrSilent = hrSilent;
    }
    if (hrAverage != null) {
      _result.hrAverage = hrAverage;
    }
    if (hrRiseRatio != null) {
      _result.hrRiseRatio = hrRiseRatio;
    }
    if (hrInterval != null) {
      _result.hrInterval = hrInterval;
    }
    if (datas != null) {
      _result.datas = datas;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SyncHeartRate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncHeartRate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncHeartRate clone() => SyncHeartRate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncHeartRate copyWith(void Function(SyncHeartRate) updates) => super.copyWith((message) => updates(message as SyncHeartRate)) as SyncHeartRate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncHeartRate create() => SyncHeartRate._();
  SyncHeartRate createEmptyInstance() => create();
  static $pb.PbList<SyncHeartRate> createRepeated() => $pb.PbList<SyncHeartRate>();
  @$core.pragma('dart2js:noInline')
  static SyncHeartRate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncHeartRate>(create);
  static SyncHeartRate? _defaultInstance;

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
  $core.int get hrMax => $_getIZ(4);
  @$pb.TagNumber(5)
  set hrMax($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHrMax() => $_has(4);
  @$pb.TagNumber(5)
  void clearHrMax() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get hrMin => $_getIZ(5);
  @$pb.TagNumber(6)
  set hrMin($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHrMin() => $_has(5);
  @$pb.TagNumber(6)
  void clearHrMin() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get hrSilent => $_getIZ(6);
  @$pb.TagNumber(7)
  set hrSilent($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHrSilent() => $_has(6);
  @$pb.TagNumber(7)
  void clearHrSilent() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get hrAverage => $_getIZ(7);
  @$pb.TagNumber(8)
  set hrAverage($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHrAverage() => $_has(7);
  @$pb.TagNumber(8)
  void clearHrAverage() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get hrRiseRatio => $_getIZ(8);
  @$pb.TagNumber(9)
  set hrRiseRatio($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHrRiseRatio() => $_has(8);
  @$pb.TagNumber(9)
  void clearHrRiseRatio() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get hrInterval => $_getSZ(9);
  @$pb.TagNumber(10)
  set hrInterval($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasHrInterval() => $_has(9);
  @$pb.TagNumber(10)
  void clearHrInterval() => clearField(10);

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
}

class SyncHeartRateList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncHeartRateList', createEmptyInstance: create)
    ..pc<SyncHeartRate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: SyncHeartRate.create)
    ..hasRequiredFields = false
  ;

  SyncHeartRateList._() : super();
  factory SyncHeartRateList({
    $core.Iterable<SyncHeartRate>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory SyncHeartRateList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncHeartRateList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncHeartRateList clone() => SyncHeartRateList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncHeartRateList copyWith(void Function(SyncHeartRateList) updates) => super.copyWith((message) => updates(message as SyncHeartRateList)) as SyncHeartRateList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncHeartRateList create() => SyncHeartRateList._();
  SyncHeartRateList createEmptyInstance() => create();
  static $pb.PbList<SyncHeartRateList> createRepeated() => $pb.PbList<SyncHeartRateList>();
  @$core.pragma('dart2js:noInline')
  static SyncHeartRateList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncHeartRateList>(create);
  static SyncHeartRateList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SyncHeartRate> get list => $_getList(0);
}

