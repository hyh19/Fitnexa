///
//  Generated code. Do not modify.
//  source: log.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class log_operate_type extends $pb.ProtobufEnum {
  static const log_operate_type LOG_START = log_operate_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOG_START');
  static const log_operate_type LOG_END = log_operate_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOG_END');

  static const $core.List<log_operate_type> values = <log_operate_type> [
    LOG_START,
    LOG_END,
  ];

  static final $core.Map<$core.int, log_operate_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static log_operate_type? valueOf($core.int value) => _byValue[value];

  const log_operate_type._($core.int v, $core.String n) : super(v, n);
}

