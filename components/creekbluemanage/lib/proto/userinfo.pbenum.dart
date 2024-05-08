//
//  Generated code. Do not modify.
//  source: userinfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;


class gender_type extends $pb.ProtobufEnum {
  static const gender_type GENDER_MALE = gender_type._(0, _omitEnumNames ? '' : 'GENDER_MALE');
  static const gender_type GENDER_FEMALE = gender_type._(1, _omitEnumNames ? '' : 'GENDER_FEMALE');
  static const gender_type GENDER_OTHER = gender_type._(2, _omitEnumNames ? '' : 'GENDER_OTHER');

  static const $core.List<gender_type> values = <gender_type> [
    GENDER_MALE,
    GENDER_FEMALE,
    GENDER_OTHER,
  ];

  static final $core.Map<$core.int, gender_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static gender_type? valueOf($core.int value) => _byValue[value];

  const gender_type._($core.int v, $core.String n) : super(v, n);
}



const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
