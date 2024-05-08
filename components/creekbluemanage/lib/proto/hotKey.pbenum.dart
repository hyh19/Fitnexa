///
//  Generated code. Do not modify.
//  source: hotKey.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;


class long_2s_press_type extends $pb.ProtobufEnum {
  static const long_2s_press_type PRESS_TYPE_NULL = long_2s_press_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESS_TYPE_NULL');
  static const long_2s_press_type PRESS_TYPE_SOS = long_2s_press_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESS_TYPE_SOS');
  static const long_2s_press_type PRESS_TYPE_WORKOUT = long_2s_press_type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESS_TYPE_WORKOUT');

  static const $core.List<long_2s_press_type> values = <long_2s_press_type> [
    PRESS_TYPE_NULL,
    PRESS_TYPE_SOS,
    PRESS_TYPE_WORKOUT,
  ];

  static final $core.Map<$core.int, long_2s_press_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static long_2s_press_type? valueOf($core.int value) => _byValue[value];

  const long_2s_press_type._($core.int v, $core.String n) : super(v, n);
}

