///
//  Generated code. Do not modify.
//  source: language.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'language.pbenum.dart';

export 'language.pbenum.dart';

class protocol_language_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_language_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<language>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'curLanguage', $pb.PbFieldType.OE, defaultOrMaker: language.LANG_INVALID, valueOf: language.valueOf, enumValues: language.values)
    ..hasRequiredFields = false
  ;

  protocol_language_operate._() : super();
  factory protocol_language_operate({
    operate_type? operate,
    language? curLanguage,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (curLanguage != null) {
      _result.curLanguage = curLanguage;
    }
    return _result;
  }
  factory protocol_language_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_language_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_language_operate clone() => protocol_language_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_language_operate copyWith(void Function(protocol_language_operate) updates) => super.copyWith((message) => updates(message as protocol_language_operate)) as protocol_language_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_language_operate create() => protocol_language_operate._();
  protocol_language_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_language_operate> createRepeated() => $pb.PbList<protocol_language_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_language_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_language_operate>(create);
  static protocol_language_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  language get curLanguage => $_getN(1);
  @$pb.TagNumber(2)
  set curLanguage(language v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurLanguage() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurLanguage() => clearField(2);
}

class protocol_language_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_language_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<language>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'curLanguage', $pb.PbFieldType.OE, defaultOrMaker: language.LANG_INVALID, valueOf: language.valueOf, enumValues: language.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chineseSupport')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'englishSupport')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'germanSupport')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spanishSupport')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'italianSupport')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'janpaneseSupport')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'russianSupport')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'portugueseSupport')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frenchSupport')
    ..hasRequiredFields = false
  ;

  protocol_language_inquire_reply._() : super();
  factory protocol_language_inquire_reply({
    operate_type? operate,
    language? curLanguage,
    $core.bool? chineseSupport,
    $core.bool? englishSupport,
    $core.bool? germanSupport,
    $core.bool? spanishSupport,
    $core.bool? italianSupport,
    $core.bool? janpaneseSupport,
    $core.bool? russianSupport,
    $core.bool? portugueseSupport,
    $core.bool? frenchSupport,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (curLanguage != null) {
      _result.curLanguage = curLanguage;
    }
    if (chineseSupport != null) {
      _result.chineseSupport = chineseSupport;
    }
    if (englishSupport != null) {
      _result.englishSupport = englishSupport;
    }
    if (germanSupport != null) {
      _result.germanSupport = germanSupport;
    }
    if (spanishSupport != null) {
      _result.spanishSupport = spanishSupport;
    }
    if (italianSupport != null) {
      _result.italianSupport = italianSupport;
    }
    if (janpaneseSupport != null) {
      _result.janpaneseSupport = janpaneseSupport;
    }
    if (russianSupport != null) {
      _result.russianSupport = russianSupport;
    }
    if (portugueseSupport != null) {
      _result.portugueseSupport = portugueseSupport;
    }
    if (frenchSupport != null) {
      _result.frenchSupport = frenchSupport;
    }
    return _result;
  }
  factory protocol_language_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_language_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_language_inquire_reply clone() => protocol_language_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_language_inquire_reply copyWith(void Function(protocol_language_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_language_inquire_reply)) as protocol_language_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_language_inquire_reply create() => protocol_language_inquire_reply._();
  protocol_language_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_language_inquire_reply> createRepeated() => $pb.PbList<protocol_language_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_language_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_language_inquire_reply>(create);
  static protocol_language_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  language get curLanguage => $_getN(1);
  @$pb.TagNumber(2)
  set curLanguage(language v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurLanguage() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurLanguage() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get chineseSupport => $_getBF(2);
  @$pb.TagNumber(3)
  set chineseSupport($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChineseSupport() => $_has(2);
  @$pb.TagNumber(3)
  void clearChineseSupport() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get englishSupport => $_getBF(3);
  @$pb.TagNumber(4)
  set englishSupport($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnglishSupport() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnglishSupport() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get germanSupport => $_getBF(4);
  @$pb.TagNumber(5)
  set germanSupport($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGermanSupport() => $_has(4);
  @$pb.TagNumber(5)
  void clearGermanSupport() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get spanishSupport => $_getBF(5);
  @$pb.TagNumber(6)
  set spanishSupport($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSpanishSupport() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpanishSupport() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get italianSupport => $_getBF(6);
  @$pb.TagNumber(7)
  set italianSupport($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasItalianSupport() => $_has(6);
  @$pb.TagNumber(7)
  void clearItalianSupport() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get janpaneseSupport => $_getBF(7);
  @$pb.TagNumber(8)
  set janpaneseSupport($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasJanpaneseSupport() => $_has(7);
  @$pb.TagNumber(8)
  void clearJanpaneseSupport() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get russianSupport => $_getBF(8);
  @$pb.TagNumber(9)
  set russianSupport($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRussianSupport() => $_has(8);
  @$pb.TagNumber(9)
  void clearRussianSupport() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get portugueseSupport => $_getBF(9);
  @$pb.TagNumber(10)
  set portugueseSupport($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPortugueseSupport() => $_has(9);
  @$pb.TagNumber(10)
  void clearPortugueseSupport() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get frenchSupport => $_getBF(10);
  @$pb.TagNumber(11)
  set frenchSupport($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFrenchSupport() => $_has(10);
  @$pb.TagNumber(11)
  void clearFrenchSupport() => clearField(11);
}

