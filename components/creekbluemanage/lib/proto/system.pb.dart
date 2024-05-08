///
//  Generated code. Do not modify.
//  source: system.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class protocol_system_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_system_operate', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'restart')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerOff')
    ..hasRequiredFields = false
  ;

  protocol_system_operate._() : super();
  factory protocol_system_operate({
    $core.bool? restart,
    $core.bool? powerOff,
  }) {
    final _result = create();
    if (restart != null) {
      _result.restart = restart;
    }
    if (powerOff != null) {
      _result.powerOff = powerOff;
    }
    return _result;
  }
  factory protocol_system_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_system_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_system_operate clone() => protocol_system_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_system_operate copyWith(void Function(protocol_system_operate) updates) => super.copyWith((message) => updates(message as protocol_system_operate)) as protocol_system_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_system_operate create() => protocol_system_operate._();
  protocol_system_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_system_operate> createRepeated() => $pb.PbList<protocol_system_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_system_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_system_operate>(create);
  static protocol_system_operate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get restart => $_getBF(0);
  @$pb.TagNumber(1)
  set restart($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRestart() => $_has(0);
  @$pb.TagNumber(1)
  void clearRestart() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get powerOff => $_getBF(1);
  @$pb.TagNumber(2)
  set powerOff($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPowerOff() => $_has(1);
  @$pb.TagNumber(2)
  void clearPowerOff() => clearField(2);
}

