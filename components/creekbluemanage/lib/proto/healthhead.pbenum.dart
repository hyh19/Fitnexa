///
//  Generated code. Do not modify.
//  source: healthhead.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class sync_type extends $pb.ProtobufEnum {
  static const sync_type SYNC_HEART_RATE = sync_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_HEART_RATE');
  static const sync_type SYNC_STRESS = sync_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_STRESS');
  static const sync_type SYNC_SPO2 = sync_type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_SPO2');
  static const sync_type SYNC_SLEEP = sync_type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_SLEEP');
  static const sync_type SYNC_WORKOUT = sync_type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_WORKOUT');
  static const sync_type SYNC_ACTIVITY = sync_type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_ACTIVITY');
  static const sync_type SYNC_SWIMMING = sync_type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_SWIMMING');
  static const sync_type SYNC_HRV = sync_type._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_HRV');
  static const sync_type SYNC_NOISE = sync_type._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_NOISE');
  static const sync_type SYNC_BODY_ENERGY = sync_type._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_BODY_ENERGY');
  static const sync_type SYNC_RESPIRATORY_RATE = sync_type._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_RESPIRATORY_RATE');
  static const sync_type SYNC_SKIN_TEMPERATURE = sync_type._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC_SKIN_TEMPERATURE');

  static const $core.List<sync_type> values = <sync_type> [
    SYNC_HEART_RATE,
    SYNC_STRESS,
    SYNC_SPO2,
    SYNC_SLEEP,
    SYNC_WORKOUT,
    SYNC_ACTIVITY,
    SYNC_SWIMMING,
    SYNC_HRV,
    SYNC_NOISE,
    SYNC_BODY_ENERGY,
    SYNC_RESPIRATORY_RATE,
    SYNC_SKIN_TEMPERATURE,
  ];

  static final $core.Map<$core.int, sync_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static sync_type? valueOf($core.int value) => _byValue[value];

  const sync_type._($core.int v, $core.String n) : super(v, n);
}

class sync_operate extends $pb.ProtobufEnum {
  static const sync_operate START_SYNC = sync_operate._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'START_SYNC');
  static const sync_operate END_SYNC = sync_operate._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END_SYNC');

  static const $core.List<sync_operate> values = <sync_operate> [
    START_SYNC,
    END_SYNC,
  ];

  static final $core.Map<$core.int, sync_operate> _byValue = $pb.ProtobufEnum.initByValue(values);
  static sync_operate? valueOf($core.int value) => _byValue[value];

  const sync_operate._($core.int v, $core.String n) : super(v, n);
}

