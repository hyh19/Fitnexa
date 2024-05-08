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

class event_id extends $pb.ProtobufEnum {
  static const event_id EVENT_ID_NULL = event_id._(0, _omitEnumNames ? '' : 'EVENT_ID_NULL');
  static const event_id EVENT_ID_MUSIC_CONTROL = event_id._(1, _omitEnumNames ? '' : 'EVENT_ID_MUSIC_CONTROL');
  static const event_id EVENT_ID_FINE_PHONE = event_id._(2, _omitEnumNames ? '' : 'EVENT_ID_FINE_PHONE');
  static const event_id EVENT_ID_SYNC_DATA = event_id._(3, _omitEnumNames ? '' : 'EVENT_ID_SYNC_DATA');
  static const event_id EVENT_ID_FINE_WATCH = event_id._(4, _omitEnumNames ? '' : 'EVENT_ID_FINE_WATCH');
  static const event_id EVENT_ID_VOLUME_CHANGE = event_id._(5, _omitEnumNames ? '' : 'EVENT_ID_VOLUME_CHANGE');

  static const $core.List<event_id> values = <event_id> [
    EVENT_ID_NULL,
    EVENT_ID_MUSIC_CONTROL,
    EVENT_ID_FINE_PHONE,
    EVENT_ID_SYNC_DATA,
    EVENT_ID_FINE_WATCH,
    EVENT_ID_VOLUME_CHANGE,
  ];

  static final $core.Map<$core.int, event_id> _byValue = $pb.ProtobufEnum.initByValue(values);
  static event_id? valueOf($core.int value) => _byValue[value];

  const event_id._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
