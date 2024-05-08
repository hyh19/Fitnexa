///
//  Generated code. Do not modify.
//  source: alarm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;


class disp_status extends $pb.ProtobufEnum {
  static const disp_status DISP_OFF = disp_status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISP_OFF');
  static const disp_status DISP_ON = disp_status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISP_ON');

  static const $core.List<disp_status> values = <disp_status> [
    DISP_OFF,
    DISP_ON,
  ];

  static final $core.Map<$core.int, disp_status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static disp_status? valueOf($core.int value) => _byValue[value];

  const disp_status._($core.int v, $core.String n) : super(v, n);
}

class alarm_type extends $pb.ProtobufEnum {
  static const alarm_type GET_UP = alarm_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET_UP');
  static const alarm_type SLEEP = alarm_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SLEEP');

  static const $core.List<alarm_type> values = <alarm_type> [
    GET_UP,
    SLEEP,
  ];

  static final $core.Map<$core.int, alarm_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static alarm_type? valueOf($core.int value) => _byValue[value];

  const alarm_type._($core.int v, $core.String n) : super(v, n);
}

