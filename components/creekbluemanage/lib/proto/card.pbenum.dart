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

import 'package:protobuf/protobuf.dart' as $pb;



class quick_card_type extends $pb.ProtobufEnum {
  static const quick_card_type CARD_TYPE_EXERCISE = quick_card_type._(0, _omitEnumNames ? '' : 'CARD_TYPE_EXERCISE');
  static const quick_card_type CARD_TYPE_WEATHER = quick_card_type._(1, _omitEnumNames ? '' : 'CARD_TYPE_WEATHER');
  static const quick_card_type CARD_TYPE_SUGGEST = quick_card_type._(2, _omitEnumNames ? '' : 'CARD_TYPE_SUGGEST');
  static const quick_card_type CARD_TYPE_DIAL = quick_card_type._(3, _omitEnumNames ? '' : 'CARD_TYPE_DIAL');
  static const quick_card_type CARD_TYPE_ACTIVITY = quick_card_type._(4, _omitEnumNames ? '' : 'CARD_TYPE_ACTIVITY');
  static const quick_card_type CARD_TYPE_HEARTRATE = quick_card_type._(5, _omitEnumNames ? '' : 'CARD_TYPE_HEARTRATE');
  static const quick_card_type CARD_TYPE_SLEEP = quick_card_type._(6, _omitEnumNames ? '' : 'CARD_TYPE_SLEEP');
  static const quick_card_type CARD_TYPE_STEPS = quick_card_type._(7, _omitEnumNames ? '' : 'CARD_TYPE_STEPS');
  static const quick_card_type CARD_TYPE_SPO2 = quick_card_type._(8, _omitEnumNames ? '' : 'CARD_TYPE_SPO2');
  static const quick_card_type CARD_TYPE_MENSTRUATION = quick_card_type._(9, _omitEnumNames ? '' : 'CARD_TYPE_MENSTRUATION');
  static const quick_card_type CARD_TYPE_MEASUREMENT = quick_card_type._(10, _omitEnumNames ? '' : 'CARD_TYPE_MEASUREMENT');
  static const quick_card_type CARD_TYPE_RECENT_WORKOUT = quick_card_type._(11, _omitEnumNames ? '' : 'CARD_TYPE_RECENT_WORKOUT');
  static const quick_card_type CARD_TYPE_HRV = quick_card_type._(12, _omitEnumNames ? '' : 'CARD_TYPE_HRV');
  static const quick_card_type CARD_TYPE_UV = quick_card_type._(13, _omitEnumNames ? '' : 'CARD_TYPE_UV');
  static const quick_card_type CARD_TYPE_ASTRONOMY = quick_card_type._(14, _omitEnumNames ? '' : 'CARD_TYPE_ASTRONOMY');
  static const quick_card_type CARD_TYPE_WORLD_CLOCK = quick_card_type._(15, _omitEnumNames ? '' : 'CARD_TYPE_WORLD_CLOCK');

  static const $core.List<quick_card_type> values = <quick_card_type> [
    CARD_TYPE_EXERCISE,
    CARD_TYPE_WEATHER,
    CARD_TYPE_SUGGEST,
    CARD_TYPE_DIAL,
    CARD_TYPE_ACTIVITY,
    CARD_TYPE_HEARTRATE,
    CARD_TYPE_SLEEP,
    CARD_TYPE_STEPS,
    CARD_TYPE_SPO2,
    CARD_TYPE_MENSTRUATION,
    CARD_TYPE_MEASUREMENT,
    CARD_TYPE_RECENT_WORKOUT,
    CARD_TYPE_HRV,
    CARD_TYPE_UV,
    CARD_TYPE_ASTRONOMY,
    CARD_TYPE_WORLD_CLOCK,
  ];

  static final $core.Map<$core.int, quick_card_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static quick_card_type? valueOf($core.int value) => _byValue[value];

  const quick_card_type._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
