//
//  Generated code. Do not modify.
//  source: update.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'update.pbenum.dart';

export 'update.pbenum.dart';

class protocol_notice_update_operate extends $pb.GeneratedMessage {
  factory protocol_notice_update_operate({
    event_id? eventId,
    $core.int? eventKey,
    $core.int? eventValue,
  }) {
    final $result = create();
    if (eventId != null) {
      $result.eventId = eventId;
    }
    if (eventKey != null) {
      $result.eventKey = eventKey;
    }
    if (eventValue != null) {
      $result.eventValue = eventValue;
    }
    return $result;
  }
  protocol_notice_update_operate._() : super();
  factory protocol_notice_update_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_notice_update_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_notice_update_operate', createEmptyInstance: create)
    ..e<event_id>(1, _omitFieldNames ? '' : 'eventId', $pb.PbFieldType.OE, defaultOrMaker: event_id.EVENT_ID_NULL, valueOf: event_id.valueOf, enumValues: event_id.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'eventKey', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'eventValue', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_notice_update_operate clone() => protocol_notice_update_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_notice_update_operate copyWith(void Function(protocol_notice_update_operate) updates) => super.copyWith((message) => updates(message as protocol_notice_update_operate)) as protocol_notice_update_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_notice_update_operate create() => protocol_notice_update_operate._();
  protocol_notice_update_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_notice_update_operate> createRepeated() => $pb.PbList<protocol_notice_update_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_notice_update_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_notice_update_operate>(create);
  static protocol_notice_update_operate? _defaultInstance;

  @$pb.TagNumber(1)
  event_id get eventId => $_getN(0);
  @$pb.TagNumber(1)
  set eventId(event_id v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get eventKey => $_getIZ(1);
  @$pb.TagNumber(2)
  set eventKey($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get eventValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set eventValue($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventValue() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
