///
//  Generated code. Do not modify.
//  source: event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class protocol_event_report extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_event_report', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventSubId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventTime')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventMessage')
    ..hasRequiredFields = false
  ;

  protocol_event_report._() : super();
  factory protocol_event_report({
    $core.String? eventId,
    $core.String? eventSubId,
    $core.String? eventTime,
    $core.String? eventMessage,
  }) {
    final _result = create();
    if (eventId != null) {
      _result.eventId = eventId;
    }
    if (eventSubId != null) {
      _result.eventSubId = eventSubId;
    }
    if (eventTime != null) {
      _result.eventTime = eventTime;
    }
    if (eventMessage != null) {
      _result.eventMessage = eventMessage;
    }
    return _result;
  }
  factory protocol_event_report.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_event_report.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_event_report clone() => protocol_event_report()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_event_report copyWith(void Function(protocol_event_report) updates) => super.copyWith((message) => updates(message as protocol_event_report)) as protocol_event_report; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_event_report create() => protocol_event_report._();
  protocol_event_report createEmptyInstance() => create();
  static $pb.PbList<protocol_event_report> createRepeated() => $pb.PbList<protocol_event_report>();
  @$core.pragma('dart2js:noInline')
  static protocol_event_report getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_event_report>(create);
  static protocol_event_report? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set eventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventSubId => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventSubId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventSubId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventSubId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get eventTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set eventTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get eventMessage => $_getSZ(3);
  @$pb.TagNumber(4)
  set eventMessage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEventMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearEventMessage() => clearField(4);
}

