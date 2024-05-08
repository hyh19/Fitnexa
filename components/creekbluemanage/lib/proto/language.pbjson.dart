///
//  Generated code. Do not modify.
//  source: language.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use operate_typeDescriptor instead')
const operate_type$json = const {
  '1': 'operate_type',
  '2': const [
    const {'1': 'INVALID', '2': 0},
    const {'1': 'INQUIRE', '2': 1},
    const {'1': 'SET', '2': 2},
  ],
};

/// Descriptor for `operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operate_typeDescriptor = $convert.base64Decode('CgxvcGVyYXRlX3R5cGUSCwoHSU5WQUxJRBAAEgsKB0lOUVVJUkUQARIHCgNTRVQQAg==');
@$core.Deprecated('Use languageDescriptor instead')
const language$json = const {
  '1': 'language',
  '2': const [
    const {'1': 'LANG_INVALID', '2': 0},
    const {'1': 'CHINESE', '2': 1},
    const {'1': 'ENGLISH', '2': 2},
    const {'1': 'GERMAN', '2': 3},
    const {'1': 'SPANISH', '2': 4},
    const {'1': 'ITALIAN', '2': 5},
    const {'1': 'JAPANESE', '2': 6},
    const {'1': 'RUSSIAN', '2': 7},
    const {'1': 'PORTUGUESE', '2': 8},
    const {'1': 'FRENCH', '2': 9},
  ],
};

/// Descriptor for `language`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List languageDescriptor = $convert.base64Decode('CghsYW5ndWFnZRIQCgxMQU5HX0lOVkFMSUQQABILCgdDSElORVNFEAESCwoHRU5HTElTSBACEgoKBkdFUk1BThADEgsKB1NQQU5JU0gQBBILCgdJVEFMSUFOEAUSDAoISkFQQU5FU0UQBhILCgdSVVNTSUFOEAcSDgoKUE9SVFVHVUVTRRAIEgoKBkZSRU5DSBAJ');
@$core.Deprecated('Use protocol_language_operateDescriptor instead')
const protocol_language_operate$json = const {
  '1': 'protocol_language_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'cur_language', '3': 2, '4': 1, '5': 14, '6': '.language', '10': 'curLanguage'},
  ],
};

/// Descriptor for `protocol_language_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_language_operateDescriptor = $convert.base64Decode('Chlwcm90b2NvbF9sYW5ndWFnZV9vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSLAoMY3VyX2xhbmd1YWdlGAIgASgOMgkubGFuZ3VhZ2VSC2N1ckxhbmd1YWdl');
@$core.Deprecated('Use protocol_language_inquire_replyDescriptor instead')
const protocol_language_inquire_reply$json = const {
  '1': 'protocol_language_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'cur_language', '3': 2, '4': 1, '5': 14, '6': '.language', '10': 'curLanguage'},
    const {'1': 'chinese_support', '3': 3, '4': 1, '5': 8, '10': 'chineseSupport'},
    const {'1': 'english_support', '3': 4, '4': 1, '5': 8, '10': 'englishSupport'},
    const {'1': 'german_support', '3': 5, '4': 1, '5': 8, '10': 'germanSupport'},
    const {'1': 'spanish_support', '3': 6, '4': 1, '5': 8, '10': 'spanishSupport'},
    const {'1': 'italian_support', '3': 7, '4': 1, '5': 8, '10': 'italianSupport'},
    const {'1': 'janpanese_support', '3': 8, '4': 1, '5': 8, '10': 'janpaneseSupport'},
    const {'1': 'russian_support', '3': 9, '4': 1, '5': 8, '10': 'russianSupport'},
    const {'1': 'portuguese_support', '3': 10, '4': 1, '5': 8, '10': 'portugueseSupport'},
    const {'1': 'french_support', '3': 11, '4': 1, '5': 8, '10': 'frenchSupport'},
  ],
};

/// Descriptor for `protocol_language_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_language_inquire_replyDescriptor = $convert.base64Decode('Ch9wcm90b2NvbF9sYW5ndWFnZV9pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSLAoMY3VyX2xhbmd1YWdlGAIgASgOMgkubGFuZ3VhZ2VSC2N1ckxhbmd1YWdlEicKD2NoaW5lc2Vfc3VwcG9ydBgDIAEoCFIOY2hpbmVzZVN1cHBvcnQSJwoPZW5nbGlzaF9zdXBwb3J0GAQgASgIUg5lbmdsaXNoU3VwcG9ydBIlCg5nZXJtYW5fc3VwcG9ydBgFIAEoCFINZ2VybWFuU3VwcG9ydBInCg9zcGFuaXNoX3N1cHBvcnQYBiABKAhSDnNwYW5pc2hTdXBwb3J0EicKD2l0YWxpYW5fc3VwcG9ydBgHIAEoCFIOaXRhbGlhblN1cHBvcnQSKwoRamFucGFuZXNlX3N1cHBvcnQYCCABKAhSEGphbnBhbmVzZVN1cHBvcnQSJwoPcnVzc2lhbl9zdXBwb3J0GAkgASgIUg5ydXNzaWFuU3VwcG9ydBItChJwb3J0dWd1ZXNlX3N1cHBvcnQYCiABKAhSEXBvcnR1Z3Vlc2VTdXBwb3J0EiUKDmZyZW5jaF9zdXBwb3J0GAsgASgIUg1mcmVuY2hTdXBwb3J0');
