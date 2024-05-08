//
//  Generated code. Do not modify.
//  source: findphone.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'findphone.pbenum.dart';

export 'findphone.pbenum.dart';

class protocol_find_phone_watch_operate extends $pb.GeneratedMessage {
  factory protocol_find_phone_watch_operate({
    operate_type? operate,
    $core.bool? findWatchSwitch,
    $core.bool? findWatchFlag,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (findWatchSwitch != null) {
      $result.findWatchSwitch = findWatchSwitch;
    }
    if (findWatchFlag != null) {
      $result.findWatchFlag = findWatchFlag;
    }
    return $result;
  }
  protocol_find_phone_watch_operate._() : super();
  factory protocol_find_phone_watch_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_find_phone_watch_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_find_phone_watch_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'findWatchSwitch')
    ..aOB(3, _omitFieldNames ? '' : 'findWatchFlag')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_find_phone_watch_operate clone() => protocol_find_phone_watch_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_find_phone_watch_operate copyWith(void Function(protocol_find_phone_watch_operate) updates) => super.copyWith((message) => updates(message as protocol_find_phone_watch_operate)) as protocol_find_phone_watch_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_find_phone_watch_operate create() => protocol_find_phone_watch_operate._();
  protocol_find_phone_watch_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_find_phone_watch_operate> createRepeated() => $pb.PbList<protocol_find_phone_watch_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_find_phone_watch_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_find_phone_watch_operate>(create);
  static protocol_find_phone_watch_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get findWatchSwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set findWatchSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFindWatchSwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearFindWatchSwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get findWatchFlag => $_getBF(2);
  @$pb.TagNumber(3)
  set findWatchFlag($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFindWatchFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearFindWatchFlag() => clearField(3);
}

class protocol_find_phone_watch_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_find_phone_watch_inquire_reply({
    operate_type? operate,
    $core.int? funcTable,
    $core.bool? findWatchSwitch,
    $core.bool? findWatchSupport,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (findWatchSwitch != null) {
      $result.findWatchSwitch = findWatchSwitch;
    }
    if (findWatchSupport != null) {
      $result.findWatchSupport = findWatchSupport;
    }
    return $result;
  }
  protocol_find_phone_watch_inquire_reply._() : super();
  factory protocol_find_phone_watch_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_find_phone_watch_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_find_phone_watch_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'findWatchSwitch')
    ..aOB(4, _omitFieldNames ? '' : 'findWatchSupport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_find_phone_watch_inquire_reply clone() => protocol_find_phone_watch_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_find_phone_watch_inquire_reply copyWith(void Function(protocol_find_phone_watch_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_find_phone_watch_inquire_reply)) as protocol_find_phone_watch_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_find_phone_watch_inquire_reply create() => protocol_find_phone_watch_inquire_reply._();
  protocol_find_phone_watch_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_find_phone_watch_inquire_reply> createRepeated() => $pb.PbList<protocol_find_phone_watch_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_find_phone_watch_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_find_phone_watch_inquire_reply>(create);
  static protocol_find_phone_watch_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get funcTable => $_getIZ(1);
  @$pb.TagNumber(2)
  set funcTable($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFuncTable() => $_has(1);
  @$pb.TagNumber(2)
  void clearFuncTable() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get findWatchSwitch => $_getBF(2);
  @$pb.TagNumber(3)
  set findWatchSwitch($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFindWatchSwitch() => $_has(2);
  @$pb.TagNumber(3)
  void clearFindWatchSwitch() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get findWatchSupport => $_getBF(3);
  @$pb.TagNumber(4)
  set findWatchSupport($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFindWatchSupport() => $_has(3);
  @$pb.TagNumber(4)
  void clearFindWatchSupport() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
