///
//  Generated code. Do not modify.
//  source: monitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class notify_type extends $pb.ProtobufEnum {
  static const notify_type ALLOW = notify_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALLOW');
  static const notify_type SILENT = notify_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SILENT');
  static const notify_type CLOSE = notify_type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSE');

  static const $core.List<notify_type> values = <notify_type> [
    ALLOW,
    SILENT,
    CLOSE,
  ];

  static final $core.Map<$core.int, notify_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static notify_type? valueOf($core.int value) => _byValue[value];

  const notify_type._($core.int v, $core.String n) : super(v, n);
}

class health_monitor_mode extends $pb.ProtobufEnum {
  static const health_monitor_mode MANUAL = health_monitor_mode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MANUAL');
  static const health_monitor_mode AUTO = health_monitor_mode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTO');
  static const health_monitor_mode CONTINUOUS = health_monitor_mode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTINUOUS');
  static const health_monitor_mode INTELLIHENT = health_monitor_mode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INTELLIHENT');

  static const $core.List<health_monitor_mode> values = <health_monitor_mode> [
    MANUAL,
    AUTO,
    CONTINUOUS,
    INTELLIHENT,
  ];

  static final $core.Map<$core.int, health_monitor_mode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static health_monitor_mode? valueOf($core.int value) => _byValue[value];

  const health_monitor_mode._($core.int v, $core.String n) : super(v, n);
}

class health_type extends $pb.ProtobufEnum {
  static const health_type HEART_RATE = health_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HEART_RATE');
  static const health_type STRESS = health_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STRESS');
  static const health_type SPO2 = health_type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPO2');
  static const health_type NOISE = health_type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOISE');
  static const health_type BODY_ENERGY = health_type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BODY_ENERGY');
  static const health_type RESPIRATORY_RATE = health_type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESPIRATORY_RATE');
  static const health_type SKIN_TEMPERATURE = health_type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SKIN_TEMPERATURE');

  static const $core.List<health_type> values = <health_type> [
    HEART_RATE,
    STRESS,
    SPO2,
    NOISE,
    BODY_ENERGY,
    RESPIRATORY_RATE,
    SKIN_TEMPERATURE,
  ];

  static final $core.Map<$core.int, health_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static health_type? valueOf($core.int value) => _byValue[value];

  const health_type._($core.int v, $core.String n) : super(v, n);
}

