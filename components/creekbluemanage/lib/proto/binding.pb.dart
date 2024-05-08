///
//  Generated code. Do not modify.
//  source: binding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'binding.pbenum.dart';

export 'binding.pbenum.dart';

class protocol_bind_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_bind_operate', createEmptyInstance: create)
    ..e<bind_method>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bindMethod', $pb.PbFieldType.OE, defaultOrMaker: bind_method.BIND_ENCRYPTED, valueOf: bind_method.valueOf, enumValues: bind_method.values)
    ..e<bind_flag>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bindFlag', $pb.PbFieldType.OE, defaultOrMaker: bind_flag.BIND_FLAG_REQUEST, valueOf: bind_flag.valueOf, enumValues: bind_flag.values)
    ..e<bind_phone_type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bindPhone', $pb.PbFieldType.OE, defaultOrMaker: bind_phone_type.ANDROID, valueOf: bind_phone_type.valueOf, enumValues: bind_phone_type.values)
    ..hasRequiredFields = false
  ;

  protocol_bind_operate._() : super();
  factory protocol_bind_operate({
    bind_method? bindMethod,
    bind_flag? bindFlag,
    bind_phone_type? bindPhone,
  }) {
    final _result = create();
    if (bindMethod != null) {
      _result.bindMethod = bindMethod;
    }
    if (bindFlag != null) {
      _result.bindFlag = bindFlag;
    }
    if (bindPhone != null) {
      _result.bindPhone = bindPhone;
    }
    return _result;
  }
  factory protocol_bind_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_bind_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_bind_operate clone() => protocol_bind_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_bind_operate copyWith(void Function(protocol_bind_operate) updates) => super.copyWith((message) => updates(message as protocol_bind_operate)) as protocol_bind_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_bind_operate create() => protocol_bind_operate._();
  protocol_bind_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_bind_operate> createRepeated() => $pb.PbList<protocol_bind_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_bind_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_bind_operate>(create);
  static protocol_bind_operate? _defaultInstance;

  @$pb.TagNumber(1)
  bind_method get bindMethod => $_getN(0);
  @$pb.TagNumber(1)
  set bindMethod(bind_method v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBindMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearBindMethod() => clearField(1);

  @$pb.TagNumber(2)
  bind_flag get bindFlag => $_getN(1);
  @$pb.TagNumber(2)
  set bindFlag(bind_flag v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBindFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearBindFlag() => clearField(2);

  @$pb.TagNumber(3)
  bind_phone_type get bindPhone => $_getN(2);
  @$pb.TagNumber(3)
  set bindPhone(bind_phone_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBindPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearBindPhone() => clearField(3);
}

class protocol_bind_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_bind_reply', createEmptyInstance: create)
    ..e<bind_method>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bindMethod', $pb.PbFieldType.OE, defaultOrMaker: bind_method.BIND_ENCRYPTED, valueOf: bind_method.valueOf, enumValues: bind_method.values)
    ..e<bind_flag>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bindFlag', $pb.PbFieldType.OE, defaultOrMaker: bind_flag.BIND_FLAG_REQUEST, valueOf: bind_flag.valueOf, enumValues: bind_flag.values)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'competentData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pairingCode', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  protocol_bind_reply._() : super();
  factory protocol_bind_reply({
    bind_method? bindMethod,
    bind_flag? bindFlag,
    $core.List<$core.int>? competentData,
    $core.List<$core.int>? pairingCode,
  }) {
    final _result = create();
    if (bindMethod != null) {
      _result.bindMethod = bindMethod;
    }
    if (bindFlag != null) {
      _result.bindFlag = bindFlag;
    }
    if (competentData != null) {
      _result.competentData = competentData;
    }
    if (pairingCode != null) {
      _result.pairingCode = pairingCode;
    }
    return _result;
  }
  factory protocol_bind_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_bind_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_bind_reply clone() => protocol_bind_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_bind_reply copyWith(void Function(protocol_bind_reply) updates) => super.copyWith((message) => updates(message as protocol_bind_reply)) as protocol_bind_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_bind_reply create() => protocol_bind_reply._();
  protocol_bind_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_bind_reply> createRepeated() => $pb.PbList<protocol_bind_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_bind_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_bind_reply>(create);
  static protocol_bind_reply? _defaultInstance;

  @$pb.TagNumber(1)
  bind_method get bindMethod => $_getN(0);
  @$pb.TagNumber(1)
  set bindMethod(bind_method v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBindMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearBindMethod() => clearField(1);

  @$pb.TagNumber(2)
  bind_flag get bindFlag => $_getN(1);
  @$pb.TagNumber(2)
  set bindFlag(bind_flag v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBindFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearBindFlag() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get competentData => $_getN(2);
  @$pb.TagNumber(3)
  set competentData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompetentData() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompetentData() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pairingCode => $_getN(3);
  @$pb.TagNumber(4)
  set pairingCode($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPairingCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearPairingCode() => clearField(4);
}

