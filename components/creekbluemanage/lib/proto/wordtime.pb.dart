///
//  Generated code. Do not modify.
//  source: wordtime.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'wordtime.pbenum.dart';

export 'wordtime.pbenum.dart';

class protocol_world_time_item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_world_time_item', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offestMin', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cityName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  protocol_world_time_item._() : super();
  factory protocol_world_time_item({
    $core.int? offestMin,
    $core.List<$core.int>? cityName,
  }) {
    final _result = create();
    if (offestMin != null) {
      _result.offestMin = offestMin;
    }
    if (cityName != null) {
      _result.cityName = cityName;
    }
    return _result;
  }
  factory protocol_world_time_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_world_time_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_world_time_item clone() => protocol_world_time_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_world_time_item copyWith(void Function(protocol_world_time_item) updates) => super.copyWith((message) => updates(message as protocol_world_time_item)) as protocol_world_time_item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_world_time_item create() => protocol_world_time_item._();
  protocol_world_time_item createEmptyInstance() => create();
  static $pb.PbList<protocol_world_time_item> createRepeated() => $pb.PbList<protocol_world_time_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_world_time_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_world_time_item>(create);
  static protocol_world_time_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get offestMin => $_getIZ(0);
  @$pb.TagNumber(1)
  set offestMin($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOffestMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffestMin() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get cityName => $_getN(1);
  @$pb.TagNumber(2)
  set cityName($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCityName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCityName() => clearField(2);
}

class protocol_world_time_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_world_time_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..pc<protocol_world_time_item>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'worldTimeItem', $pb.PbFieldType.PM, subBuilder: protocol_world_time_item.create)
    ..hasRequiredFields = false
  ;

  protocol_world_time_operate._() : super();
  factory protocol_world_time_operate({
    operate_type? operate,
    $core.Iterable<protocol_world_time_item>? worldTimeItem,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (worldTimeItem != null) {
      _result.worldTimeItem.addAll(worldTimeItem);
    }
    return _result;
  }
  factory protocol_world_time_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_world_time_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_world_time_operate clone() => protocol_world_time_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_world_time_operate copyWith(void Function(protocol_world_time_operate) updates) => super.copyWith((message) => updates(message as protocol_world_time_operate)) as protocol_world_time_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_world_time_operate create() => protocol_world_time_operate._();
  protocol_world_time_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_world_time_operate> createRepeated() => $pb.PbList<protocol_world_time_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_world_time_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_world_time_operate>(create);
  static protocol_world_time_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<protocol_world_time_item> get worldTimeItem => $_getList(1);
}

class protocol_world_time_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_world_time_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wordTimeSupportMax', $pb.PbFieldType.OU3)
    ..pc<protocol_world_time_item>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'worldTimeItem', $pb.PbFieldType.PM, subBuilder: protocol_world_time_item.create)
    ..hasRequiredFields = false
  ;

  protocol_world_time_inquire_reply._() : super();
  factory protocol_world_time_inquire_reply({
    operate_type? operate,
    $core.int? wordTimeSupportMax,
    $core.Iterable<protocol_world_time_item>? worldTimeItem,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (wordTimeSupportMax != null) {
      _result.wordTimeSupportMax = wordTimeSupportMax;
    }
    if (worldTimeItem != null) {
      _result.worldTimeItem.addAll(worldTimeItem);
    }
    return _result;
  }
  factory protocol_world_time_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_world_time_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_world_time_inquire_reply clone() => protocol_world_time_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_world_time_inquire_reply copyWith(void Function(protocol_world_time_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_world_time_inquire_reply)) as protocol_world_time_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_world_time_inquire_reply create() => protocol_world_time_inquire_reply._();
  protocol_world_time_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_world_time_inquire_reply> createRepeated() => $pb.PbList<protocol_world_time_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_world_time_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_world_time_inquire_reply>(create);
  static protocol_world_time_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get wordTimeSupportMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set wordTimeSupportMax($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWordTimeSupportMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearWordTimeSupportMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<protocol_world_time_item> get worldTimeItem => $_getList(2);
}

