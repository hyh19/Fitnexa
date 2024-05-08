//
//  Generated code. Do not modify.
//  source: sensor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;


class sensor_operate_type extends $pb.ProtobufEnum {
  static const sensor_operate_type SENSOR_TRAN_START = sensor_operate_type._(0, _omitEnumNames ? '' : 'SENSOR_TRAN_START');
  static const sensor_operate_type SENSOR_TRAN_END = sensor_operate_type._(1, _omitEnumNames ? '' : 'SENSOR_TRAN_END');
  static const sensor_operate_type OFF_LINE_TRAN_START = sensor_operate_type._(2, _omitEnumNames ? '' : 'OFF_LINE_TRAN_START');
  static const sensor_operate_type OFF_LINE_TRAN_END = sensor_operate_type._(3, _omitEnumNames ? '' : 'OFF_LINE_TRAN_END');
  static const sensor_operate_type SENSOR_AUTO_TRAN = sensor_operate_type._(4, _omitEnumNames ? '' : 'SENSOR_AUTO_TRAN');

  static const $core.List<sensor_operate_type> values = <sensor_operate_type> [
    SENSOR_TRAN_START,
    SENSOR_TRAN_END,
    OFF_LINE_TRAN_START,
    OFF_LINE_TRAN_END,
    SENSOR_AUTO_TRAN,
  ];

  static final $core.Map<$core.int, sensor_operate_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static sensor_operate_type? valueOf($core.int value) => _byValue[value];

  const sensor_operate_type._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
