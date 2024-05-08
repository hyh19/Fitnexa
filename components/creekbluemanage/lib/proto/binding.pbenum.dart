///
//  Generated code. Do not modify.
//  source: binding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class bind_method extends $pb.ProtobufEnum {
  static const bind_method BIND_ENCRYPTED = bind_method._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_ENCRYPTED');
  static const bind_method BIND_NORMAL = bind_method._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_NORMAL');
  static const bind_method BIND_REMOVE = bind_method._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_REMOVE');
  static const bind_method BIND_PAIRING_CODE = bind_method._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_PAIRING_CODE');

  static const $core.List<bind_method> values = <bind_method> [
    BIND_ENCRYPTED,
    BIND_NORMAL,
    BIND_REMOVE,
    BIND_PAIRING_CODE,
  ];

  static final $core.Map<$core.int, bind_method> _byValue = $pb.ProtobufEnum.initByValue(values);
  static bind_method? valueOf($core.int value) => _byValue[value];

  const bind_method._($core.int v, $core.String n) : super(v, n);
}

class bind_flag extends $pb.ProtobufEnum {
  static const bind_flag BIND_FLAG_REQUEST = bind_flag._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_FLAG_REQUEST');
  static const bind_flag BIND_FLAG_FAILED = bind_flag._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_FLAG_FAILED');
  static const bind_flag BIND_FLAG_SUCCESS = bind_flag._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_FLAG_SUCCESS');
  static const bind_flag BIND_FLAG_BOUND = bind_flag._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIND_FLAG_BOUND');

  static const $core.List<bind_flag> values = <bind_flag> [
    BIND_FLAG_REQUEST,
    BIND_FLAG_FAILED,
    BIND_FLAG_SUCCESS,
    BIND_FLAG_BOUND,
  ];

  static final $core.Map<$core.int, bind_flag> _byValue = $pb.ProtobufEnum.initByValue(values);
  static bind_flag? valueOf($core.int value) => _byValue[value];

  const bind_flag._($core.int v, $core.String n) : super(v, n);
}

class bind_phone_type extends $pb.ProtobufEnum {
  static const bind_phone_type ANDROID = bind_phone_type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANDROID');
  static const bind_phone_type IOS = bind_phone_type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IOS');

  static const $core.List<bind_phone_type> values = <bind_phone_type> [
    ANDROID,
    IOS,
  ];

  static final $core.Map<$core.int, bind_phone_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static bind_phone_type? valueOf($core.int value) => _byValue[value];

  const bind_phone_type._($core.int v, $core.String n) : super(v, n);
}

