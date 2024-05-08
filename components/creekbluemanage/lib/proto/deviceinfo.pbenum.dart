//
//  Generated code. Do not modify.
//  source: deviceinfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Platform extends $pb.ProtobufEnum {
  static const Platform JX_3085C_PLATFORM = Platform._(0, _omitEnumNames ? '' : 'JX_3085C_PLATFORM');
  static const Platform JX_3085L_PLATFORM = Platform._(1, _omitEnumNames ? '' : 'JX_3085L_PLATFORM');
  static const Platform JX_3085E_PLATFORM = Platform._(2, _omitEnumNames ? '' : 'JX_3085E_PLATFORM');

  static const $core.List<Platform> values = <Platform> [
    JX_3085C_PLATFORM,
    JX_3085L_PLATFORM,
    JX_3085E_PLATFORM,
  ];

  static final $core.Map<$core.int, Platform> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Platform? valueOf($core.int value) => _byValue[value];

  const Platform._($core.int v, $core.String n) : super(v, n);
}

class Shape extends $pb.ProtobufEnum {
  static const Shape SQUARE_SHAPE = Shape._(0, _omitEnumNames ? '' : 'SQUARE_SHAPE');
  static const Shape ROUND_SHAPE = Shape._(1, _omitEnumNames ? '' : 'ROUND_SHAPE');

  static const $core.List<Shape> values = <Shape> [
    SQUARE_SHAPE,
    ROUND_SHAPE,
  ];

  static final $core.Map<$core.int, Shape> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Shape? valueOf($core.int value) => _byValue[value];

  const Shape._($core.int v, $core.String n) : super(v, n);
}

class Dev_type extends $pb.ProtobufEnum {
  static const Dev_type WATCH_TYPE = Dev_type._(0, _omitEnumNames ? '' : 'WATCH_TYPE');
  static const Dev_type BAND_TYPE = Dev_type._(1, _omitEnumNames ? '' : 'BAND_TYPE');

  static const $core.List<Dev_type> values = <Dev_type> [
    WATCH_TYPE,
    BAND_TYPE,
  ];

  static final $core.Map<$core.int, Dev_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Dev_type? valueOf($core.int value) => _byValue[value];

  const Dev_type._($core.int v, $core.String n) : super(v, n);
}

class Batt_mode extends $pb.ProtobufEnum {
  static const Batt_mode INVALID = Batt_mode._(0, _omitEnumNames ? '' : 'INVALID');
  static const Batt_mode NORMAL_MODE = Batt_mode._(1, _omitEnumNames ? '' : 'NORMAL_MODE');
  static const Batt_mode ECO_MODE = Batt_mode._(2, _omitEnumNames ? '' : 'ECO_MODE');

  static const $core.List<Batt_mode> values = <Batt_mode> [
    INVALID,
    NORMAL_MODE,
    ECO_MODE,
  ];

  static final $core.Map<$core.int, Batt_mode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Batt_mode? valueOf($core.int value) => _byValue[value];

  const Batt_mode._($core.int v, $core.String n) : super(v, n);
}

class Batt_status extends $pb.ProtobufEnum {
  static const Batt_status NORMAL = Batt_status._(0, _omitEnumNames ? '' : 'NORMAL');
  static const Batt_status CHARING = Batt_status._(1, _omitEnumNames ? '' : 'CHARING');
  static const Batt_status FULL = Batt_status._(2, _omitEnumNames ? '' : 'FULL');
  static const Batt_status LOW = Batt_status._(3, _omitEnumNames ? '' : 'LOW');

  static const $core.List<Batt_status> values = <Batt_status> [
    NORMAL,
    CHARING,
    FULL,
    LOW,
  ];

  static final $core.Map<$core.int, Batt_status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Batt_status? valueOf($core.int value) => _byValue[value];

  const Batt_status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
