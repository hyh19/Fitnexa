//
//  Generated code. Do not modify.
//  source: Param.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Param extends $pb.GeneratedMessage {
  factory Param({
    $core.int? type,
    $core.String? startDateTime,
    $core.String? endDateTime,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (startDateTime != null) {
      $result.startDateTime = startDateTime;
    }
    if (endDateTime != null) {
      $result.endDateTime = endDateTime;
    }
    return $result;
  }
  Param._() : super();
  factory Param.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Param.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Param', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'startDateTime')
    ..aOS(3, _omitFieldNames ? '' : 'endDateTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Param clone() => Param()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Param copyWith(void Function(Param) updates) => super.copyWith((message) => updates(message as Param)) as Param;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Param create() => Param._();
  Param createEmptyInstance() => create();
  static $pb.PbList<Param> createRepeated() => $pb.PbList<Param>();
  @$core.pragma('dart2js:noInline')
  static Param getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Param>(create);
  static Param? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
