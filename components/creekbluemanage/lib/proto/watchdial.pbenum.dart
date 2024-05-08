///
//  Generated code. Do not modify.
//  source: watchdial.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class dial_type extends $pb.ProtobufEnum {
  static const dial_type DIAL_TYPE_NULL = dial_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_TYPE_NULL');
  static const dial_type DIAL_TYPE_GENERAL = dial_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_TYPE_GENERAL');
  static const dial_type DIAL_TYPE_PHOTO = dial_type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_TYPE_PHOTO');
  static const dial_type DIAL_TYPE_WALLPAPER = dial_type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_TYPE_WALLPAPER');
  static const dial_type DIAL_TYPE_CUSTOM = dial_type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_TYPE_CUSTOM');
  static const dial_type DIAL_TYPE_GENERAL_AOD = dial_type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_TYPE_GENERAL_AOD');
  static const dial_type DIAL_TYPE_AOD = dial_type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_TYPE_AOD');

  static const $core.List<dial_type> values = <dial_type> [
    DIAL_TYPE_NULL,
    DIAL_TYPE_GENERAL,
    DIAL_TYPE_PHOTO,
    DIAL_TYPE_WALLPAPER,
    DIAL_TYPE_CUSTOM,
    DIAL_TYPE_GENERAL_AOD,
    DIAL_TYPE_AOD,
  ];

  static final $core.Map<$core.int, dial_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static dial_type? valueOf($core.int value) => _byValue[value];

  const dial_type._($core.int v, $core.String n) : super(v, n);
}

class dial_operate_type extends $pb.ProtobufEnum {
  static const dial_operate_type DIAL_OPERATE_TYPE_INQUIRE = dial_operate_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_OPERATE_TYPE_INQUIRE');
  static const dial_operate_type DIAL_OPERATE_TYPE_SET = dial_operate_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_OPERATE_TYPE_SET');
  static const dial_operate_type DIAL_OPERATE_TYPE_DELETE = dial_operate_type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIAL_OPERATE_TYPE_DELETE');

  static const $core.List<dial_operate_type> values = <dial_operate_type> [
    DIAL_OPERATE_TYPE_INQUIRE,
    DIAL_OPERATE_TYPE_SET,
    DIAL_OPERATE_TYPE_DELETE,
  ];

  static final $core.Map<$core.int, dial_operate_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static dial_operate_type? valueOf($core.int value) => _byValue[value];

  const dial_operate_type._($core.int v, $core.String n) : super(v, n);
}

