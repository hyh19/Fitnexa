///
//  Generated code. Do not modify.
//  source: sleepMonitor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;


class sleep_monitor_type extends $pb.ProtobufEnum {
  static const sleep_monitor_type GENERAL = sleep_monitor_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GENERAL');
  static const sleep_monitor_type SCIENCE = sleep_monitor_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SCIENCE');

  static const $core.List<sleep_monitor_type> values = <sleep_monitor_type> [
    GENERAL,
    SCIENCE,
  ];

  static final $core.Map<$core.int, sleep_monitor_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static sleep_monitor_type? valueOf($core.int value) => _byValue[value];

  const sleep_monitor_type._($core.int v, $core.String n) : super(v, n);
}

