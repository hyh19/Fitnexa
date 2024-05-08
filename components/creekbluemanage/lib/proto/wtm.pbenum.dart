///
//  Generated code. Do not modify.
//  source: wtm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class wtm_operate_type extends $pb.ProtobufEnum {
  static const wtm_operate_type WTM_START = wtm_operate_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WTM_START');
  static const wtm_operate_type WTM_END = wtm_operate_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WTM_END');

  static const $core.List<wtm_operate_type> values = <wtm_operate_type> [
    WTM_START,
    WTM_END,
  ];

  static final $core.Map<$core.int, wtm_operate_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static wtm_operate_type? valueOf($core.int value) => _byValue[value];

  const wtm_operate_type._($core.int v, $core.String n) : super(v, n);
}

