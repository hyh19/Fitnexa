///
//  Generated code. Do not modify.
//  source: menstrual.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;


class period_log extends $pb.ProtobufEnum {
  static const period_log PERIOD_LOG_NULL = period_log._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERIOD_LOG_NULL');
  static const period_log PERIOD_LOG_NOT_FLOW = period_log._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERIOD_LOG_NOT_FLOW');
  static const period_log PERIOD_LOG_AS_USUAL = period_log._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERIOD_LOG_AS_USUAL');
  static const period_log PERIOD_LOG_LIGHT_FLOW = period_log._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERIOD_LOG_LIGHT_FLOW');
  static const period_log PERIOD_LOG_MENDIUM_FLOW = period_log._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERIOD_LOG_MENDIUM_FLOW');
  static const period_log PERIOD_LOG_HEAVY_FLOW = period_log._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERIOD_LOG_HEAVY_FLOW');

  static const $core.List<period_log> values = <period_log> [
    PERIOD_LOG_NULL,
    PERIOD_LOG_NOT_FLOW,
    PERIOD_LOG_AS_USUAL,
    PERIOD_LOG_LIGHT_FLOW,
    PERIOD_LOG_MENDIUM_FLOW,
    PERIOD_LOG_HEAVY_FLOW,
  ];

  static final $core.Map<$core.int, period_log> _byValue = $pb.ProtobufEnum.initByValue(values);
  static period_log? valueOf($core.int value) => _byValue[value];

  const period_log._($core.int v, $core.String n) : super(v, n);
}

