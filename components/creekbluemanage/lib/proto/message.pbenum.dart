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

import 'package:protobuf/protobuf.dart' as $pb;


class message_remind_type extends $pb.ProtobufEnum {
  static const message_remind_type NULL = message_remind_type._(0, _omitEnumNames ? '' : 'NULL');
  static const message_remind_type SMS = message_remind_type._(1, _omitEnumNames ? '' : 'SMS');
  static const message_remind_type Email = message_remind_type._(2, _omitEnumNames ? '' : 'Email');
  static const message_remind_type Calendar = message_remind_type._(3, _omitEnumNames ? '' : 'Calendar');
  static const message_remind_type Missed_Call = message_remind_type._(4, _omitEnumNames ? '' : 'Missed_Call');
  static const message_remind_type Facebook = message_remind_type._(5, _omitEnumNames ? '' : 'Facebook');
  static const message_remind_type Twitter = message_remind_type._(6, _omitEnumNames ? '' : 'Twitter');
  static const message_remind_type Instagram = message_remind_type._(7, _omitEnumNames ? '' : 'Instagram');
  static const message_remind_type Snapchat = message_remind_type._(8, _omitEnumNames ? '' : 'Snapchat');
  static const message_remind_type Whatsapp = message_remind_type._(9, _omitEnumNames ? '' : 'Whatsapp');
  static const message_remind_type Line = message_remind_type._(10, _omitEnumNames ? '' : 'Line');
  static const message_remind_type Tiktok = message_remind_type._(11, _omitEnumNames ? '' : 'Tiktok');
  static const message_remind_type Skype = message_remind_type._(12, _omitEnumNames ? '' : 'Skype');
  static const message_remind_type Wechat = message_remind_type._(13, _omitEnumNames ? '' : 'Wechat');
  static const message_remind_type Fitbeing = message_remind_type._(14, _omitEnumNames ? '' : 'Fitbeing');
  static const message_remind_type Microsoft_Teams = message_remind_type._(15, _omitEnumNames ? '' : 'Microsoft_Teams');
  static const message_remind_type Telegram_Messenger = message_remind_type._(16, _omitEnumNames ? '' : 'Telegram_Messenger');
  static const message_remind_type Messenger = message_remind_type._(17, _omitEnumNames ? '' : 'Messenger');
  static const message_remind_type LinkedIn = message_remind_type._(18, _omitEnumNames ? '' : 'LinkedIn');
  static const message_remind_type Gmail = message_remind_type._(19, _omitEnumNames ? '' : 'Gmail');
  static const message_remind_type Microsoft_Outlook = message_remind_type._(20, _omitEnumNames ? '' : 'Microsoft_Outlook');
  static const message_remind_type Google_Chat = message_remind_type._(21, _omitEnumNames ? '' : 'Google_Chat');
  static const message_remind_type QQ = message_remind_type._(22, _omitEnumNames ? '' : 'QQ');
  static const message_remind_type WhatsApp_Business = message_remind_type._(23, _omitEnumNames ? '' : 'WhatsApp_Business');
  static const message_remind_type Youtube = message_remind_type._(24, _omitEnumNames ? '' : 'Youtube');
  static const message_remind_type Uber = message_remind_type._(25, _omitEnumNames ? '' : 'Uber');
  static const message_remind_type Uber_eats = message_remind_type._(26, _omitEnumNames ? '' : 'Uber_eats');
  static const message_remind_type Door_Dash_missing = message_remind_type._(27, _omitEnumNames ? '' : 'Door_Dash_missing');
  static const message_remind_type Banco_General = message_remind_type._(28, _omitEnumNames ? '' : 'Banco_General');
  static const message_remind_type BAC_Bank = message_remind_type._(29, _omitEnumNames ? '' : 'BAC_Bank');
  static const message_remind_type Google_Maps = message_remind_type._(30, _omitEnumNames ? '' : 'Google_Maps');
  static const message_remind_type Amazon_shopping = message_remind_type._(31, _omitEnumNames ? '' : 'Amazon_shopping');
  static const message_remind_type Spotify = message_remind_type._(32, _omitEnumNames ? '' : 'Spotify');
  static const message_remind_type Discord = message_remind_type._(33, _omitEnumNames ? '' : 'Discord');
  static const message_remind_type remind_type_max = message_remind_type._(34, _omitEnumNames ? '' : 'remind_type_max');

  static const $core.List<message_remind_type> values = <message_remind_type> [
    NULL,
    SMS,
    Email,
    Calendar,
    Missed_Call,
    Facebook,
    Twitter,
    Instagram,
    Snapchat,
    Whatsapp,
    Line,
    Tiktok,
    Skype,
    Wechat,
    Fitbeing,
    Microsoft_Teams,
    Telegram_Messenger,
    Messenger,
    LinkedIn,
    Gmail,
    Microsoft_Outlook,
    Google_Chat,
    QQ,
    WhatsApp_Business,
    Youtube,
    Uber,
    Uber_eats,
    Door_Dash_missing,
    Banco_General,
    BAC_Bank,
    Google_Maps,
    Amazon_shopping,
    Spotify,
    Discord,
    remind_type_max,
  ];

  static final $core.Map<$core.int, message_remind_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static message_remind_type? valueOf($core.int value) => _byValue[value];

  const message_remind_type._($core.int v, $core.String n) : super(v, n);
}

class notify_os_platform extends $pb.ProtobufEnum {
  static const notify_os_platform ANDROID = notify_os_platform._(0, _omitEnumNames ? '' : 'ANDROID');
  static const notify_os_platform IOS = notify_os_platform._(1, _omitEnumNames ? '' : 'IOS');

  static const $core.List<notify_os_platform> values = <notify_os_platform> [
    ANDROID,
    IOS,
  ];

  static final $core.Map<$core.int, notify_os_platform> _byValue = $pb.ProtobufEnum.initByValue(values);
  static notify_os_platform? valueOf($core.int value) => _byValue[value];

  const notify_os_platform._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
