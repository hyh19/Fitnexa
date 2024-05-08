///
//  Generated code. Do not modify.
//  source: language.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class language extends $pb.ProtobufEnum {
  static const language LANG_INVALID = language._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LANG_INVALID');
  static const language CHINESE = language._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHINESE');
  static const language ENGLISH = language._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENGLISH');
  static const language GERMAN = language._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GERMAN');
  static const language SPANISH = language._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPANISH');
  static const language ITALIAN = language._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITALIAN');
  static const language JAPANESE = language._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JAPANESE');
  static const language RUSSIAN = language._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RUSSIAN');
  static const language PORTUGUESE = language._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PORTUGUESE');
  static const language FRENCH = language._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FRENCH');

  static const $core.List<language> values = <language> [
    LANG_INVALID,
    CHINESE,
    ENGLISH,
    GERMAN,
    SPANISH,
    ITALIAN,
    JAPANESE,
    RUSSIAN,
    PORTUGUESE,
    FRENCH,
  ];

  static final $core.Map<$core.int, language> _byValue = $pb.ProtobufEnum.initByValue(values);
  static language? valueOf($core.int value) => _byValue[value];

  const language._($core.int v, $core.String n) : super(v, n);
}

