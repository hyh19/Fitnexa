//
//  Generated code. Do not modify.
//  source: tracking.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'tracking.pbenum.dart';

export 'tracking.pbenum.dart';

class protocol_event_tracking_operate extends $pb.GeneratedMessage {
  factory protocol_event_tracking_operate({
    operate_type? operate,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    return $result;
  }
  protocol_event_tracking_operate._() : super();
  factory protocol_event_tracking_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_event_tracking_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_event_tracking_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_event_tracking_operate clone() => protocol_event_tracking_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_event_tracking_operate copyWith(void Function(protocol_event_tracking_operate) updates) => super.copyWith((message) => updates(message as protocol_event_tracking_operate)) as protocol_event_tracking_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_event_tracking_operate create() => protocol_event_tracking_operate._();
  protocol_event_tracking_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_event_tracking_operate> createRepeated() => $pb.PbList<protocol_event_tracking_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_event_tracking_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_event_tracking_operate>(create);
  static protocol_event_tracking_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);
}

class protocol_event_tracking_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_event_tracking_inquire_reply({
    operate_type? operate,
    $core.Iterable<$core.int>? phoneFunc,
    $core.Iterable<$core.int>? clickDial,
    $core.Iterable<$core.int>? clickAnswer,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (phoneFunc != null) {
      $result.phoneFunc.addAll(phoneFunc);
    }
    if (clickDial != null) {
      $result.clickDial.addAll(clickDial);
    }
    if (clickAnswer != null) {
      $result.clickAnswer.addAll(clickAnswer);
    }
    return $result;
  }
  protocol_event_tracking_inquire_reply._() : super();
  factory protocol_event_tracking_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_event_tracking_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_event_tracking_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'phoneFunc', $pb.PbFieldType.KU3)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'clickDial', $pb.PbFieldType.KU3)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'clickAnswer', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_event_tracking_inquire_reply clone() => protocol_event_tracking_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_event_tracking_inquire_reply copyWith(void Function(protocol_event_tracking_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_event_tracking_inquire_reply)) as protocol_event_tracking_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_event_tracking_inquire_reply create() => protocol_event_tracking_inquire_reply._();
  protocol_event_tracking_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_event_tracking_inquire_reply> createRepeated() => $pb.PbList<protocol_event_tracking_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_event_tracking_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_event_tracking_inquire_reply>(create);
  static protocol_event_tracking_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get phoneFunc => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get clickDial => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get clickAnswer => $_getList(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
