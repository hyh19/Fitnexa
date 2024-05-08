//
//  Generated code. Do not modify.
//  source: screen.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;


class aod_mode extends $pb.ProtobufEnum {
  static const aod_mode INTELLIGENT_MODE = aod_mode._(0, _omitEnumNames ? '' : 'INTELLIGENT_MODE');
  static const aod_mode TIMER_MDOE = aod_mode._(1, _omitEnumNames ? '' : 'TIMER_MDOE');

  static const $core.List<aod_mode> values = <aod_mode> [
    INTELLIGENT_MODE,
    TIMER_MDOE,
  ];

  static final $core.Map<$core.int, aod_mode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static aod_mode? valueOf($core.int value) => _byValue[value];

  const aod_mode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
