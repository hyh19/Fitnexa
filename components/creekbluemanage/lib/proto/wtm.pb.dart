///
//  Generated code. Do not modify.
//  source: wtm.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wtm.pbenum.dart';

export 'wtm.pbenum.dart';

class protocol_wtm_download_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_wtm_download_operate', createEmptyInstance: create)
    ..e<wtm_operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: wtm_operate_type.WTM_START, valueOf: wtm_operate_type.valueOf, enumValues: wtm_operate_type.values)
    ..hasRequiredFields = false
  ;

  protocol_wtm_download_operate._() : super();
  factory protocol_wtm_download_operate({
    wtm_operate_type? operate,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    return _result;
  }
  factory protocol_wtm_download_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_wtm_download_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_wtm_download_operate clone() => protocol_wtm_download_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_wtm_download_operate copyWith(void Function(protocol_wtm_download_operate) updates) => super.copyWith((message) => updates(message as protocol_wtm_download_operate)) as protocol_wtm_download_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_wtm_download_operate create() => protocol_wtm_download_operate._();
  protocol_wtm_download_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_wtm_download_operate> createRepeated() => $pb.PbList<protocol_wtm_download_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_wtm_download_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_wtm_download_operate>(create);
  static protocol_wtm_download_operate? _defaultInstance;

  @$pb.TagNumber(1)
  wtm_operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(wtm_operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);
}

