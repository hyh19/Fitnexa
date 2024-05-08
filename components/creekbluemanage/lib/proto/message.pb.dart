//
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'message.pbenum.dart';

export 'message.pbenum.dart';

class protocol_message_notify_switch_item extends $pb.GeneratedMessage {
  factory protocol_message_notify_switch_item({
    message_remind_type? remindType,
    notify_type? notifyFlag,
  }) {
    final $result = create();
    if (remindType != null) {
      $result.remindType = remindType;
    }
    if (notifyFlag != null) {
      $result.notifyFlag = notifyFlag;
    }
    return $result;
  }
  protocol_message_notify_switch_item._() : super();
  factory protocol_message_notify_switch_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_message_notify_switch_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_message_notify_switch_item', createEmptyInstance: create)
    ..e<message_remind_type>(1, _omitFieldNames ? '' : 'remindType', $pb.PbFieldType.OE, defaultOrMaker: message_remind_type.NULL, valueOf: message_remind_type.valueOf, enumValues: message_remind_type.values)
    ..e<notify_type>(2, _omitFieldNames ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_message_notify_switch_item clone() => protocol_message_notify_switch_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_message_notify_switch_item copyWith(void Function(protocol_message_notify_switch_item) updates) => super.copyWith((message) => updates(message as protocol_message_notify_switch_item)) as protocol_message_notify_switch_item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_switch_item create() => protocol_message_notify_switch_item._();
  protocol_message_notify_switch_item createEmptyInstance() => create();
  static $pb.PbList<protocol_message_notify_switch_item> createRepeated() => $pb.PbList<protocol_message_notify_switch_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_switch_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_message_notify_switch_item>(create);
  static protocol_message_notify_switch_item? _defaultInstance;

  @$pb.TagNumber(1)
  message_remind_type get remindType => $_getN(0);
  @$pb.TagNumber(1)
  set remindType(message_remind_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemindType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemindType() => clearField(1);

  @$pb.TagNumber(2)
  notify_type get notifyFlag => $_getN(1);
  @$pb.TagNumber(2)
  set notifyFlag(notify_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifyFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifyFlag() => clearField(2);
}

/// 获取设备支持消息类型
class protocol_message_notify_func_support_reply extends $pb.GeneratedMessage {
  factory protocol_message_notify_func_support_reply({
    $core.bool? sms,
    $core.bool? email,
    $core.bool? calendar,
    $core.bool? missedCall,
    $core.bool? facebook,
    $core.bool? twitter,
    $core.bool? instagram,
    $core.bool? snapchat,
    $core.bool? whatsapp,
    $core.bool? line,
    $core.bool? tiktok,
    $core.bool? skype,
    $core.bool? wechat,
    $core.bool? fitbeing,
    $core.bool? microsoftTeams,
    $core.bool? telegramMessenger,
    $core.bool? messenger,
    $core.bool? linkedin,
    $core.bool? gmail,
    $core.bool? microsoftOutlook,
    $core.bool? googleChat,
    $core.bool? qq,
    $core.bool? whatsappBusiness,
    $core.bool? youtube,
    $core.bool? uber,
    $core.bool? uberEats,
    $core.bool? doorDashMissing,
    $core.bool? bancoGeneral,
    $core.bool? bACBank,
    $core.bool? googleMaps,
    $core.bool? amazonShopping,
    $core.bool? spotify,
    $core.bool? discord,
    $core.bool? remindTypeMax,
  }) {
    final $result = create();
    if (sms != null) {
      $result.sms = sms;
    }
    if (email != null) {
      $result.email = email;
    }
    if (calendar != null) {
      $result.calendar = calendar;
    }
    if (missedCall != null) {
      $result.missedCall = missedCall;
    }
    if (facebook != null) {
      $result.facebook = facebook;
    }
    if (twitter != null) {
      $result.twitter = twitter;
    }
    if (instagram != null) {
      $result.instagram = instagram;
    }
    if (snapchat != null) {
      $result.snapchat = snapchat;
    }
    if (whatsapp != null) {
      $result.whatsapp = whatsapp;
    }
    if (line != null) {
      $result.line = line;
    }
    if (tiktok != null) {
      $result.tiktok = tiktok;
    }
    if (skype != null) {
      $result.skype = skype;
    }
    if (wechat != null) {
      $result.wechat = wechat;
    }
    if (fitbeing != null) {
      $result.fitbeing = fitbeing;
    }
    if (microsoftTeams != null) {
      $result.microsoftTeams = microsoftTeams;
    }
    if (telegramMessenger != null) {
      $result.telegramMessenger = telegramMessenger;
    }
    if (messenger != null) {
      $result.messenger = messenger;
    }
    if (linkedin != null) {
      $result.linkedin = linkedin;
    }
    if (gmail != null) {
      $result.gmail = gmail;
    }
    if (microsoftOutlook != null) {
      $result.microsoftOutlook = microsoftOutlook;
    }
    if (googleChat != null) {
      $result.googleChat = googleChat;
    }
    if (qq != null) {
      $result.qq = qq;
    }
    if (whatsappBusiness != null) {
      $result.whatsappBusiness = whatsappBusiness;
    }
    if (youtube != null) {
      $result.youtube = youtube;
    }
    if (uber != null) {
      $result.uber = uber;
    }
    if (uberEats != null) {
      $result.uberEats = uberEats;
    }
    if (doorDashMissing != null) {
      $result.doorDashMissing = doorDashMissing;
    }
    if (bancoGeneral != null) {
      $result.bancoGeneral = bancoGeneral;
    }
    if (bACBank != null) {
      $result.bACBank = bACBank;
    }
    if (googleMaps != null) {
      $result.googleMaps = googleMaps;
    }
    if (amazonShopping != null) {
      $result.amazonShopping = amazonShopping;
    }
    if (spotify != null) {
      $result.spotify = spotify;
    }
    if (discord != null) {
      $result.discord = discord;
    }
    if (remindTypeMax != null) {
      $result.remindTypeMax = remindTypeMax;
    }
    return $result;
  }
  protocol_message_notify_func_support_reply._() : super();
  factory protocol_message_notify_func_support_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_message_notify_func_support_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_message_notify_func_support_reply', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'sms')
    ..aOB(2, _omitFieldNames ? '' : 'email')
    ..aOB(3, _omitFieldNames ? '' : 'calendar')
    ..aOB(4, _omitFieldNames ? '' : 'missedCall')
    ..aOB(5, _omitFieldNames ? '' : 'facebook')
    ..aOB(6, _omitFieldNames ? '' : 'twitter')
    ..aOB(7, _omitFieldNames ? '' : 'instagram')
    ..aOB(8, _omitFieldNames ? '' : 'snapchat')
    ..aOB(9, _omitFieldNames ? '' : 'whatsapp')
    ..aOB(10, _omitFieldNames ? '' : 'line')
    ..aOB(11, _omitFieldNames ? '' : 'tiktok')
    ..aOB(12, _omitFieldNames ? '' : 'skype')
    ..aOB(13, _omitFieldNames ? '' : 'wechat')
    ..aOB(14, _omitFieldNames ? '' : 'Fitbeing', protoName: 'Fitbeing')
    ..aOB(15, _omitFieldNames ? '' : 'microsoftTeams')
    ..aOB(16, _omitFieldNames ? '' : 'telegramMessenger')
    ..aOB(17, _omitFieldNames ? '' : 'messenger')
    ..aOB(18, _omitFieldNames ? '' : 'linkedin')
    ..aOB(19, _omitFieldNames ? '' : 'gmail')
    ..aOB(20, _omitFieldNames ? '' : 'microsoftOutlook')
    ..aOB(21, _omitFieldNames ? '' : 'googleChat')
    ..aOB(22, _omitFieldNames ? '' : 'qq')
    ..aOB(23, _omitFieldNames ? '' : 'whatsappBusiness')
    ..aOB(24, _omitFieldNames ? '' : 'Youtube', protoName: 'Youtube')
    ..aOB(25, _omitFieldNames ? '' : 'Uber', protoName: 'Uber')
    ..aOB(26, _omitFieldNames ? '' : 'UberEats', protoName: 'Uber_eats')
    ..aOB(27, _omitFieldNames ? '' : 'DoorDashMissing', protoName: 'Door_Dash_missing')
    ..aOB(28, _omitFieldNames ? '' : 'BancoGeneral', protoName: 'Banco_General')
    ..aOB(29, _omitFieldNames ? '' : 'BACBank', protoName: 'BAC_Bank')
    ..aOB(30, _omitFieldNames ? '' : 'GoogleMaps', protoName: 'Google_Maps')
    ..aOB(31, _omitFieldNames ? '' : 'AmazonShopping', protoName: 'Amazon_shopping')
    ..aOB(32, _omitFieldNames ? '' : 'Spotify', protoName: 'Spotify')
    ..aOB(33, _omitFieldNames ? '' : 'Discord', protoName: 'Discord')
    ..aOB(34, _omitFieldNames ? '' : 'remindTypeMax')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_message_notify_func_support_reply clone() => protocol_message_notify_func_support_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_message_notify_func_support_reply copyWith(void Function(protocol_message_notify_func_support_reply) updates) => super.copyWith((message) => updates(message as protocol_message_notify_func_support_reply)) as protocol_message_notify_func_support_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_func_support_reply create() => protocol_message_notify_func_support_reply._();
  protocol_message_notify_func_support_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_message_notify_func_support_reply> createRepeated() => $pb.PbList<protocol_message_notify_func_support_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_func_support_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_message_notify_func_support_reply>(create);
  static protocol_message_notify_func_support_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sms => $_getBF(0);
  @$pb.TagNumber(1)
  set sms($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSms() => $_has(0);
  @$pb.TagNumber(1)
  void clearSms() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get email => $_getBF(1);
  @$pb.TagNumber(2)
  set email($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get calendar => $_getBF(2);
  @$pb.TagNumber(3)
  set calendar($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCalendar() => $_has(2);
  @$pb.TagNumber(3)
  void clearCalendar() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get missedCall => $_getBF(3);
  @$pb.TagNumber(4)
  set missedCall($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMissedCall() => $_has(3);
  @$pb.TagNumber(4)
  void clearMissedCall() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get facebook => $_getBF(4);
  @$pb.TagNumber(5)
  set facebook($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFacebook() => $_has(4);
  @$pb.TagNumber(5)
  void clearFacebook() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get twitter => $_getBF(5);
  @$pb.TagNumber(6)
  set twitter($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTwitter() => $_has(5);
  @$pb.TagNumber(6)
  void clearTwitter() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get instagram => $_getBF(6);
  @$pb.TagNumber(7)
  set instagram($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasInstagram() => $_has(6);
  @$pb.TagNumber(7)
  void clearInstagram() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get snapchat => $_getBF(7);
  @$pb.TagNumber(8)
  set snapchat($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSnapchat() => $_has(7);
  @$pb.TagNumber(8)
  void clearSnapchat() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get whatsapp => $_getBF(8);
  @$pb.TagNumber(9)
  set whatsapp($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasWhatsapp() => $_has(8);
  @$pb.TagNumber(9)
  void clearWhatsapp() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get line => $_getBF(9);
  @$pb.TagNumber(10)
  set line($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLine() => $_has(9);
  @$pb.TagNumber(10)
  void clearLine() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get tiktok => $_getBF(10);
  @$pb.TagNumber(11)
  set tiktok($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTiktok() => $_has(10);
  @$pb.TagNumber(11)
  void clearTiktok() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get skype => $_getBF(11);
  @$pb.TagNumber(12)
  set skype($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSkype() => $_has(11);
  @$pb.TagNumber(12)
  void clearSkype() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get wechat => $_getBF(12);
  @$pb.TagNumber(13)
  set wechat($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasWechat() => $_has(12);
  @$pb.TagNumber(13)
  void clearWechat() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get fitbeing => $_getBF(13);
  @$pb.TagNumber(14)
  set fitbeing($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFitbeing() => $_has(13);
  @$pb.TagNumber(14)
  void clearFitbeing() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get microsoftTeams => $_getBF(14);
  @$pb.TagNumber(15)
  set microsoftTeams($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMicrosoftTeams() => $_has(14);
  @$pb.TagNumber(15)
  void clearMicrosoftTeams() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get telegramMessenger => $_getBF(15);
  @$pb.TagNumber(16)
  set telegramMessenger($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasTelegramMessenger() => $_has(15);
  @$pb.TagNumber(16)
  void clearTelegramMessenger() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get messenger => $_getBF(16);
  @$pb.TagNumber(17)
  set messenger($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasMessenger() => $_has(16);
  @$pb.TagNumber(17)
  void clearMessenger() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get linkedin => $_getBF(17);
  @$pb.TagNumber(18)
  set linkedin($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasLinkedin() => $_has(17);
  @$pb.TagNumber(18)
  void clearLinkedin() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get gmail => $_getBF(18);
  @$pb.TagNumber(19)
  set gmail($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasGmail() => $_has(18);
  @$pb.TagNumber(19)
  void clearGmail() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get microsoftOutlook => $_getBF(19);
  @$pb.TagNumber(20)
  set microsoftOutlook($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasMicrosoftOutlook() => $_has(19);
  @$pb.TagNumber(20)
  void clearMicrosoftOutlook() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get googleChat => $_getBF(20);
  @$pb.TagNumber(21)
  set googleChat($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasGoogleChat() => $_has(20);
  @$pb.TagNumber(21)
  void clearGoogleChat() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get qq => $_getBF(21);
  @$pb.TagNumber(22)
  set qq($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasQq() => $_has(21);
  @$pb.TagNumber(22)
  void clearQq() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get whatsappBusiness => $_getBF(22);
  @$pb.TagNumber(23)
  set whatsappBusiness($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasWhatsappBusiness() => $_has(22);
  @$pb.TagNumber(23)
  void clearWhatsappBusiness() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get youtube => $_getBF(23);
  @$pb.TagNumber(24)
  set youtube($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasYoutube() => $_has(23);
  @$pb.TagNumber(24)
  void clearYoutube() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get uber => $_getBF(24);
  @$pb.TagNumber(25)
  set uber($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasUber() => $_has(24);
  @$pb.TagNumber(25)
  void clearUber() => clearField(25);

  @$pb.TagNumber(26)
  $core.bool get uberEats => $_getBF(25);
  @$pb.TagNumber(26)
  set uberEats($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasUberEats() => $_has(25);
  @$pb.TagNumber(26)
  void clearUberEats() => clearField(26);

  @$pb.TagNumber(27)
  $core.bool get doorDashMissing => $_getBF(26);
  @$pb.TagNumber(27)
  set doorDashMissing($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasDoorDashMissing() => $_has(26);
  @$pb.TagNumber(27)
  void clearDoorDashMissing() => clearField(27);

  @$pb.TagNumber(28)
  $core.bool get bancoGeneral => $_getBF(27);
  @$pb.TagNumber(28)
  set bancoGeneral($core.bool v) { $_setBool(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasBancoGeneral() => $_has(27);
  @$pb.TagNumber(28)
  void clearBancoGeneral() => clearField(28);

  @$pb.TagNumber(29)
  $core.bool get bACBank => $_getBF(28);
  @$pb.TagNumber(29)
  set bACBank($core.bool v) { $_setBool(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasBACBank() => $_has(28);
  @$pb.TagNumber(29)
  void clearBACBank() => clearField(29);

  @$pb.TagNumber(30)
  $core.bool get googleMaps => $_getBF(29);
  @$pb.TagNumber(30)
  set googleMaps($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasGoogleMaps() => $_has(29);
  @$pb.TagNumber(30)
  void clearGoogleMaps() => clearField(30);

  @$pb.TagNumber(31)
  $core.bool get amazonShopping => $_getBF(30);
  @$pb.TagNumber(31)
  set amazonShopping($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasAmazonShopping() => $_has(30);
  @$pb.TagNumber(31)
  void clearAmazonShopping() => clearField(31);

  @$pb.TagNumber(32)
  $core.bool get spotify => $_getBF(31);
  @$pb.TagNumber(32)
  set spotify($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasSpotify() => $_has(31);
  @$pb.TagNumber(32)
  void clearSpotify() => clearField(32);

  @$pb.TagNumber(33)
  $core.bool get discord => $_getBF(32);
  @$pb.TagNumber(33)
  set discord($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasDiscord() => $_has(32);
  @$pb.TagNumber(33)
  void clearDiscord() => clearField(33);

  @$pb.TagNumber(34)
  $core.bool get remindTypeMax => $_getBF(33);
  @$pb.TagNumber(34)
  set remindTypeMax($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasRemindTypeMax() => $_has(33);
  @$pb.TagNumber(34)
  void clearRemindTypeMax() => clearField(34);
}

/// app消息提醒
class protocol_message_notify_data extends $pb.GeneratedMessage {
  factory protocol_message_notify_data({
    operate_type? operate,
    notify_os_platform? osPlatform,
    notify_type? notifyFlag,
    message_remind_type? remindType,
    $core.List<$core.int>? contactText,
    $core.List<$core.int>? msgContent,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (osPlatform != null) {
      $result.osPlatform = osPlatform;
    }
    if (notifyFlag != null) {
      $result.notifyFlag = notifyFlag;
    }
    if (remindType != null) {
      $result.remindType = remindType;
    }
    if (contactText != null) {
      $result.contactText = contactText;
    }
    if (msgContent != null) {
      $result.msgContent = msgContent;
    }
    return $result;
  }
  protocol_message_notify_data._() : super();
  factory protocol_message_notify_data.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_message_notify_data.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_message_notify_data', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<notify_os_platform>(2, _omitFieldNames ? '' : 'osPlatform', $pb.PbFieldType.OE, defaultOrMaker: notify_os_platform.ANDROID, valueOf: notify_os_platform.valueOf, enumValues: notify_os_platform.values)
    ..e<notify_type>(3, _omitFieldNames ? '' : 'notifyFlag', $pb.PbFieldType.OE, defaultOrMaker: notify_type.ALLOW, valueOf: notify_type.valueOf, enumValues: notify_type.values)
    ..e<message_remind_type>(4, _omitFieldNames ? '' : 'remindType', $pb.PbFieldType.OE, defaultOrMaker: message_remind_type.NULL, valueOf: message_remind_type.valueOf, enumValues: message_remind_type.values)
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'contactText', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'msgContent', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_message_notify_data clone() => protocol_message_notify_data()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_message_notify_data copyWith(void Function(protocol_message_notify_data) updates) => super.copyWith((message) => updates(message as protocol_message_notify_data)) as protocol_message_notify_data;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_data create() => protocol_message_notify_data._();
  protocol_message_notify_data createEmptyInstance() => create();
  static $pb.PbList<protocol_message_notify_data> createRepeated() => $pb.PbList<protocol_message_notify_data>();
  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_data getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_message_notify_data>(create);
  static protocol_message_notify_data? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  notify_os_platform get osPlatform => $_getN(1);
  @$pb.TagNumber(2)
  set osPlatform(notify_os_platform v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOsPlatform() => $_has(1);
  @$pb.TagNumber(2)
  void clearOsPlatform() => clearField(2);

  @$pb.TagNumber(3)
  notify_type get notifyFlag => $_getN(2);
  @$pb.TagNumber(3)
  set notifyFlag(notify_type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotifyFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotifyFlag() => clearField(3);

  @$pb.TagNumber(4)
  message_remind_type get remindType => $_getN(3);
  @$pb.TagNumber(4)
  set remindType(message_remind_type v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemindType() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemindType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get contactText => $_getN(4);
  @$pb.TagNumber(5)
  set contactText($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContactText() => $_has(4);
  @$pb.TagNumber(5)
  void clearContactText() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get msgContent => $_getN(5);
  @$pb.TagNumber(6)
  set msgContent($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsgContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsgContent() => clearField(6);
}

class protocol_message_notify_data_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_message_notify_data_inquire_reply({
    $core.int? funcTable,
    operate_type? operate,
  }) {
    final $result = create();
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (operate != null) {
      $result.operate = operate;
    }
    return $result;
  }
  protocol_message_notify_data_inquire_reply._() : super();
  factory protocol_message_notify_data_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_message_notify_data_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_message_notify_data_inquire_reply', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..e<operate_type>(2, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_message_notify_data_inquire_reply clone() => protocol_message_notify_data_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_message_notify_data_inquire_reply copyWith(void Function(protocol_message_notify_data_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_message_notify_data_inquire_reply)) as protocol_message_notify_data_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_data_inquire_reply create() => protocol_message_notify_data_inquire_reply._();
  protocol_message_notify_data_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_message_notify_data_inquire_reply> createRepeated() => $pb.PbList<protocol_message_notify_data_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_data_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_message_notify_data_inquire_reply>(create);
  static protocol_message_notify_data_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get funcTable => $_getIZ(0);
  @$pb.TagNumber(1)
  set funcTable($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncTable() => clearField(1);

  @$pb.TagNumber(2)
  operate_type get operate => $_getN(1);
  @$pb.TagNumber(2)
  set operate(operate_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperate() => clearField(2);
}

/// 设置消息开关
class protocol_message_notify_switch extends $pb.GeneratedMessage {
  factory protocol_message_notify_switch({
    operate_type? operate,
    $core.bool? notifySwitch,
    $core.Iterable<protocol_message_notify_switch_item>? items,
    $core.bool? accessDetailsDirectSwitch,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (notifySwitch != null) {
      $result.notifySwitch = notifySwitch;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    if (accessDetailsDirectSwitch != null) {
      $result.accessDetailsDirectSwitch = accessDetailsDirectSwitch;
    }
    return $result;
  }
  protocol_message_notify_switch._() : super();
  factory protocol_message_notify_switch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_message_notify_switch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_message_notify_switch', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'notifySwitch')
    ..pc<protocol_message_notify_switch_item>(3, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: protocol_message_notify_switch_item.create)
    ..aOB(4, _omitFieldNames ? '' : 'accessDetailsDirectSwitch')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_message_notify_switch clone() => protocol_message_notify_switch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_message_notify_switch copyWith(void Function(protocol_message_notify_switch) updates) => super.copyWith((message) => updates(message as protocol_message_notify_switch)) as protocol_message_notify_switch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_switch create() => protocol_message_notify_switch._();
  protocol_message_notify_switch createEmptyInstance() => create();
  static $pb.PbList<protocol_message_notify_switch> createRepeated() => $pb.PbList<protocol_message_notify_switch>();
  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_switch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_message_notify_switch>(create);
  static protocol_message_notify_switch? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get notifySwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set notifySwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifySwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifySwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<protocol_message_notify_switch_item> get items => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get accessDetailsDirectSwitch => $_getBF(3);
  @$pb.TagNumber(4)
  set accessDetailsDirectSwitch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccessDetailsDirectSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccessDetailsDirectSwitch() => clearField(4);
}

class protocol_message_notify_switch_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_message_notify_switch_inquire_reply({
    operate_type? operate,
    $core.bool? notifySwitch,
    $core.Iterable<protocol_message_notify_switch_item>? items,
    $core.bool? accessDetailsDirectSwitch,
    $core.int? funcTable,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (notifySwitch != null) {
      $result.notifySwitch = notifySwitch;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    if (accessDetailsDirectSwitch != null) {
      $result.accessDetailsDirectSwitch = accessDetailsDirectSwitch;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    return $result;
  }
  protocol_message_notify_switch_inquire_reply._() : super();
  factory protocol_message_notify_switch_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_message_notify_switch_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_message_notify_switch_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'notifySwitch')
    ..pc<protocol_message_notify_switch_item>(3, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: protocol_message_notify_switch_item.create)
    ..aOB(4, _omitFieldNames ? '' : 'accessDetailsDirectSwitch')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_message_notify_switch_inquire_reply clone() => protocol_message_notify_switch_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_message_notify_switch_inquire_reply copyWith(void Function(protocol_message_notify_switch_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_message_notify_switch_inquire_reply)) as protocol_message_notify_switch_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_switch_inquire_reply create() => protocol_message_notify_switch_inquire_reply._();
  protocol_message_notify_switch_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_message_notify_switch_inquire_reply> createRepeated() => $pb.PbList<protocol_message_notify_switch_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_message_notify_switch_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_message_notify_switch_inquire_reply>(create);
  static protocol_message_notify_switch_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get notifySwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set notifySwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotifySwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotifySwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<protocol_message_notify_switch_item> get items => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get accessDetailsDirectSwitch => $_getBF(3);
  @$pb.TagNumber(4)
  set accessDetailsDirectSwitch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccessDetailsDirectSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccessDetailsDirectSwitch() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get funcTable => $_getIZ(4);
  @$pb.TagNumber(5)
  set funcTable($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFuncTable() => $_has(4);
  @$pb.TagNumber(5)
  void clearFuncTable() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
