///
//  Generated code. Do not modify.
//  source: contacts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'contacts.pbenum.dart';

export 'contacts.pbenum.dart';

class protocol_frequent_contacts_item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_frequent_contacts_item', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contactName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  protocol_frequent_contacts_item._() : super();
  factory protocol_frequent_contacts_item({
    $core.List<$core.int>? phoneNumber,
    $core.List<$core.int>? contactName,
  }) {
    final _result = create();
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (contactName != null) {
      _result.contactName = contactName;
    }
    return _result;
  }
  factory protocol_frequent_contacts_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_frequent_contacts_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_frequent_contacts_item clone() => protocol_frequent_contacts_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_frequent_contacts_item copyWith(void Function(protocol_frequent_contacts_item) updates) => super.copyWith((message) => updates(message as protocol_frequent_contacts_item)) as protocol_frequent_contacts_item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_frequent_contacts_item create() => protocol_frequent_contacts_item._();
  protocol_frequent_contacts_item createEmptyInstance() => create();
  static $pb.PbList<protocol_frequent_contacts_item> createRepeated() => $pb.PbList<protocol_frequent_contacts_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_frequent_contacts_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_frequent_contacts_item>(create);
  static protocol_frequent_contacts_item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get phoneNumber => $_getN(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get contactName => $_getN(1);
  @$pb.TagNumber(2)
  set contactName($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContactName() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactName() => clearField(2);
}

class protocol_frequent_contacts_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_frequent_contacts_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..pc<protocol_frequent_contacts_item>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contactsItem', $pb.PbFieldType.PM, subBuilder: protocol_frequent_contacts_item.create)
    ..hasRequiredFields = false
  ;

  protocol_frequent_contacts_operate._() : super();
  factory protocol_frequent_contacts_operate({
    operate_type? operate,
    $core.Iterable<protocol_frequent_contacts_item>? contactsItem,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (contactsItem != null) {
      _result.contactsItem.addAll(contactsItem);
    }
    return _result;
  }
  factory protocol_frequent_contacts_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_frequent_contacts_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_frequent_contacts_operate clone() => protocol_frequent_contacts_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_frequent_contacts_operate copyWith(void Function(protocol_frequent_contacts_operate) updates) => super.copyWith((message) => updates(message as protocol_frequent_contacts_operate)) as protocol_frequent_contacts_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_frequent_contacts_operate create() => protocol_frequent_contacts_operate._();
  protocol_frequent_contacts_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_frequent_contacts_operate> createRepeated() => $pb.PbList<protocol_frequent_contacts_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_frequent_contacts_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_frequent_contacts_operate>(create);
  static protocol_frequent_contacts_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<protocol_frequent_contacts_item> get contactsItem => $_getList(1);
}

class protocol_frequent_contacts_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_frequent_contacts_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frequentContactsSupportMax', $pb.PbFieldType.OU3)
    ..pc<protocol_frequent_contacts_item>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contactsItem', $pb.PbFieldType.PM, subBuilder: protocol_frequent_contacts_item.create)
    ..hasRequiredFields = false
  ;

  protocol_frequent_contacts_inquire_reply._() : super();
  factory protocol_frequent_contacts_inquire_reply({
    operate_type? operate,
    $core.int? frequentContactsSupportMax,
    $core.Iterable<protocol_frequent_contacts_item>? contactsItem,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (frequentContactsSupportMax != null) {
      _result.frequentContactsSupportMax = frequentContactsSupportMax;
    }
    if (contactsItem != null) {
      _result.contactsItem.addAll(contactsItem);
    }
    return _result;
  }
  factory protocol_frequent_contacts_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_frequent_contacts_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_frequent_contacts_inquire_reply clone() => protocol_frequent_contacts_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_frequent_contacts_inquire_reply copyWith(void Function(protocol_frequent_contacts_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_frequent_contacts_inquire_reply)) as protocol_frequent_contacts_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_frequent_contacts_inquire_reply create() => protocol_frequent_contacts_inquire_reply._();
  protocol_frequent_contacts_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_frequent_contacts_inquire_reply> createRepeated() => $pb.PbList<protocol_frequent_contacts_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_frequent_contacts_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_frequent_contacts_inquire_reply>(create);
  static protocol_frequent_contacts_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get frequentContactsSupportMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set frequentContactsSupportMax($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrequentContactsSupportMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrequentContactsSupportMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<protocol_frequent_contacts_item> get contactsItem => $_getList(2);
}

