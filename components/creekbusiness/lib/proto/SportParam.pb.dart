///
//  Generated code. Do not modify.
//  source: SportParam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SportParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SportParam', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDateTime')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDateTime')
    ..hasRequiredFields = false
  ;

  SportParam._() : super();
  factory SportParam({
    $core.String? macId,
    $core.String? startDateTime,
    $core.String? endDateTime,
  }) {
    final _result = create();
    if (macId != null) {
      _result.macId = macId;
    }
    if (startDateTime != null) {
      _result.startDateTime = startDateTime;
    }
    if (endDateTime != null) {
      _result.endDateTime = endDateTime;
    }
    return _result;
  }
  factory SportParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SportParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SportParam clone() => SportParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SportParam copyWith(void Function(SportParam) updates) => super.copyWith((message) => updates(message as SportParam)) as SportParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SportParam create() => SportParam._();
  SportParam createEmptyInstance() => create();
  static $pb.PbList<SportParam> createRepeated() => $pb.PbList<SportParam>();
  @$core.pragma('dart2js:noInline')
  static SportParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SportParam>(create);
  static SportParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get macId => $_getSZ(0);
  @$pb.TagNumber(1)
  set macId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMacId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get startDateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set startDateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartDateTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get endDateTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set endDateTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndDateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndDateTime() => clearField(3);
}

