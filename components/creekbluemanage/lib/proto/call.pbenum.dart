///
//  Generated code. Do not modify.
//  source: call.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;


class call_status extends $pb.ProtobufEnum {
  static const call_status RECEIVED_CALL = call_status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RECEIVED_CALL');
  static const call_status REJECT_CALL = call_status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECT_CALL');

  static const $core.List<call_status> values = <call_status> [
    RECEIVED_CALL,
    REJECT_CALL,
  ];

  static final $core.Map<$core.int, call_status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static call_status? valueOf($core.int value) => _byValue[value];

  const call_status._($core.int v, $core.String n) : super(v, n);
}

