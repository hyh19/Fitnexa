// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `About %`
  String get about_app {
    return Intl.message(
      'About %',
      name: 'about_app',
      desc: '%=AppName',
      args: [],
    );
  }

  /// `Security`
  String get accountSecurity {
    return Intl.message(
      'Security',
      name: 'accountSecurity',
      desc: '',
      args: [],
    );
  }

  /// `Please provide your password to proceed with clearing cloud personal data.`
  String get account_security_clear_cloud_data_password_des {
    return Intl.message(
      'Please provide your password to proceed with clearing cloud personal data.',
      name: 'account_security_clear_cloud_data_password_des',
      desc: '',
      args: [],
    );
  }

  /// `After clearing cloud data, the data will be permanently deleted and cannot be recovered. Please make sure you no longer need this data before proceeding.`
  String get account_security_clear_cloud_data_ques_des {
    return Intl.message(
      'After clearing cloud data, the data will be permanently deleted and cannot be recovered. Please make sure you no longer need this data before proceeding.',
      name: 'account_security_clear_cloud_data_ques_des',
      desc: '',
      args: [],
    );
  }

  /// `Clear Cloud Personal Data?`
  String get account_security_clear_cloud_data_ques_title {
    return Intl.message(
      'Clear Cloud Personal Data?',
      name: 'account_security_clear_cloud_data_ques_title',
      desc: '',
      args: [],
    );
  }

  /// `Your cloud data has been cleared`
  String get account_security_clear_cloud_data_success_des {
    return Intl.message(
      'Your cloud data has been cleared',
      name: 'account_security_clear_cloud_data_success_des',
      desc: '',
      args: [],
    );
  }

  /// `If you stop syncing to the cloud, your data will no longer be updated with the cloud, which may result in inconsistent information and data loss.`
  String get account_security_stop_sync_des {
    return Intl.message(
      'If you stop syncing to the cloud, your data will no longer be updated with the cloud, which may result in inconsistent information and data loss.',
      name: 'account_security_stop_sync_des',
      desc: '',
      args: [],
    );
  }

  /// `Stop syncing health data to the cloud?`
  String get account_security_stop_sync_health_data_ques_title {
    return Intl.message(
      'Stop syncing health data to the cloud?',
      name: 'account_security_stop_sync_health_data_ques_title',
      desc: '',
      args: [],
    );
  }

  /// `No longer sync personal information to the cloud?`
  String get account_security_stop_sync_personal_info_ques_title {
    return Intl.message(
      'No longer sync personal information to the cloud?',
      name: 'account_security_stop_sync_personal_info_ques_title',
      desc: '',
      args: [],
    );
  }

  /// `Stop syncing workout data to the cloud?`
  String get account_security_stop_sync_workout_data_ques_title {
    return Intl.message(
      'Stop syncing workout data to the cloud?',
      name: 'account_security_stop_sync_workout_data_ques_title',
      desc: '',
      args: [],
    );
  }

  /// `Data Sync Management`
  String get account_security_sync_data_manage {
    return Intl.message(
      'Data Sync Management',
      name: 'account_security_sync_data_manage',
      desc: '',
      args: [],
    );
  }

  /// `Sync Health Data to Cloud`
  String get account_security_sync_health_data {
    return Intl.message(
      'Sync Health Data to Cloud',
      name: 'account_security_sync_health_data',
      desc: '',
      args: [],
    );
  }

  /// `Sync Personal Information to Cloud`
  String get account_security_sync_personal_info {
    return Intl.message(
      'Sync Personal Information to Cloud',
      name: 'account_security_sync_personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Sync Workout Data to Cloud`
  String get account_security_sync_workout_data {
    return Intl.message(
      'Sync Workout Data to Cloud',
      name: 'account_security_sync_workout_data',
      desc: '',
      args: [],
    );
  }

  /// `Active Calories`
  String get active_calories {
    return Intl.message(
      'Active Calories',
      name: 'active_calories',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get active_detail_details {
    return Intl.message(
      'Details',
      name: 'active_detail_details',
      desc: '',
      args: [],
    );
  }

  /// `Floor`
  String get active_detail_floor {
    return Intl.message(
      'Floor',
      name: 'active_detail_floor',
      desc: '',
      args: [],
    );
  }

  /// `Floors Climbed`
  String get active_detail_floor_title {
    return Intl.message(
      'Floors Climbed',
      name: 'active_detail_floor_title',
      desc: '',
      args: [],
    );
  }

  /// `Active Kilocalories`
  String get active_detail_kcal {
    return Intl.message(
      'Active Kilocalories',
      name: 'active_detail_kcal',
      desc: '',
      args: [],
    );
  }

  /// `Active + BMR`
  String get activity_bmr_sum {
    return Intl.message(
      'Active + BMR',
      name: 'activity_bmr_sum',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get activity_total {
    return Intl.message(
      'Total',
      name: 'activity_total',
      desc: '',
      args: [],
    );
  }

  /// `Add Photos`
  String get add_photos {
    return Intl.message(
      'Add Photos',
      name: 'add_photos',
      desc: '',
      args: [],
    );
  }

  /// `Contact Permissions`
  String get addressBook_permissions {
    return Intl.message(
      'Contact Permissions',
      name: 'addressBook_permissions',
      desc: '',
      args: [],
    );
  }

  /// `Add a Schedule`
  String get add_sleep_schedule {
    return Intl.message(
      'Add a Schedule',
      name: 'add_sleep_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Add a new watch`
  String get Add_watch {
    return Intl.message(
      'Add a new watch',
      name: 'Add_watch',
      desc: '',
      args: [],
    );
  }

  /// `4 . Ensure the watch is not connected with another phone.`
  String get add_watch_tips_four {
    return Intl.message(
      '4 . Ensure the watch is not connected with another phone.',
      name: 'add_watch_tips_four',
      desc: '',
      args: [],
    );
  }

  /// `If the watch is already connected to another phone, please disconnect it from that phone first. Alternatively, you can reset the watch in "General Settings" and then search for the watch on your phone again to pair.`
  String get add_watch_tips_four_des {
    return Intl.message(
      'If the watch is already connected to another phone, please disconnect it from that phone first. Alternatively, you can reset the watch in "General Settings" and then search for the watch on your phone again to pair.',
      name: 'add_watch_tips_four_des',
      desc: '',
      args: [],
    );
  }

  /// `1 . Ensure the watch is on and has enough power`
  String get add_watch_tips_one {
    return Intl.message(
      '1 . Ensure the watch is on and has enough power',
      name: 'add_watch_tips_one',
      desc: '',
      args: [],
    );
  }

  /// `If the watch fails to turn on, it may be due to the watch not being activated or having insufficient battery power. Please use the charging cable inside the packaging to charge the watch.`
  String get add_watch_tips_one_des {
    return Intl.message(
      'If the watch fails to turn on, it may be due to the watch not being activated or having insufficient battery power. Please use the charging cable inside the packaging to charge the watch.',
      name: 'add_watch_tips_one_des',
      desc: '',
      args: [],
    );
  }

  /// `3 . Ensure the watch is close to this phone`
  String get add_watch_tips_three {
    return Intl.message(
      '3 . Ensure the watch is close to this phone',
      name: 'add_watch_tips_three',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth communication between the watch and the mobile phone is limited, so it's best to maintain an optimal distance between your left and right hands to help facilitate a quick connection with the watch.`
  String get add_watch_tips_three_des {
    return Intl.message(
      'Bluetooth communication between the watch and the mobile phone is limited, so it\'s best to maintain an optimal distance between your left and right hands to help facilitate a quick connection with the watch.',
      name: 'add_watch_tips_three_des',
      desc: '',
      args: [],
    );
  }

  /// `Tips for Bluetooth Pairing`
  String get add_watch_tips_title {
    return Intl.message(
      'Tips for Bluetooth Pairing',
      name: 'add_watch_tips_title',
      desc: '',
      args: [],
    );
  }

  /// `2 . Ensure your phone's Bluetooth is on`
  String get add_watch_tips_two {
    return Intl.message(
      '2 . Ensure your phone\'s Bluetooth is on',
      name: 'add_watch_tips_two',
      desc: '',
      args: [],
    );
  }

  /// `If Bluetooth on your phone is already in the "on" state but the phone is unable to detect the watch, we suggest trying to turn off and then turn on Bluetooth on your phone again.`
  String get add_watch_tips_two_des {
    return Intl.message(
      'If Bluetooth on your phone is already in the "on" state but the phone is unable to detect the watch, we suggest trying to turn off and then turn on Bluetooth on your phone again.',
      name: 'add_watch_tips_two_des',
      desc: '',
      args: [],
    );
  }

  /// `How to unpair with an iPhone:`
  String get add_watch_tips_unpair_iPhone {
    return Intl.message(
      'How to unpair with an iPhone:',
      name: 'add_watch_tips_unpair_iPhone',
      desc: '',
      args: [],
    );
  }

  /// `In the iOS system's "Settings-Bluetooth" menu, find the watch that you have already paired with, click the " ⓘ " icon on the right side.`
  String get add_watch_tips_unpair_iPhone_one {
    return Intl.message(
      'In the iOS system\'s "Settings-Bluetooth" menu, find the watch that you have already paired with, click the " ⓘ " icon on the right side.',
      name: 'add_watch_tips_unpair_iPhone_one',
      desc: '',
      args: [],
    );
  }

  /// `Click "Forget This Device" to unpair the watch from the iPhone.`
  String get add_watch_tips_unpair_iPhone_two {
    return Intl.message(
      'Click "Forget This Device" to unpair the watch from the iPhone.',
      name: 'add_watch_tips_unpair_iPhone_two',
      desc: '',
      args: [],
    );
  }

  /// `Aerobic Fitness`
  String get Aerobic_Fitness {
    return Intl.message(
      'Aerobic Fitness',
      name: 'Aerobic_Fitness',
      desc: '',
      args: [],
    );
  }

  /// `Aerobics`
  String get Aerobics {
    return Intl.message(
      'Aerobics',
      name: 'Aerobics',
      desc: '',
      args: [],
    );
  }

  /// `After logging out, the data will no longer be synchronized to the cloud and will only be stored locally. If you clear the local cache or change your phone afterwards, the data will be lost. `
  String get After_logging_out {
    return Intl.message(
      'After logging out, the data will no longer be synchronized to the cloud and will only be stored locally. If you clear the local cache or change your phone afterwards, the data will be lost. ',
      name: 'After_logging_out',
      desc: '',
      args: [],
    );
  }

  /// `Ago`
  String get ago {
    return Intl.message(
      'Ago',
      name: 'ago',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get Agree {
    return Intl.message(
      'Agree',
      name: 'Agree',
      desc: '',
      args: [],
    );
  }

  /// `Agree to Continue`
  String get agree_to_continue {
    return Intl.message(
      'Agree to Continue',
      name: 'agree_to_continue',
      desc: '',
      args: [],
    );
  }

  /// `FAQ Assistant`
  String get ai_faq_assistant {
    return Intl.message(
      'FAQ Assistant',
      name: 'ai_faq_assistant',
      desc: '',
      args: [],
    );
  }

  /// `AI Watch Face`
  String get ai_watch_face {
    return Intl.message(
      'AI Watch Face',
      name: 'ai_watch_face',
      desc: '',
      args: [],
    );
  }

  /// `Generate`
  String get ai_watch_face_generate {
    return Intl.message(
      'Generate',
      name: 'ai_watch_face_generate',
      desc: '',
      args: [],
    );
  }

  /// `Generating`
  String get ai_watch_face_generating_toast {
    return Intl.message(
      'Generating',
      name: 'ai_watch_face_generating_toast',
      desc: '',
      args: [],
    );
  }

  /// `Describe the scene you have in mind, use specific words, separated by commas`
  String get ai_watch_face_guide {
    return Intl.message(
      'Describe the scene you have in mind, use specific words, separated by commas',
      name: 'ai_watch_face_guide',
      desc: '',
      args: [],
    );
  }

  /// `①Enter Description → ②Choose Style → ③Click Generate → ④Install Watch Face`
  String get ai_watch_face_input_des {
    return Intl.message(
      '①Enter Description → ②Choose Style → ③Click Generate → ④Install Watch Face',
      name: 'ai_watch_face_input_des',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try modifying the keywords/sentences and retry.`
  String get ai_watch_face_something_went_wrong {
    return Intl.message(
      'Something went wrong, please try modifying the keywords/sentences and retry.',
      name: 'ai_watch_face_something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `3D`
  String get ai_watch_face_type_3D {
    return Intl.message(
      '3D',
      name: 'ai_watch_face_type_3D',
      desc: '',
      args: [],
    );
  }

  /// `Anime`
  String get ai_watch_face_type_anime {
    return Intl.message(
      'Anime',
      name: 'ai_watch_face_type_anime',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get ai_watch_face_type_default {
    return Intl.message(
      'Default',
      name: 'ai_watch_face_type_default',
      desc: '',
      args: [],
    );
  }

  /// `Illustration`
  String get ai_watch_face_type_illustration {
    return Intl.message(
      'Illustration',
      name: 'ai_watch_face_type_illustration',
      desc: '',
      args: [],
    );
  }

  /// `Oil Painting`
  String get ai_watch_face_type_oilpainting {
    return Intl.message(
      'Oil Painting',
      name: 'ai_watch_face_type_oilpainting',
      desc: '',
      args: [],
    );
  }

  /// `Photograph`
  String get ai_watch_face_type_photograph {
    return Intl.message(
      'Photograph',
      name: 'ai_watch_face_type_photograph',
      desc: '',
      args: [],
    );
  }

  /// `Sketch`
  String get ai_watch_face_type_Sketch {
    return Intl.message(
      'Sketch',
      name: 'ai_watch_face_type_Sketch',
      desc: '',
      args: [],
    );
  }

  /// `Watercolor`
  String get ai_watch_face_type_Watercolor {
    return Intl.message(
      'Watercolor',
      name: 'ai_watch_face_type_Watercolor',
      desc: '',
      args: [],
    );
  }

  /// `Add an Alarm`
  String get alarmClock_addClock {
    return Intl.message(
      'Add an Alarm',
      name: 'alarmClock_addClock',
      desc: '',
      args: [],
    );
  }

  /// `Every Day`
  String get alarm_everyDay {
    return Intl.message(
      'Every Day',
      name: 'alarm_everyDay',
      desc: '',
      args: [],
    );
  }

  /// `Weekdays`
  String get alarm_every_weekday {
    return Intl.message(
      'Weekdays',
      name: 'alarm_every_weekday',
      desc: '',
      args: [],
    );
  }

  /// `Weekends`
  String get alarm_everyWeekends {
    return Intl.message(
      'Weekends',
      name: 'alarm_everyWeekends',
      desc: '',
      args: [],
    );
  }

  /// `Never`
  String get alarm_never_repeat {
    return Intl.message(
      'Never',
      name: 'alarm_never_repeat',
      desc: '',
      args: [],
    );
  }

  /// `Ring Once`
  String get Alarm_only_ring_once {
    return Intl.message(
      'Ring Once',
      name: 'Alarm_only_ring_once',
      desc: '',
      args: [],
    );
  }

  /// `Amazon Alexa`
  String get Alexa {
    return Intl.message(
      'Amazon Alexa',
      name: 'Alexa',
      desc: '',
      args: [],
    );
  }

  /// `You can always log back in with your Alexa account if you change your mind.`
  String get alexa_exit_des {
    return Intl.message(
      'You can always log back in with your Alexa account if you change your mind.',
      name: 'alexa_exit_des',
      desc: '',
      args: [],
    );
  }

  /// `Exit Alexa?`
  String get alexa_exit_title {
    return Intl.message(
      'Exit Alexa?',
      name: 'alexa_exit_title',
      desc: '',
      args: [],
    );
  }

  /// `You can start custom workout activities such as walking, running, cycling, etc., through voice commands.`
  String get alexa_intro1_des {
    return Intl.message(
      'You can start custom workout activities such as walking, running, cycling, etc., through voice commands.',
      name: 'alexa_intro1_des',
      desc: '',
      args: [],
    );
  }

  /// `Start a workout`
  String get alexa_intro1_title {
    return Intl.message(
      'Start a workout',
      name: 'alexa_intro1_title',
      desc: '',
      args: [],
    );
  }

  /// `Check weather updates and get quick answers to some questions`
  String get alexa_intro2_des {
    return Intl.message(
      'Check weather updates and get quick answers to some questions',
      name: 'alexa_intro2_des',
      desc: '',
      args: [],
    );
  }

  /// `Get the latest information`
  String get alexa_intro2_title {
    return Intl.message(
      'Get the latest information',
      name: 'alexa_intro2_title',
      desc: '',
      args: [],
    );
  }

  /// `Use your voice to control Alexa-compatible speakers, lights, and thermostats`
  String get alexa_intro3_des {
    return Intl.message(
      'Use your voice to control Alexa-compatible speakers, lights, and thermostats',
      name: 'alexa_intro3_des',
      desc: '',
      args: [],
    );
  }

  /// `Control smart devices`
  String get alexa_intro3_title {
    return Intl.message(
      'Control smart devices',
      name: 'alexa_intro3_title',
      desc: '',
      args: [],
    );
  }

  /// `Alexa allows you to use your voice to hear the news, listen to music, check weather, control your smart home, and more.`
  String get alexa_landing_page_des {
    return Intl.message(
      'Alexa allows you to use your voice to hear the news, listen to music, check weather, control your smart home, and more.',
      name: 'alexa_landing_page_des',
      desc: '',
      args: [],
    );
  }

  /// `Your product includes Alexa!`
  String get alexa_landing_page_title {
    return Intl.message(
      'Your product includes Alexa!',
      name: 'alexa_landing_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Language to speak to Alexa`
  String get alexa_language_change_title {
    return Intl.message(
      'Language to speak to Alexa',
      name: 'alexa_language_change_title',
      desc: '',
      args: [],
    );
  }

  /// `The selected language doesn't match the one used by your device. Some Alexa features, skills, music, and content may not be available.`
  String get alexa_language_change_unmatched_des {
    return Intl.message(
      'The selected language doesn\'t match the one used by your device. Some Alexa features, skills, music, and content may not be available.',
      name: 'alexa_language_change_unmatched_des',
      desc: '',
      args: [],
    );
  }

  /// `The language has been changed to %`
  String get alexa_language_change_unmatched_title {
    return Intl.message(
      'The language has been changed to %',
      name: 'alexa_language_change_unmatched_title',
      desc: '',
      args: [],
    );
  }

  /// `English(US)`
  String get alexa_language_English_America {
    return Intl.message(
      'English(US)',
      name: 'alexa_language_English_America',
      desc: '',
      args: [],
    );
  }

  /// `English(AU）`
  String get alexa_language_English_Australia {
    return Intl.message(
      'English(AU）',
      name: 'alexa_language_English_Australia',
      desc: '',
      args: [],
    );
  }

  /// `English(CA）`
  String get alexa_language_English_Canada {
    return Intl.message(
      'English(CA）',
      name: 'alexa_language_English_Canada',
      desc: '',
      args: [],
    );
  }

  /// `English(UK）`
  String get alexa_language_English_England {
    return Intl.message(
      'English(UK）',
      name: 'alexa_language_English_England',
      desc: '',
      args: [],
    );
  }

  /// `English(IN）`
  String get alexa_language_English_India {
    return Intl.message(
      'English(IN）',
      name: 'alexa_language_English_India',
      desc: '',
      args: [],
    );
  }

  /// `Français(CA）`
  String get alexa_language_French_Canada {
    return Intl.message(
      'Français(CA）',
      name: 'alexa_language_French_Canada',
      desc: '',
      args: [],
    );
  }

  /// `Français(FR)`
  String get alexa_language_French_France {
    return Intl.message(
      'Français(FR)',
      name: 'alexa_language_French_France',
      desc: '',
      args: [],
    );
  }

  /// `Deutsch(DE)`
  String get alexa_language_German_Germany {
    return Intl.message(
      'Deutsch(DE)',
      name: 'alexa_language_German_Germany',
      desc: '',
      args: [],
    );
  }

  /// `Italiano(IT)`
  String get alexa_language_Italian_Italy {
    return Intl.message(
      'Italiano(IT)',
      name: 'alexa_language_Italian_Italy',
      desc: '',
      args: [],
    );
  }

  /// `日本語(JP)`
  String get alexa_language_Japanese_Japan {
    return Intl.message(
      '日本語(JP)',
      name: 'alexa_language_Japanese_Japan',
      desc: '',
      args: [],
    );
  }

  /// `Português（BR）`
  String get alexa_language_Portuguese_Brazil {
    return Intl.message(
      'Português（BR）',
      name: 'alexa_language_Portuguese_Brazil',
      desc: '',
      args: [],
    );
  }

  /// `Español(US)`
  String get alexa_language_Spanish_America {
    return Intl.message(
      'Español(US)',
      name: 'alexa_language_Spanish_America',
      desc: '',
      args: [],
    );
  }

  /// `Español(MX)`
  String get alexa_language_Spanish_Mexico {
    return Intl.message(
      'Español(MX)',
      name: 'alexa_language_Spanish_Mexico',
      desc: '',
      args: [],
    );
  }

  /// `For more help, please check %`
  String get alexa_loggedin_help_des {
    return Intl.message(
      'For more help, please check %',
      name: 'alexa_loggedin_help_des',
      desc: '',
      args: [],
    );
  }

  /// `Alexa Help and Skills`
  String get alexa_loggedin_help_title {
    return Intl.message(
      'Alexa Help and Skills',
      name: 'alexa_loggedin_help_title',
      desc: '',
      args: [],
    );
  }

  /// `To use Alexa on your device, you can long press the watch button or the Alexa icon on the application menu.`
  String get alexa_loggedin_intro_des {
    return Intl.message(
      'To use Alexa on your device, you can long press the watch button or the Alexa icon on the application menu.',
      name: 'alexa_loggedin_intro_des',
      desc: '',
      args: [],
    );
  }

  /// `How to wake up Alexa`
  String get alexa_loggedin_intro_titile {
    return Intl.message(
      'How to wake up Alexa',
      name: 'alexa_loggedin_intro_titile',
      desc: '',
      args: [],
    );
  }

  /// `Here are some things to try`
  String get alexa_loggedin_sentence_example_title {
    return Intl.message(
      'Here are some things to try',
      name: 'alexa_loggedin_sentence_example_title',
      desc: '',
      args: [],
    );
  }

  /// `Login with Amazon`
  String get alexa_login_with_amazon {
    return Intl.message(
      'Login with Amazon',
      name: 'alexa_login_with_amazon',
      desc: '',
      args: [],
    );
  }

  /// `To learn more and access additional features, download the %`
  String get alexa_official_app_des {
    return Intl.message(
      'To learn more and access additional features, download the %',
      name: 'alexa_official_app_des',
      desc: '',
      args: [],
    );
  }

  /// `Amazon Alexa App`
  String get alexa_official_app_title {
    return Intl.message(
      'Amazon Alexa App',
      name: 'alexa_official_app_title',
      desc: '',
      args: [],
    );
  }

  /// `Turn on the bedroom light`
  String get alexa_sentence_example1 {
    return Intl.message(
      'Turn on the bedroom light',
      name: 'alexa_sentence_example1',
      desc: '',
      args: [],
    );
  }

  /// `Set an alarm for 8:00 am`
  String get alexa_sentence_example2 {
    return Intl.message(
      'Set an alarm for 8:00 am',
      name: 'alexa_sentence_example2',
      desc: '',
      args: [],
    );
  }

  /// `How's the weather today?`
  String get alexa_sentence_example3 {
    return Intl.message(
      'How\'s the weather today?',
      name: 'alexa_sentence_example3',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Please note that account deletion is irreversible. All associated data will be permanently deleted.`
  String get All_data_and_purchased_items_associated {
    return Intl.message(
      'Please note that account deletion is irreversible. All associated data will be permanently deleted.',
      name: 'All_data_and_purchased_items_associated',
      desc: '',
      args: [],
    );
  }

  /// `Allow `
  String get allow {
    return Intl.message(
      'Allow ',
      name: 'allow',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get allow_notifications {
    return Intl.message(
      'Allow',
      name: 'allow_notifications',
      desc: '',
      args: [],
    );
  }

  /// `All Workouts`
  String get all_workouts {
    return Intl.message(
      'All Workouts',
      name: 'all_workouts',
      desc: '',
      args: [],
    );
  }

  /// `Alpine skiing`
  String get alpine_skiing {
    return Intl.message(
      'Alpine skiing',
      name: 'alpine_skiing',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get Already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'Already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Always-on Display`
  String get always_on_display {
    return Intl.message(
      'Always-on Display',
      name: 'always_on_display',
      desc: '',
      args: [],
    );
  }

  /// `AM`
  String get AM {
    return Intl.message(
      'AM',
      name: 'AM',
      desc: '',
      args: [],
    );
  }

  /// `America`
  String get America {
    return Intl.message(
      'America',
      name: 'America',
      desc: '',
      args: [],
    );
  }

  /// `Apple Health`
  String get AppleHealth {
    return Intl.message(
      'Apple Health',
      name: 'AppleHealth',
      desc: '',
      args: [],
    );
  }

  /// `See you later.`
  String get application_quick_reply_content_five {
    return Intl.message(
      'See you later.',
      name: 'application_quick_reply_content_five',
      desc: '',
      args: [],
    );
  }

  /// `Thank you.`
  String get application_quick_reply_content_four {
    return Intl.message(
      'Thank you.',
      name: 'application_quick_reply_content_four',
      desc: '',
      args: [],
    );
  }

  /// `I'll be right there.`
  String get application_quick_reply_content_one {
    return Intl.message(
      'I\'ll be right there.',
      name: 'application_quick_reply_content_one',
      desc: '',
      args: [],
    );
  }

  /// `Sorry,no.`
  String get application_quick_reply_content_six {
    return Intl.message(
      'Sorry,no.',
      name: 'application_quick_reply_content_six',
      desc: '',
      args: [],
    );
  }

  /// `No problem!`
  String get application_quick_reply_content_three {
    return Intl.message(
      'No problem!',
      name: 'application_quick_reply_content_three',
      desc: '',
      args: [],
    );
  }

  /// `How's it going?`
  String get application_quick_reply_content_two {
    return Intl.message(
      'How\'s it going?',
      name: 'application_quick_reply_content_two',
      desc: '',
      args: [],
    );
  }

  /// `Fitbeing`
  String get App_Name {
    return Intl.message(
      'Fitbeing',
      name: 'App_Name',
      desc: '',
      args: [],
    );
  }

  /// `Cubitt Pro`
  String get App_Name_Cubitt {
    return Intl.message(
      'Cubitt Pro',
      name: 'App_Name_Cubitt',
      desc: '',
      args: [],
    );
  }

  /// `Upbeing`
  String get App_Name_Upbeing {
    return Intl.message(
      'Upbeing',
      name: 'App_Name_Upbeing',
      desc: '',
      args: [],
    );
  }

  /// `New Version`
  String get app_new_version_popup_title {
    return Intl.message(
      'New Version',
      name: 'app_new_version_popup_title',
      desc: '',
      args: [],
    );
  }

  /// `Ensure that % and the apps requiring notification have obtained notification permissions on your phone, and that your watch and phone maintain Bluetooth connection.`
  String get app_notifications_introtuction {
    return Intl.message(
      'Ensure that % and the apps requiring notification have obtained notification permissions on your phone, and that your watch and phone maintain Bluetooth connection.',
      name: 'app_notifications_introtuction',
      desc: '',
      args: [],
    );
  }

  /// `App Sorting`
  String get app_sorting {
    return Intl.message(
      'App Sorting',
      name: 'app_sorting',
      desc: '',
      args: [],
    );
  }

  /// `Apr`
  String get Apr {
    return Intl.message(
      'Apr',
      name: 'Apr',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get April {
    return Intl.message(
      'April',
      name: 'April',
      desc: '',
      args: [],
    );
  }

  /// `Archery`
  String get archery {
    return Intl.message(
      'Archery',
      name: 'archery',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to log out？`
  String get AreYouSuretologout {
    return Intl.message(
      'Do you want to log out？',
      name: 'AreYouSuretologout',
      desc: '',
      args: [],
    );
  }

  /// `Aug`
  String get Aug {
    return Intl.message(
      'Aug',
      name: 'Aug',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get August {
    return Intl.message(
      'August',
      name: 'August',
      desc: '',
      args: [],
    );
  }

  /// `Authorized`
  String get Authorized {
    return Intl.message(
      'Authorized',
      name: 'Authorized',
      desc: '',
      args: [],
    );
  }

  /// `Authorization failed, please go to % to enable it yourself`
  String get authorize_thirdparty_health_toast {
    return Intl.message(
      'Authorization failed, please go to % to enable it yourself',
      name: 'authorize_thirdparty_health_toast',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for authorization`
  String get authorize_thirdparty_health_wait_toast {
    return Intl.message(
      'Waiting for authorization',
      name: 'authorize_thirdparty_health_wait_toast',
      desc: '',
      args: [],
    );
  }

  /// `Set Up`
  String get auto_discover_set {
    return Intl.message(
      'Set Up',
      name: 'auto_discover_set',
      desc: '',
      args: [],
    );
  }

  /// `A New Watch to Set Up`
  String get auto_discover_watch {
    return Intl.message(
      'A New Watch to Set Up',
      name: 'auto_discover_watch',
      desc: '',
      args: [],
    );
  }

  /// `Automatic`
  String get automatic {
    return Intl.message(
      'Automatic',
      name: 'automatic',
      desc: '',
      args: [],
    );
  }

  /// `Automatically update your max heart rate value`
  String get automatic_maxhr_intro {
    return Intl.message(
      'Automatically update your max heart rate value',
      name: 'automatic_maxhr_intro',
      desc: '',
      args: [],
    );
  }

  /// `Auto Pause`
  String get Auto_pause {
    return Intl.message(
      'Auto Pause',
      name: 'Auto_pause',
      desc: '',
      args: [],
    );
  }

  /// `Memory available`
  String get Available_ROM {
    return Intl.message(
      'Memory available',
      name: 'Available_ROM',
      desc: '',
      args: [],
    );
  }

  /// `Average`
  String get Average {
    return Intl.message(
      'Average',
      name: 'Average',
      desc: '',
      args: [],
    );
  }

  /// `Avg.`
  String get Avg {
    return Intl.message(
      'Avg.',
      name: 'Avg',
      desc: '',
      args: [],
    );
  }

  /// `Awake`
  String get Awake {
    return Intl.message(
      'Awake',
      name: 'Awake',
      desc: '',
      args: [],
    );
  }

  /// `Background`
  String get Background {
    return Intl.message(
      'Background',
      name: 'Background',
      desc: '',
      args: [],
    );
  }

  /// `Badminton`
  String get Badminton {
    return Intl.message(
      'Badminton',
      name: 'Badminton',
      desc: '',
      args: [],
    );
  }

  /// `Barbell`
  String get Barbell {
    return Intl.message(
      'Barbell',
      name: 'Barbell',
      desc: '',
      args: [],
    );
  }

  /// `Barre`
  String get Barre {
    return Intl.message(
      'Barre',
      name: 'Barre',
      desc: '',
      args: [],
    );
  }

  /// `Baseball`
  String get Baseball {
    return Intl.message(
      'Baseball',
      name: 'Baseball',
      desc: '',
      args: [],
    );
  }

  /// `Basketball`
  String get Basketball {
    return Intl.message(
      'Basketball',
      name: 'Basketball',
      desc: '',
      args: [],
    );
  }

  /// `Beach soccer`
  String get beach_soccer {
    return Intl.message(
      'Beach soccer',
      name: 'beach_soccer',
      desc: '',
      args: [],
    );
  }

  /// `Beach volleyball`
  String get beach_volleyball {
    return Intl.message(
      'Beach volleyball',
      name: 'beach_volleyball',
      desc: '',
      args: [],
    );
  }

  /// `Bedtime`
  String get bed_time {
    return Intl.message(
      'Bedtime',
      name: 'bed_time',
      desc: '',
      args: [],
    );
  }

  /// `Biathon`
  String get biathon {
    return Intl.message(
      'Biathon',
      name: 'biathon',
      desc: '',
      args: [],
    );
  }

  /// `Bicycle Motocross`
  String get bicycle_motocross {
    return Intl.message(
      'Bicycle Motocross',
      name: 'bicycle_motocross',
      desc: '',
      args: [],
    );
  }

  /// `Billiards`
  String get billiards {
    return Intl.message(
      'Billiards',
      name: 'billiards',
      desc: '',
      args: [],
    );
  }

  /// `After closing, % will run in the background to receive app notifications in a timely manner, but it may consume more power.`
  String get Binded_keep_app_active_des {
    return Intl.message(
      'After closing, % will run in the background to receive app notifications in a timely manner, but it may consume more power.',
      name: 'Binded_keep_app_active_des',
      desc: '',
      args: [],
    );
  }

  /// `Blood Oxygen Measurements`
  String get blood_oxygen_measure {
    return Intl.message(
      'Blood Oxygen Measurements',
      name: 'blood_oxygen_measure',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth`
  String get Bluetooth {
    return Intl.message(
      'Bluetooth',
      name: 'Bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth Calling`
  String get bluetooth_calling {
    return Intl.message(
      'Bluetooth Calling',
      name: 'bluetooth_calling',
      desc: '',
      args: [],
    );
  }

  /// `This allows you to make and receive calls directly from you watch .`
  String get bluetooth_calling_des {
    return Intl.message(
      'This allows you to make and receive calls directly from you watch .',
      name: 'bluetooth_calling_des',
      desc: '',
      args: [],
    );
  }

  /// `To connect and set up your watch and sync data, % requires access of this phone's Bluetooth.`
  String get bluetooth_permison_instructions {
    return Intl.message(
      'To connect and set up your watch and sync data, % requires access of this phone\'s Bluetooth.',
      name: 'bluetooth_permison_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth Service`
  String get bluetooth_permisson_title {
    return Intl.message(
      'Bluetooth Service',
      name: 'bluetooth_permisson_title',
      desc: '',
      args: [],
    );
  }

  /// `Bobsleigh`
  String get bobsleigh {
    return Intl.message(
      'Bobsleigh',
      name: 'bobsleigh',
      desc: '',
      args: [],
    );
  }

  /// `Bottom Center`
  String get Bottom_center {
    return Intl.message(
      'Bottom Center',
      name: 'Bottom_center',
      desc: '',
      args: [],
    );
  }

  /// `Bottom Left`
  String get Bottom_left {
    return Intl.message(
      'Bottom Left',
      name: 'Bottom_left',
      desc: '',
      args: [],
    );
  }

  /// `Bottom Right`
  String get Bottom_right {
    return Intl.message(
      'Bottom Right',
      name: 'Bottom_right',
      desc: '',
      args: [],
    );
  }

  /// `Bowling`
  String get Bowling {
    return Intl.message(
      'Bowling',
      name: 'Bowling',
      desc: '',
      args: [],
    );
  }

  /// `Boxing`
  String get Boxing {
    return Intl.message(
      'Boxing',
      name: 'Boxing',
      desc: '',
      args: [],
    );
  }

  /// `bpm`
  String get bpm_unit {
    return Intl.message(
      'bpm',
      name: 'bpm_unit',
      desc: '',
      args: [],
    );
  }

  /// `BPM`
  String get BPM_unit {
    return Intl.message(
      'BPM',
      name: 'BPM_unit',
      desc: '',
      args: [],
    );
  }

  /// `Breathe`
  String get breath_training {
    return Intl.message(
      'Breathe',
      name: 'breath_training',
      desc: '',
      args: [],
    );
  }

  /// `Your watch will intelligently recognize your wearing status and will no longer display the time constantly when not worn, during sleep, or when charging.`
  String get brightness_alwayson_automatic_des {
    return Intl.message(
      'Your watch will intelligently recognize your wearing status and will no longer display the time constantly when not worn, during sleep, or when charging.',
      name: 'brightness_alwayson_automatic_des',
      desc: '',
      args: [],
    );
  }

  /// `Your watch will display the time constantly within your set time. This operation may reduce the watch's battery life.`
  String get brightness_alwayson_customize_des {
    return Intl.message(
      'Your watch will display the time constantly within your set time. This operation may reduce the watch\'s battery life.',
      name: 'brightness_alwayson_customize_des',
      desc: '',
      args: [],
    );
  }

  /// `Customize`
  String get brightness_alwayson_customize_title {
    return Intl.message(
      'Customize',
      name: 'brightness_alwayson_customize_title',
      desc: '',
      args: [],
    );
  }

  /// `Your watch will dim the screen brightness within your set time.`
  String get brightness_nightshift_des {
    return Intl.message(
      'Your watch will dim the screen brightness within your set time.',
      name: 'brightness_nightshift_des',
      desc: '',
      args: [],
    );
  }

  /// `Night Shift`
  String get brightness_nightshift_title {
    return Intl.message(
      'Night Shift',
      name: 'brightness_nightshift_title',
      desc: '',
      args: [],
    );
  }

  /// `Bungee jumping`
  String get bungee {
    return Intl.message(
      'Bungee jumping',
      name: 'bungee',
      desc: '',
      args: [],
    );
  }

  /// `By signing up, you are agreeing to our % and %.`
  String get By_signing_up_to_the_Fitbeing {
    return Intl.message(
      'By signing up, you are agreeing to our % and %.',
      name: 'By_signing_up_to_the_Fitbeing',
      desc: 'first %=Terms of service\nsecond %=Privacy Policy',
      args: [],
    );
  }

  /// `cal`
  String get cal {
    return Intl.message(
      'cal',
      name: 'cal',
      desc: '',
      args: [],
    );
  }

  /// `Calendar`
  String get Calendar {
    return Intl.message(
      'Calendar',
      name: 'Calendar',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, I can't speak now.`
  String get call_quick_reply_content_one {
    return Intl.message(
      'Sorry, I can\'t speak now.',
      name: 'call_quick_reply_content_one',
      desc: '',
      args: [],
    );
  }

  /// `Reply to you later.`
  String get call_quick_reply_content_three {
    return Intl.message(
      'Reply to you later.',
      name: 'call_quick_reply_content_three',
      desc: '',
      args: [],
    );
  }

  /// `I'm on the way.`
  String get call_quick_reply_content_two {
    return Intl.message(
      'I\'m on the way.',
      name: 'call_quick_reply_content_two',
      desc: '',
      args: [],
    );
  }

  /// `Calorie`
  String get Calorie {
    return Intl.message(
      'Calorie',
      name: 'Calorie',
      desc: '',
      args: [],
    );
  }

  /// `Unable to find this watch, please try again.`
  String get camera_find_error {
    return Intl.message(
      'Unable to find this watch, please try again.',
      name: 'camera_find_error',
      desc: '',
      args: [],
    );
  }

  /// `Unable to identify this QR code,please try again.`
  String get camera_identify_qrcode_error {
    return Intl.message(
      'Unable to identify this QR code,please try again.',
      name: 'camera_identify_qrcode_error',
      desc: '',
      args: [],
    );
  }

  /// `Connect your smartwatch by scanning the QR code with the system camera.`
  String get camera_permission_des {
    return Intl.message(
      'Connect your smartwatch by scanning the QR code with the system camera.',
      name: 'camera_permission_des',
      desc: '',
      args: [],
    );
  }

  /// `Camera Permission Usage Instructions`
  String get camera_permission_title {
    return Intl.message(
      'Camera Permission Usage Instructions',
      name: 'camera_permission_title',
      desc: '',
      args: [],
    );
  }

  /// `Allow "%" to Access Camera`
  String get camera_privileges {
    return Intl.message(
      'Allow "%" to Access Camera',
      name: 'camera_privileges',
      desc: '非官方，引导获取相机授权',
      args: [],
    );
  }

  /// `Canada`
  String get Canada {
    return Intl.message(
      'Canada',
      name: 'Canada',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete My Account`
  String get CancelAccount {
    return Intl.message(
      'Delete My Account',
      name: 'CancelAccount',
      desc: '',
      args: [],
    );
  }

  /// `Revoke and Exit the App`
  String get cancel_and_exit_the_app {
    return Intl.message(
      'Revoke and Exit the App',
      name: 'cancel_and_exit_the_app',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Canoe`
  String get canoe {
    return Intl.message(
      'Canoe',
      name: 'canoe',
      desc: '',
      args: [],
    );
  }

  /// `Caution`
  String get caution {
    return Intl.message(
      'Caution',
      name: 'caution',
      desc: '',
      args: [],
    );
  }

  /// `Switch Now`
  String get caution_kriki_language_change_now {
    return Intl.message(
      'Switch Now',
      name: 'caution_kriki_language_change_now',
      desc: '',
      args: [],
    );
  }

  /// `The selected Kriki language pack does not match the current watch system language, which may affect the normal use of Kriki. It is recommended to switch the watch system language immediately.`
  String get caution_kriki_language_not_match {
    return Intl.message(
      'The selected Kriki language pack does not match the current watch system language, which may affect the normal use of Kriki. It is recommended to switch the watch system language immediately.',
      name: 'caution_kriki_language_not_match',
      desc: '',
      args: [],
    );
  }

  /// `The current language does not match the language of the Kriki voice assistant, which may affect the normal use of Kriki. It is recommended to switch the Kriki language immediately.`
  String get caution_watch_language_not_match {
    return Intl.message(
      'The current language does not match the language of the Kriki voice assistant, which may affect the normal use of Kriki. It is recommended to switch the Kriki language immediately.',
      name: 'caution_watch_language_not_match',
      desc: '',
      args: [],
    );
  }

  /// `°C`
  String get celsius {
    return Intl.message(
      '°C',
      name: 'celsius',
      desc: '',
      args: [],
    );
  }

  /// `Celsius`
  String get Celsius {
    return Intl.message(
      'Celsius',
      name: 'Celsius',
      desc: '',
      args: [],
    );
  }

  /// `Center`
  String get Center {
    return Intl.message(
      'Center',
      name: 'Center',
      desc: '',
      args: [],
    );
  }

  /// `Centimeter`
  String get Centimeter {
    return Intl.message(
      'Centimeter',
      name: 'Centimeter',
      desc: '',
      args: [],
    );
  }

  /// `Change Email`
  String get Change_Email {
    return Intl.message(
      'Change Email',
      name: 'Change_Email',
      desc: '',
      args: [],
    );
  }

  /// `Change Goal`
  String get change_goal {
    return Intl.message(
      'Change Goal',
      name: 'change_goal',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get Change_Password {
    return Intl.message(
      'Change Password',
      name: 'Change_Password',
      desc: '',
      args: [],
    );
  }

  /// `Flow`
  String get change_view_flow {
    return Intl.message(
      'Flow',
      name: 'change_view_flow',
      desc: '',
      args: [],
    );
  }

  /// `Grid`
  String get change_view_grid {
    return Intl.message(
      'Grid',
      name: 'change_view_grid',
      desc: '',
      args: [],
    );
  }

  /// `List`
  String get change_view_list {
    return Intl.message(
      'List',
      name: 'change_view_list',
      desc: '',
      args: [],
    );
  }

  /// `Weekly Workout Goal`
  String get Change_Workouts_Goal {
    return Intl.message(
      'Weekly Workout Goal',
      name: 'Change_Workouts_Goal',
      desc: '',
      args: [],
    );
  }

  /// `Workouts to Display`
  String get change_workouts_type {
    return Intl.message(
      'Workouts to Display',
      name: 'change_workouts_type',
      desc: '',
      args: [],
    );
  }

  /// `Checking for Upgrade`
  String get check_firmware_upgrade {
    return Intl.message(
      'Checking for Upgrade',
      name: 'check_firmware_upgrade',
      desc: '',
      args: [],
    );
  }

  /// `Check for Update`
  String get check_for_updates {
    return Intl.message(
      'Check for Update',
      name: 'check_for_updates',
      desc: '',
      args: [],
    );
  }

  /// `中文`
  String get Chinese {
    return Intl.message(
      '中文',
      name: 'Chinese',
      desc: '',
      args: [],
    );
  }

  /// `Add a City`
  String get city_add {
    return Intl.message(
      'Add a City',
      name: 'city_add',
      desc: '',
      args: [],
    );
  }

  /// `Clear Cloud Personal Data`
  String get clear_cloud_data {
    return Intl.message(
      'Clear Cloud Personal Data',
      name: 'clear_cloud_data',
      desc: '',
      args: [],
    );
  }

  /// `Clear Data`
  String get clear_data {
    return Intl.message(
      'Clear Data',
      name: 'clear_data',
      desc: '',
      args: [],
    );
  }

  /// `Please try turning off and on your phone's Bluetooth, then reconnect.`
  String get click_connect_timeout_popup_des {
    return Intl.message(
      'Please try turning off and on your phone\'s Bluetooth, then reconnect.',
      name: 'click_connect_timeout_popup_des',
      desc: '',
      args: [],
    );
  }

  /// `Climbing Machine`
  String get Climbing_Machine {
    return Intl.message(
      'Climbing Machine',
      name: 'Climbing_Machine',
      desc: '',
      args: [],
    );
  }

  /// `Climbing Stairs`
  String get Climbing_Stairs {
    return Intl.message(
      'Climbing Stairs',
      name: 'Climbing_Stairs',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get clock_position {
    return Intl.message(
      'Position',
      name: 'clock_position',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `cm`
  String get cm {
    return Intl.message(
      'cm',
      name: 'cm',
      desc: '',
      args: [],
    );
  }

  /// `Your operations are too frequent. Please try again later.`
  String get code_504_error {
    return Intl.message(
      'Your operations are too frequent. Please try again later.',
      name: 'code_504_error',
      desc: '接口504错误，请求频繁',
      args: [],
    );
  }

  /// `This account has already been registered`
  String get code_505_error {
    return Intl.message(
      'This account has already been registered',
      name: 'code_505_error',
      desc: '接口505错误，账号已被注册',
      args: [],
    );
  }

  /// `This account does not exist`
  String get code_506_error {
    return Intl.message(
      'This account does not exist',
      name: 'code_506_error',
      desc: '接口506错误，账号不存在',
      args: [],
    );
  }

  /// `Email or password does not match`
  String get code_507_error {
    return Intl.message(
      'Email or password does not match',
      name: 'code_507_error',
      desc: '接口507错误，用户名或密码不正确',
      args: [],
    );
  }

  /// `Invalid verification code`
  String get code_508_error {
    return Intl.message(
      'Invalid verification code',
      name: 'code_508_error',
      desc: '接口508错误，邮箱验证码错误',
      args: [],
    );
  }

  /// `Your account is logged in on another device`
  String get code_509_error {
    return Intl.message(
      'Your account is logged in on another device',
      name: 'code_509_error',
      desc: '接口509错误，换设备登录',
      args: [],
    );
  }

  /// `Please provide a different email address`
  String get code_510_error {
    return Intl.message(
      'Please provide a different email address',
      name: 'code_510_error',
      desc: '接口510错误，新老邮箱不能一致',
      args: [],
    );
  }

  /// `Incorrect password, please try again.`
  String get code_511_error {
    return Intl.message(
      'Incorrect password, please try again.',
      name: 'code_511_error',
      desc: '接口511错误，密码错误',
      args: [],
    );
  }

  /// `This email has already been registered`
  String get code_512_error {
    return Intl.message(
      'This email has already been registered',
      name: 'code_512_error',
      desc: '接口512错误，邮箱已被注册',
      args: [],
    );
  }

  /// `Password verification failed, please try again.`
  String get code_520_error {
    return Intl.message(
      'Password verification failed, please try again.',
      name: 'code_520_error',
      desc: '接口520错误，密码验证失败',
      args: [],
    );
  }

  /// `Excessive request for verification code, please try again tomorrow.`
  String get code_530_error {
    return Intl.message(
      'Excessive request for verification code, please try again tomorrow.',
      name: 'code_530_error',
      desc: '接口530错误，邮件发送频率过高，已被限制',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `The method estimates an individual's maximum heart rate during exercise by subtracting their age from 220. It further divides heart rate zones based on specific percentage ranges for effective training guidance.`
  String get common_calculation {
    return Intl.message(
      'The method estimates an individual\'s maximum heart rate during exercise by subtracting their age from 220. It further divides heart rate zones based on specific percentage ranges for effective training guidance.',
      name: 'common_calculation',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get data.Please try again.`
  String get common_getdata_fail {
    return Intl.message(
      'Failed to get data.Please try again.',
      name: 'common_getdata_fail',
      desc: '',
      args: [],
    );
  }

  /// `% Hours`
  String get common_hours {
    return Intl.message(
      '% Hours',
      name: 'common_hours',
      desc: '%=number',
      args: [],
    );
  }

  /// `FAQ`
  String get Common_Questions {
    return Intl.message(
      'FAQ',
      name: 'Common_Questions',
      desc: '',
      args: [],
    );
  }

  /// `Compass`
  String get compass {
    return Intl.message(
      'Compass',
      name: 'compass',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your email address.`
  String get confirm_email_tips {
    return Intl.message(
      'Please confirm your email address.',
      name: 'confirm_email_tips',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Your Email`
  String get Confirm_Your_Email {
    return Intl.message(
      'Confirm Your Email',
      name: 'Confirm_Your_Email',
      desc: '',
      args: [],
    );
  }

  /// `Connect`
  String get connect {
    return Intl.message(
      'Connect',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Connect to Apple Health`
  String get connect_apple_health {
    return Intl.message(
      'Connect to Apple Health',
      name: 'connect_apple_health',
      desc: '',
      args: [],
    );
  }

  /// `Connected`
  String get Connected {
    return Intl.message(
      'Connected',
      name: 'Connected',
      desc: '',
      args: [],
    );
  }

  /// `You can change shared content in %`
  String get connected_app_connected_des1 {
    return Intl.message(
      'You can change shared content in %',
      name: 'connected_app_connected_des1',
      desc: '',
      args: [],
    );
  }

  /// `Operation path: Profile>App and Services or Sharing>App and Services`
  String get connected_app_connected_des2_Apple_Health {
    return Intl.message(
      'Operation path: Profile>App and Services or Sharing>App and Services',
      name: 'connected_app_connected_des2_Apple_Health',
      desc: '',
      args: [],
    );
  }

  /// `Operation path: App permissions>%`
  String get connected_app_connected_des2_Google_Fit {
    return Intl.message(
      'Operation path: App permissions>%',
      name: 'connected_app_connected_des2_Google_Fit',
      desc: '',
      args: [],
    );
  }

  /// `Open Apple Health`
  String get connected_app_connected_open_Apple_Health {
    return Intl.message(
      'Open Apple Health',
      name: 'connected_app_connected_open_Apple_Health',
      desc: '',
      args: [],
    );
  }

  /// `Open Google Fit`
  String get connected_app_connected_open_Google_Fit {
    return Intl.message(
      'Open Google Fit',
      name: 'connected_app_connected_open_Google_Fit',
      desc: '',
      args: [],
    );
  }

  /// `Connected to %`
  String get connected_app_connected_title {
    return Intl.message(
      'Connected to %',
      name: 'connected_app_connected_title',
      desc: '',
      args: [],
    );
  }

  /// `Learn More`
  String get connected_app_more_detail {
    return Intl.message(
      'Learn More',
      name: 'connected_app_more_detail',
      desc: '',
      args: [],
    );
  }

  /// `You have not installed the Google Fit app`
  String get connected_app_not_install_Google_Fit {
    return Intl.message(
      'You have not installed the Google Fit app',
      name: 'connected_app_not_install_Google_Fit',
      desc: '',
      args: [],
    );
  }

  /// `Connect to Google Fit`
  String get connect_google_fit {
    return Intl.message(
      'Connect to Google Fit',
      name: 'connect_google_fit',
      desc: '',
      args: [],
    );
  }

  /// `Connection failed. You can try the following steps to reconnect your watch:\n1. Open the settings on your phone.\n2. Find and tap on the "Bluetooth" option. \n3. In the list of paired devices, locate the % device. \n4. Tap on the "ⓘ" symbol on the right side of the % device. \n5. In the options that appear, select "Forget this device". \n6. Restart the Bluetooth settings on your phone. \n7. Open the %% app, it will automatically attempt to connect.`
  String get connection_failed_tip {
    return Intl.message(
      'Connection failed. You can try the following steps to reconnect your watch:\n1. Open the settings on your phone.\n2. Find and tap on the "Bluetooth" option. \n3. In the list of paired devices, locate the % device. \n4. Tap on the "ⓘ" symbol on the right side of the % device. \n5. In the options that appear, select "Forget this device". \n6. Restart the Bluetooth settings on your phone. \n7. Open the %% app, it will automatically attempt to connect.',
      name: 'connection_failed_tip',
      desc: '曾连接过app，重装app后手表跟手机系统蓝牙仍为连接状态导致异常',
      args: [],
    );
  }

  /// `The connection is abnormal, please restart the app.`
  String get connection_is_abnormal {
    return Intl.message(
      'The connection is abnormal, please restart the app.',
      name: 'connection_is_abnormal',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get contacts_add {
    return Intl.message(
      'Add',
      name: 'contacts_add',
      desc: '',
      args: [],
    );
  }

  /// `You can add up to 20 frequent contacts`
  String get contacts_max_totall_tip {
    return Intl.message(
      'You can add up to 20 frequent contacts',
      name: 'contacts_max_totall_tip',
      desc: '',
      args: [],
    );
  }

  /// `This allows for the full calling features on your watch.`
  String get contacts_permison_instructions {
    return Intl.message(
      'This allows for the full calling features on your watch.',
      name: 'contacts_permison_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Cooldown`
  String get Cooldown {
    return Intl.message(
      'Cooldown',
      name: 'Cooldown',
      desc: '',
      args: [],
    );
  }

  /// `Core Training`
  String get Core_Training {
    return Intl.message(
      'Core Training',
      name: 'Core_Training',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get CreateAccount {
    return Intl.message(
      'Create Account',
      name: 'CreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get Create_Account {
    return Intl.message(
      'Create an Account',
      name: 'Create_Account',
      desc: '',
      args: [],
    );
  }

  /// `Create Your Profile`
  String get create_your_profile {
    return Intl.message(
      'Create Your Profile',
      name: 'create_your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Cricket`
  String get Cricket {
    return Intl.message(
      'Cricket',
      name: 'Cricket',
      desc: '',
      args: [],
    );
  }

  /// `Cross-Country Skiing`
  String get cross_country_skiing {
    return Intl.message(
      'Cross-Country Skiing',
      name: 'cross_country_skiing',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get crown_long_press_access_none {
    return Intl.message(
      'None',
      name: 'crown_long_press_access_none',
      desc: '',
      args: [],
    );
  }

  /// `Long Press To Access （2s）`
  String get crown_long_press_access_title {
    return Intl.message(
      'Long Press To Access （2s）',
      name: 'crown_long_press_access_title',
      desc: '',
      args: [],
    );
  }

  /// `Quick Press to Pause Your Workouts`
  String get crown_quick_press_pause {
    return Intl.message(
      'Quick Press to Pause Your Workouts',
      name: 'crown_quick_press_pause',
      desc: '',
      args: [],
    );
  }

  /// `If you need a break during your workout, just give the watch crown a quick press to pause the exercise`
  String get crown_quick_press_pause_des {
    return Intl.message(
      'If you need a break during your workout, just give the watch crown a quick press to pause the exercise',
      name: 'crown_quick_press_pause_des',
      desc: '',
      args: [],
    );
  }

  /// `Crown`
  String get crown_title {
    return Intl.message(
      'Crown',
      name: 'crown_title',
      desc: '',
      args: [],
    );
  }

  /// `Get insights from your wearable data`
  String get cubt_landingpage_slogan {
    return Intl.message(
      'Get insights from your wearable data',
      name: 'cubt_landingpage_slogan',
      desc: '',
      args: [],
    );
  }

  /// `Curling`
  String get curling {
    return Intl.message(
      'Curling',
      name: 'curling',
      desc: '',
      args: [],
    );
  }

  /// `Current Dial`
  String get current_watch_face {
    return Intl.message(
      'Current Dial',
      name: 'current_watch_face',
      desc: '',
      args: [],
    );
  }

  /// `Current weather data is up to date`
  String get current_weather_data_is_up_to_date {
    return Intl.message(
      'Current weather data is up to date',
      name: 'current_weather_data_is_up_to_date',
      desc: '',
      args: [],
    );
  }

  /// `Cycling Distance`
  String get cycling_distance {
    return Intl.message(
      'Cycling Distance',
      name: 'cycling_distance',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get daily_title {
    return Intl.message(
      'Day',
      name: 'daily_title',
      desc: '',
      args: [],
    );
  }

  /// `Dance`
  String get Dancing {
    return Intl.message(
      'Dance',
      name: 'Dancing',
      desc: '',
      args: [],
    );
  }

  /// `Darts`
  String get Darts {
    return Intl.message(
      'Darts',
      name: 'Darts',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get date_of_birth {
    return Intl.message(
      'Date of Birth',
      name: 'date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Date & Time`
  String get date_time {
    return Intl.message(
      'Date & Time',
      name: 'date_time',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get day_birth {
    return Intl.message(
      '',
      name: 'day_birth',
      desc: '满足只有中文情况需要展示“日”单位',
      args: [],
    );
  }

  /// `Days`
  String get days {
    return Intl.message(
      'Days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Dec`
  String get Dec {
    return Intl.message(
      'Dec',
      name: 'Dec',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get December {
    return Intl.message(
      'December',
      name: 'December',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '%=app name',
      args: [],
    );
  }

  /// `Deep`
  String get Deep {
    return Intl.message(
      'Deep',
      name: 'Deep',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get Delete {
    return Intl.message(
      'Delete',
      name: 'Delete',
      desc: '',
      args: [],
    );
  }

  /// `Deleting...`
  String get Deleting {
    return Intl.message(
      'Deleting...',
      name: 'Deleting',
      desc: '',
      args: [],
    );
  }

  /// `Send App and Firmware Logs`
  String get developer_send_all_log {
    return Intl.message(
      'Send App and Firmware Logs',
      name: 'developer_send_all_log',
      desc: '',
      args: [],
    );
  }

  /// `Send App Logs`
  String get developer_send_app_log {
    return Intl.message(
      'Send App Logs',
      name: 'developer_send_app_log',
      desc: '',
      args: [],
    );
  }

  /// `Device not connected, please connect and try again.`
  String get Device_not_connected_please_connect_and_try_again {
    return Intl.message(
      'Device not connected, please connect and try again.',
      name: 'Device_not_connected_please_connect_and_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Dial`
  String get Dial {
    return Intl.message(
      'Dial',
      name: 'Dial',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get Dial_loading_please_wait {
    return Intl.message(
      'Loading...',
      name: 'Dial_loading_please_wait',
      desc: '',
      args: [],
    );
  }

  /// `Disagree`
  String get Disagree {
    return Intl.message(
      'Disagree',
      name: 'Disagree',
      desc: '',
      args: [],
    );
  }

  /// `Disallow`
  String get disallow_Notifications {
    return Intl.message(
      'Disallow',
      name: 'disallow_Notifications',
      desc: '',
      args: [],
    );
  }

  /// `Disconnected`
  String get Disconnected {
    return Intl.message(
      'Disconnected',
      name: 'Disconnected',
      desc: '',
      args: [],
    );
  }

  /// `Your watch disconnected.Some features will be limited. Reconnect for the full experience.`
  String get disconnected_notification {
    return Intl.message(
      'Your watch disconnected.Some features will be limited. Reconnect for the full experience.',
      name: 'disconnected_notification',
      desc: '',
      args: [],
    );
  }

  /// `Wake Duration`
  String get Display_brightness_wake_duration {
    return Intl.message(
      'Wake Duration',
      name: 'Display_brightness_wake_duration',
      desc: '',
      args: [],
    );
  }

  /// `Dodgeball`
  String get dodgeball {
    return Intl.message(
      'Dodgeball',
      name: 'dodgeball',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get Done {
    return Intl.message(
      'Done',
      name: 'Done',
      desc: '',
      args: [],
    );
  }

  /// `After enabling the "Do Not Disturb" mode, your watch will no longer alert you when it receives notifications, but it will still save them in the 'Notification Center' on your watch.`
  String get Do_not_disturb_after_turning_on {
    return Intl.message(
      'After enabling the "Do Not Disturb" mode, your watch will no longer alert you when it receives notifications, but it will still save them in the \'Notification Center\' on your watch.',
      name: 'Do_not_disturb_after_turning_on',
      desc: '',
      args: [],
    );
  }

  /// `End`
  String get Do_not_disturb_end_time {
    return Intl.message(
      'End',
      name: 'Do_not_disturb_end_time',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get Do_not_disturb_start_time {
    return Intl.message(
      'Start',
      name: 'Do_not_disturb_start_time',
      desc: '',
      args: [],
    );
  }

  /// `Do Not Disturb Schedule`
  String get Do_not_disturb_Time_do_not_disturb {
    return Intl.message(
      'Do Not Disturb Schedule',
      name: 'Do_not_disturb_Time_do_not_disturb',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account yet? `
  String get Dont_have_an_account {
    return Intl.message(
      'Don’t have an account yet? ',
      name: 'Dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Dragon Boat Racing`
  String get dragon_boat_race {
    return Intl.message(
      'Dragon Boat Racing',
      name: 'dragon_boat_race',
      desc: '',
      args: [],
    );
  }

  /// `Dumbbell`
  String get Dumbbell {
    return Intl.message(
      'Dumbbell',
      name: 'Dumbbell',
      desc: '',
      args: [],
    );
  }

  /// `Durations`
  String get Duration {
    return Intl.message(
      'Durations',
      name: 'Duration',
      desc: '',
      args: [],
    );
  }

  /// `Currently using phone GPS for tracking`
  String get during_exercise_use_phone_gps {
    return Intl.message(
      'Currently using phone GPS for tracking',
      name: 'during_exercise_use_phone_gps',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get Edit {
    return Intl.message(
      'Edit',
      name: 'Edit',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get edit_face_Activity {
    return Intl.message(
      'Activity',
      name: 'edit_face_Activity',
      desc: '',
      args: [],
    );
  }

  /// `Alarm`
  String get edit_face_Alarm {
    return Intl.message(
      'Alarm',
      name: 'edit_face_Alarm',
      desc: '',
      args: [],
    );
  }

  /// `Ambient Volume`
  String get edit_face_AmbientVolume {
    return Intl.message(
      'Ambient Volume',
      name: 'edit_face_AmbientVolume',
      desc: '',
      args: [],
    );
  }

  /// `Blood Oxygen`
  String get edit_face_BloodOxygen {
    return Intl.message(
      'Blood Oxygen',
      name: 'edit_face_BloodOxygen',
      desc: '',
      args: [],
    );
  }

  /// `Breathing Exercise`
  String get edit_face_breathing_exercises {
    return Intl.message(
      'Breathing Exercise',
      name: 'edit_face_breathing_exercises',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get edit_face_Call {
    return Intl.message(
      'Call',
      name: 'edit_face_Call',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get edit_face_Camera {
    return Intl.message(
      'Camera',
      name: 'edit_face_Camera',
      desc: '',
      args: [],
    );
  }

  /// `Energy`
  String get edit_face_Energy {
    return Intl.message(
      'Energy',
      name: 'edit_face_Energy',
      desc: '',
      args: [],
    );
  }

  /// `Flashlight`
  String get edit_face_Flashlight {
    return Intl.message(
      'Flashlight',
      name: 'edit_face_Flashlight',
      desc: '',
      args: [],
    );
  }

  /// `Stopwatch`
  String get edit_face_Stopwatch {
    return Intl.message(
      'Stopwatch',
      name: 'edit_face_Stopwatch',
      desc: '',
      args: [],
    );
  }

  /// `Timer`
  String get edit_face_Timer {
    return Intl.message(
      'Timer',
      name: 'edit_face_Timer',
      desc: '',
      args: [],
    );
  }

  /// `Workouts`
  String get edit_face_workouts {
    return Intl.message(
      'Workouts',
      name: 'edit_face_workouts',
      desc: '',
      args: [],
    );
  }

  /// `Edit Your Schedule`
  String get edit_sleep_schedule {
    return Intl.message(
      'Edit Your Schedule',
      name: 'edit_sleep_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Edit watch name`
  String get Edit_watch_name {
    return Intl.message(
      'Edit watch name',
      name: 'Edit_watch_name',
      desc: '',
      args: [],
    );
  }

  /// `Elevation`
  String get elevation {
    return Intl.message(
      'Elevation',
      name: 'elevation',
      desc: '',
      args: [],
    );
  }

  /// `Elliptical`
  String get Elliptical {
    return Intl.message(
      'Elliptical',
      name: 'Elliptical',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get E_mail_title {
    return Intl.message(
      'E-mail',
      name: 'E_mail_title',
      desc: '',
      args: [],
    );
  }

  /// `Enable the Common Functions`
  String get enable_the_common_functions {
    return Intl.message(
      'Enable the Common Functions',
      name: 'enable_the_common_functions',
      desc: '',
      args: [],
    );
  }

  /// `Energy`
  String get Energy {
    return Intl.message(
      'Energy',
      name: 'Energy',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get English {
    return Intl.message(
      'English',
      name: 'English',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email you used for your account. We'll send you a verification code to reset your password.`
  String get Enter_email_you_used_to_create_account {
    return Intl.message(
      'Enter the email you used for your account. We\'ll send you a verification code to reset your password.',
      name: 'Enter_email_you_used_to_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Enter new email address`
  String get Enter_new_email_address {
    return Intl.message(
      'Enter new email address',
      name: 'Enter_new_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get Enter_New_Password {
    return Intl.message(
      'Enter new password',
      name: 'Enter_New_Password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the pairing code \ngenerated on your watch.`
  String get enter_the_pairing_code_tips {
    return Intl.message(
      'Please enter the pairing code \ngenerated on your watch.',
      name: 'enter_the_pairing_code_tips',
      desc: '',
      args: [],
    );
  }

  /// `Enter Verification Code`
  String get enter_verification_code {
    return Intl.message(
      'Enter Verification Code',
      name: 'enter_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get Enter_your_email {
    return Intl.message(
      'Enter your email',
      name: 'Enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your first name`
  String get enter_your_first_name {
    return Intl.message(
      'Enter your first name',
      name: 'enter_your_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get enter_your_last_name {
    return Intl.message(
      'Enter your last name',
      name: 'enter_your_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get EnterYourPassword {
    return Intl.message(
      'Enter password',
      name: 'EnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Watch Malfunctioned`
  String get Equipment_failure {
    return Intl.message(
      'Watch Malfunctioned',
      name: 'Equipment_failure',
      desc: '',
      args: [],
    );
  }

  /// `European`
  String get European {
    return Intl.message(
      'European',
      name: 'European',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate Zone`
  String get Exercise_heart_rate_zone {
    return Intl.message(
      'Heart Rate Zone',
      name: 'Exercise_heart_rate_zone',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Stay logged in`
  String get exit_accout_caution_cancle {
    return Intl.message(
      'Stay logged in',
      name: 'exit_accout_caution_cancle',
      desc: '',
      args: [],
    );
  }

  /// `Exit after synchronization`
  String get exit_accout_caution_exit_after_sync {
    return Intl.message(
      'Exit after synchronization',
      name: 'exit_accout_caution_exit_after_sync',
      desc: '',
      args: [],
    );
  }

  /// `Under the logged-in state, data will be uploaded in batches non-real-time. If you choose to log out, to ensure your data is not lost, the app will automatically log you out after syncing data.`
  String get exit_accout_caution_exit_after_sync_des {
    return Intl.message(
      'Under the logged-in state, data will be uploaded in batches non-real-time. If you choose to log out, to ensure your data is not lost, the app will automatically log you out after syncing data.',
      name: 'exit_accout_caution_exit_after_sync_des',
      desc: '',
      args: [],
    );
  }

  /// `Please sync data before exiting`
  String get exit_accout_caution_exit_after_sync_title {
    return Intl.message(
      'Please sync data before exiting',
      name: 'exit_accout_caution_exit_after_sync_title',
      desc: '',
      args: [],
    );
  }

  /// `Please check the network status first, then you can choose to resync data before exiting or cancel the operation`
  String get exit_accout_caution_exit_network_error_des {
    return Intl.message(
      'Please check the network status first, then you can choose to resync data before exiting or cancel the operation',
      name: 'exit_accout_caution_exit_network_error_des',
      desc: '',
      args: [],
    );
  }

  /// `Data sync failed`
  String get exit_accout_caution_sync_failed {
    return Intl.message(
      'Data sync failed',
      name: 'exit_accout_caution_sync_failed',
      desc: '',
      args: [],
    );
  }

  /// `Something unexpected happened; you can choose to resync data before exiting or cancel the operation`
  String get exit_accout_caution_sync_failed_des {
    return Intl.message(
      'Something unexpected happened; you can choose to resync data before exiting or cancel the operation',
      name: 'exit_accout_caution_sync_failed_des',
      desc: '',
      args: [],
    );
  }

  /// `Data sync successful. \nAccount has been logged out.`
  String get exit_accout_exit_after_sync_success {
    return Intl.message(
      'Data sync successful. \nAccount has been logged out.',
      name: 'exit_accout_exit_after_sync_success',
      desc: '',
      args: [],
    );
  }

  /// `Syncing unsynchronized data. \nWill automatically log out after syncing is complete.`
  String get exit_accout_exit_after_sync_syncing {
    return Intl.message(
      'Syncing unsynchronized data. \nWill automatically log out after syncing is complete.',
      name: 'exit_accout_exit_after_sync_syncing',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get Explore {
    return Intl.message(
      'Explore',
      name: 'Explore',
      desc: '',
      args: [],
    );
  }

  /// `Network issue, please refresh\nPlease ensure % has network permissions enabled`
  String get face_gallery_network_error_des {
    return Intl.message(
      'Network issue, please refresh\nPlease ensure % has network permissions enabled',
      name: 'face_gallery_network_error_des',
      desc: '',
      args: [],
    );
  }

  /// `Network Issue`
  String get face_gallery_network_error_title {
    return Intl.message(
      'Network Issue',
      name: 'face_gallery_network_error_title',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get face_gallery_question_feedback {
    return Intl.message(
      'Feedback',
      name: 'face_gallery_question_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get face_gallery_refresh {
    return Intl.message(
      'Refresh',
      name: 'face_gallery_refresh',
      desc: '',
      args: [],
    );
  }

  /// `Unknown issue, please try refreshing\nIf the issue persists after multiple refresh attempts, you can choose to provide feedback. We will analyze the specific problem based on the log automatically attached when you give feedback.`
  String get face_gallery_unknown_error_des {
    return Intl.message(
      'Unknown issue, please try refreshing\nIf the issue persists after multiple refresh attempts, you can choose to provide feedback. We will analyze the specific problem based on the log automatically attached when you give feedback.',
      name: 'face_gallery_unknown_error_des',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Issue`
  String get face_gallery_unknown_error_title {
    return Intl.message(
      'Unknown Issue',
      name: 'face_gallery_unknown_error_title',
      desc: '',
      args: [],
    );
  }

  /// `Choose from a rich selection of watch faces`
  String get face_market_des {
    return Intl.message(
      'Choose from a rich selection of watch faces',
      name: 'face_market_des',
      desc: '',
      args: [],
    );
  }

  /// `°F`
  String get fahrenheit {
    return Intl.message(
      '°F',
      name: 'fahrenheit',
      desc: '',
      args: [],
    );
  }

  /// `Fahrenheit`
  String get Fahrenheit {
    return Intl.message(
      'Fahrenheit',
      name: 'Fahrenheit',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load. Please try again.`
  String get failed_to_load {
    return Intl.message(
      'Failed to load. Please try again.',
      name: 'failed_to_load',
      desc: '',
      args: [],
    );
  }

  /// `Fair`
  String get Fair {
    return Intl.message(
      'Fair',
      name: 'Fair',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get Favorite_contacts {
    return Intl.message(
      'Favorites',
      name: 'Favorite_contacts',
      desc: '',
      args: [],
    );
  }

  /// `Feb`
  String get Feb {
    return Intl.message(
      'Feb',
      name: 'Feb',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get February {
    return Intl.message(
      'February',
      name: 'February',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get Female {
    return Intl.message(
      'Female',
      name: 'Female',
      desc: '',
      args: [],
    );
  }

  /// `Fencing`
  String get fencing {
    return Intl.message(
      'Fencing',
      name: 'fencing',
      desc: '',
      args: [],
    );
  }

  /// `New Firmware Version Available`
  String get Find_a_new_version {
    return Intl.message(
      'New Firmware Version Available',
      name: 'Find_a_new_version',
      desc: '',
      args: [],
    );
  }

  /// `Find My Phone`
  String get find_my_phone {
    return Intl.message(
      'Find My Phone',
      name: 'find_my_phone',
      desc: '',
      args: [],
    );
  }

  /// `Your watch will continue to ring and vibrate during the search\nand you can manually stop it after finding it`
  String get findwatch_des1 {
    return Intl.message(
      'Your watch will continue to ring and vibrate during the search\nand you can manually stop it after finding it',
      name: 'findwatch_des1',
      desc: '',
      args: [],
    );
  }

  /// `The watch can only be found within the Bluetooth connection range`
  String get findwatch_des2 {
    return Intl.message(
      'The watch can only be found within the Bluetooth connection range',
      name: 'findwatch_des2',
      desc: '',
      args: [],
    );
  }

  /// `Stop Finding`
  String get findwatch_end {
    return Intl.message(
      'Stop Finding',
      name: 'findwatch_end',
      desc: '',
      args: [],
    );
  }

  /// `Connection status is unstable. Unable to locate at the moment. Please try again later.`
  String get findwatch_noconnection_des {
    return Intl.message(
      'Connection status is unstable. Unable to locate at the moment. Please try again later.',
      name: 'findwatch_noconnection_des',
      desc: '',
      args: [],
    );
  }

  /// `Start Finding`
  String get findwatch_start {
    return Intl.message(
      'Start Finding',
      name: 'findwatch_start',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get Firmware_version {
    return Intl.message(
      'Version',
      name: 'Firmware_version',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get First_Name {
    return Intl.message(
      'First Name',
      name: 'First_Name',
      desc: '',
      args: [],
    );
  }

  /// `Fishing`
  String get fishing {
    return Intl.message(
      'Fishing',
      name: 'fishing',
      desc: '',
      args: [],
    );
  }

  /// `Fitness`
  String get Fitness {
    return Intl.message(
      'Fitness',
      name: 'Fitness',
      desc: '',
      args: [],
    );
  }

  /// `Focus`
  String get focus {
    return Intl.message(
      'Focus',
      name: 'focus',
      desc: '',
      args: [],
    );
  }

  /// `After enabling sleep mode, you will not be notified when receiving notifications within your set time, but they will still be collected in the watch's "Notification Center."`
  String get focus_sleep_des {
    return Intl.message(
      'After enabling sleep mode, you will not be notified when receiving notifications within your set time, but they will still be collected in the watch\'s "Notification Center."',
      name: 'focus_sleep_des',
      desc: '',
      args: [],
    );
  }

  /// `Verification failed, please check or obtain the verification code again`
  String get fogot_password_email_verification_failed {
    return Intl.message(
      'Verification failed, please check or obtain the verification code again',
      name: 'fogot_password_email_verification_failed',
      desc: '',
      args: [],
    );
  }

  /// `Font`
  String get Font {
    return Intl.message(
      'Font',
      name: 'Font',
      desc: '',
      args: [],
    );
  }

  /// `Foot`
  String get Foot {
    return Intl.message(
      'Foot',
      name: 'Foot',
      desc: '',
      args: [],
    );
  }

  /// `Force Unpairing`
  String get Forced_release {
    return Intl.message(
      'Force Unpairing',
      name: 'Forced_release',
      desc: '',
      args: [],
    );
  }

  /// `Forget This Device`
  String get forget_this_Device {
    return Intl.message(
      'Forget This Device',
      name: 'forget_this_Device',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your Password`
  String get ForgotPassword {
    return Intl.message(
      'Forgot your Password',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Français`
  String get French {
    return Intl.message(
      'Français',
      name: 'French',
      desc: '',
      args: [],
    );
  }

  /// `Fri`
  String get Fri {
    return Intl.message(
      'Fri',
      name: 'Fri',
      desc: '',
      args: [],
    );
  }

  /// `Friday`
  String get Friday {
    return Intl.message(
      'Friday',
      name: 'Friday',
      desc: '',
      args: [],
    );
  }

  /// `Frisbee`
  String get Frisbee {
    return Intl.message(
      'Frisbee',
      name: 'Frisbee',
      desc: '',
      args: [],
    );
  }

  /// `ft`
  String get ft {
    return Intl.message(
      'ft',
      name: 'ft',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get Full_Name {
    return Intl.message(
      'Full Name',
      name: 'Full_Name',
      desc: '',
      args: [],
    );
  }

  /// `Function`
  String get Function {
    return Intl.message(
      'Function',
      name: 'Function',
      desc: '',
      args: [],
    );
  }

  /// `Strength Training`
  String get Functional_Strength_Training {
    return Intl.message(
      'Strength Training',
      name: 'Functional_Strength_Training',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get Gender {
    return Intl.message(
      'Gender',
      name: 'Gender',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Deutsch`
  String get German {
    return Intl.message(
      'Deutsch',
      name: 'German',
      desc: '',
      args: [],
    );
  }

  /// `Name Your Watch`
  String get give_your_watch_a_catchy_name {
    return Intl.message(
      'Name Your Watch',
      name: 'give_your_watch_a_catchy_name',
      desc: '',
      args: [],
    );
  }

  /// `Give your watch a name you prefer.`
  String get give_your_watch_prefer {
    return Intl.message(
      'Give your watch a name you prefer.',
      name: 'give_your_watch_prefer',
      desc: '',
      args: [],
    );
  }

  /// `Go`
  String get go {
    return Intl.message(
      'Go',
      name: 'go',
      desc: '',
      args: [],
    );
  }

  /// `Goal`
  String get Goal {
    return Intl.message(
      'Goal',
      name: 'Goal',
      desc: '',
      args: [],
    );
  }

  /// `Goal Achievement Reminder`
  String get Goal_achievement_reminder {
    return Intl.message(
      'Goal Achievement Reminder',
      name: 'Goal_achievement_reminder',
      desc: '',
      args: [],
    );
  }

  /// `Receive a notification when you reach the activity goals.`
  String get goal_achievement_reminder_intro {
    return Intl.message(
      'Receive a notification when you reach the activity goals.',
      name: 'goal_achievement_reminder_intro',
      desc: '',
      args: [],
    );
  }

  /// `Set a daily goal based on how active you'd like to be.`
  String get goalCalories_des {
    return Intl.message(
      'Set a daily goal based on how active you\'d like to be.',
      name: 'goalCalories_des',
      desc: '',
      args: [],
    );
  }

  /// `Goal Setting Failed`
  String get goal_set_failed {
    return Intl.message(
      'Goal Setting Failed',
      name: 'goal_set_failed',
      desc: '',
      args: [],
    );
  }

  /// `Goal Setting Successfully`
  String get goal_set_successfully {
    return Intl.message(
      'Goal Setting Successfully',
      name: 'goal_set_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Golf`
  String get golf {
    return Intl.message(
      'Golf',
      name: 'golf',
      desc: '',
      args: [],
    );
  }

  /// `Good`
  String get good {
    return Intl.message(
      'Good',
      name: 'good',
      desc: '',
      args: [],
    );
  }

  /// `Google Fit`
  String get GoogleFit {
    return Intl.message(
      'Google Fit',
      name: 'GoogleFit',
      desc: '',
      args: [],
    );
  }

  /// `Got it`
  String get Got_it {
    return Intl.message(
      'Got it',
      name: 'Got_it',
      desc: '',
      args: [],
    );
  }

  /// `Gymnastics`
  String get gymnastics {
    return Intl.message(
      'Gymnastics',
      name: 'gymnastics',
      desc: '',
      args: [],
    );
  }

  /// `Handball`
  String get Handball {
    return Intl.message(
      'Handball',
      name: 'Handball',
      desc: '',
      args: [],
    );
  }

  /// `Device connection failed. Please try the following steps:\n1. Restart the watch.\n2. Close the app.\n3. Toggle Bluetooth off and then back on.\n4. Reopen % app.`
  String get have_bt_no_ble {
    return Intl.message(
      'Device connection failed. Please try the following steps:\n1. Restart the watch.\n2. Close the app.\n3. Toggle Bluetooth off and then back on.\n4. Reopen % app.',
      name: 'have_bt_no_ble',
      desc: '%=AppName\nbt正常，ble未连接',
      args: [],
    );
  }

  /// `Searching for phone...`
  String get Have_you_found_the_phone {
    return Intl.message(
      'Searching for phone...',
      name: 'Have_you_found_the_phone',
      desc: '',
      args: [],
    );
  }

  /// `Allow your Watch to use the sensor to measure health data throughout the day`
  String get health_measure_info {
    return Intl.message(
      'Allow your Watch to use the sensor to measure health data throughout the day',
      name: 'health_measure_info',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate & HRV`
  String get health_track_hr_and_hrv_title {
    return Intl.message(
      'Heart Rate & HRV',
      name: 'health_track_hr_and_hrv_title',
      desc: '',
      args: [],
    );
  }

  /// `Daily Average`
  String get heartrate_daily_average {
    return Intl.message(
      'Daily Average',
      name: 'heartrate_daily_average',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate Measurements`
  String get heart_rate_measure {
    return Intl.message(
      'Heart Rate Measurements',
      name: 'heart_rate_measure',
      desc: '',
      args: [],
    );
  }

  /// `Raised`
  String get heartrate_raised {
    return Intl.message(
      'Raised',
      name: 'heartrate_raised',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate Tracking`
  String get Heart_rate_tracking {
    return Intl.message(
      'Heart Rate Tracking',
      name: 'Heart_rate_tracking',
      desc: '',
      args: [],
    );
  }

  /// `To receive heart rate alerts on your watch, you need to turn on 'Heart Rate Tracking" here.`
  String get Heart_rate_tracking_reminder_des {
    return Intl.message(
      'To receive heart rate alerts on your watch, you need to turn on \'Heart Rate Tracking" here.',
      name: 'Heart_rate_tracking_reminder_des',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get Height {
    return Intl.message(
      'Height',
      name: 'Height',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Help and Considerations >`
  String get help_considerations {
    return Intl.message(
      'Help and Considerations >',
      name: 'help_considerations',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get High {
    return Intl.message(
      'High',
      name: 'High',
      desc: '',
      args: [],
    );
  }

  /// `The score reflects your stress level.`
  String get higher_scores_reflect_higher_stress {
    return Intl.message(
      'The score reflects your stress level.',
      name: 'higher_scores_reflect_higher_stress',
      desc: '',
      args: [],
    );
  }

  /// `High Knee Lift`
  String get High_Knee_Lifts {
    return Intl.message(
      'High Knee Lift',
      name: 'High_Knee_Lifts',
      desc: '',
      args: [],
    );
  }

  /// `You have already reached % of the distance in your activity, achieving today's distance goal. Congratulations！`
  String get highlight_distance_content {
    return Intl.message(
      'You have already reached % of the distance in your activity, achieving today\'s distance goal. Congratulations！',
      name: 'highlight_distance_content',
      desc: '此处%=该用户在该自然日实际完成的距离数值，距离单位以实际为准',
      args: [],
    );
  }

  /// `Achieved Distance Goal of %`
  String get highlight_distance_title {
    return Intl.message(
      'Achieved Distance Goal of %',
      name: 'highlight_distance_title',
      desc: '此处%=该用户设置的距离目标',
      args: [],
    );
  }

  /// `Your exercise time has reached % min, achieving today's Exercise Time goal. Congratulations!`
  String get highlight_exercise_content {
    return Intl.message(
      'Your exercise time has reached % min, achieving today\'s Exercise Time goal. Congratulations!',
      name: 'highlight_exercise_content',
      desc: '此处%=该用户在该自然日累计运动时长',
      args: [],
    );
  }

  /// `Achieved Exercise Time Goal of % min`
  String get highlight_exercise_title {
    return Intl.message(
      'Achieved Exercise Time Goal of % min',
      name: 'highlight_exercise_title',
      desc: '此处%=该用户设置的运动时长目标，时长单位以实际为准',
      args: [],
    );
  }

  /// `You have won a medal`
  String get highlight_medal_title {
    return Intl.message(
      'You have won a medal',
      name: 'highlight_medal_title',
      desc: '',
      args: [],
    );
  }

  /// `Your sleep quality is excellent! You have achieved a score of %.`
  String get highlight_sleep_content {
    return Intl.message(
      'Your sleep quality is excellent! You have achieved a score of %.',
      name: 'highlight_sleep_content',
      desc: '此处%=在该自然日实际监测到的睡眠质量得分最高分',
      args: [],
    );
  }

  /// `Sleep Well`
  String get highlight_sleep_title {
    return Intl.message(
      'Sleep Well',
      name: 'highlight_sleep_title',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations on reaching your Stand Hours goal of % hours, Great work!`
  String get highlight_stand_content {
    return Intl.message(
      'Congratulations on reaching your Stand Hours goal of % hours, Great work!',
      name: 'highlight_stand_content',
      desc: '此处%=该用户在该自然日实际完成的小时数',
      args: [],
    );
  }

  /// `You have already taken % steps, perfectly achieving today's step goal! Great job!`
  String get highlight_step_content {
    return Intl.message(
      'You have already taken % steps, perfectly achieving today\'s step goal! Great job!',
      name: 'highlight_step_content',
      desc: '此处%=该用户在该自然日实际完成的步数',
      args: [],
    );
  }

  /// `Achieved Step Goal of % steps`
  String get highlight_step_title {
    return Intl.message(
      'Achieved Step Goal of % steps',
      name: 'highlight_step_title',
      desc: '此处%=该用户设置的步数目标值',
      args: [],
    );
  }

  /// `Highlights`
  String get highlight_title {
    return Intl.message(
      'Highlights',
      name: 'highlight_title',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations on completing % days of Weekly Workout! You have achieved your goal perfectly! Well done! `
  String get highlight_workout_content {
    return Intl.message(
      'Congratulations on completing % days of Weekly Workout! You have achieved your goal perfectly! Well done! ',
      name: 'highlight_workout_content',
      desc: '此处%=截止至当日该用户累计完成的运动天数',
      args: [],
    );
  }

  /// `Achieved % Days of Weekly Workout Goal`
  String get highlight_workout_title {
    return Intl.message(
      'Achieved % Days of Weekly Workout Goal',
      name: 'highlight_workout_title',
      desc: '此处%=该用户设置的运动目标值',
      args: [],
    );
  }

  /// `HIIT`
  String get hiit {
    return Intl.message(
      'HIIT',
      name: 'hiit',
      desc: '',
      args: [],
    );
  }

  /// `Hiking`
  String get Hiking {
    return Intl.message(
      'Hiking',
      name: 'Hiking',
      desc: '',
      args: [],
    );
  }

  /// `Street dance`
  String get Hip_hop_Dancing {
    return Intl.message(
      'Street dance',
      name: 'Hip_hop_Dancing',
      desc: '',
      args: [],
    );
  }

  /// `Hockey`
  String get Hockey {
    return Intl.message(
      'Hockey',
      name: 'Hockey',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Menstrual Period`
  String get home_menstrual_title {
    return Intl.message(
      'Menstrual Period',
      name: 'home_menstrual_title',
      desc: '',
      args: [],
    );
  }

  /// `Horizontal bar`
  String get horizontal_bar {
    return Intl.message(
      'Horizontal bar',
      name: 'horizontal_bar',
      desc: '',
      args: [],
    );
  }

  /// `Horseback riding`
  String get horse_riding {
    return Intl.message(
      'Horseback riding',
      name: 'horse_riding',
      desc: '',
      args: [],
    );
  }

  /// `% h `
  String get hour {
    return Intl.message(
      '% h ',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Hour`
  String get hours {
    return Intl.message(
      'Hour',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `HRV`
  String get hrv {
    return Intl.message(
      'HRV',
      name: 'hrv',
      desc: '',
      args: [],
    );
  }

  /// `Aerobic`
  String get hrzone_aerobic {
    return Intl.message(
      'Aerobic',
      name: 'hrzone_aerobic',
      desc: '',
      args: [],
    );
  }

  /// `Anaerobic`
  String get hrzone_anaerobic {
    return Intl.message(
      'Anaerobic',
      name: 'hrzone_anaerobic',
      desc: '',
      args: [],
    );
  }

  /// `Easy`
  String get hrzone_easy {
    return Intl.message(
      'Easy',
      name: 'hrzone_easy',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a reasonable value (20-220)`
  String get hrzone_edit_caution {
    return Intl.message(
      'Please enter a reasonable value (20-220)',
      name: 'hrzone_edit_caution',
      desc: '',
      args: [],
    );
  }

  /// `The following are the descriptions of our default heart rate zones.\nThe zones may not match these descriptions if you customize them for different training purposes.`
  String get hrzone_intro_notitle_des {
    return Intl.message(
      'The following are the descriptions of our default heart rate zones.\nThe zones may not match these descriptions if you customize them for different training purposes.',
      name: 'hrzone_intro_notitle_des',
      desc: '',
      args: [],
    );
  }

  /// `Understanding Heart Zone`
  String get hrzone_intro_understandhr {
    return Intl.message(
      'Understanding Heart Zone',
      name: 'hrzone_intro_understandhr',
      desc: '',
      args: [],
    );
  }

  /// `Each heart rate zone influences your body while training. Focusing on different zones helps you build a balanced routine for strength, endurance, and power. Lower zones are great for warm-up and recovery, while higher zones drive progress`
  String get hrzone_intro_understandhr_des {
    return Intl.message(
      'Each heart rate zone influences your body while training. Focusing on different zones helps you build a balanced routine for strength, endurance, and power. Lower zones are great for warm-up and recovery, while higher zones drive progress',
      name: 'hrzone_intro_understandhr_des',
      desc: '',
      args: [],
    );
  }

  /// `Zone1 Warm Up`
  String get hrzone_intro_zone1 {
    return Intl.message(
      'Zone1 Warm Up',
      name: 'hrzone_intro_zone1',
      desc: '',
      args: [],
    );
  }

  /// `Training in this zone improves the ability of your heart to pump blood and improve themuscles’ ability to utilize oxygen. The bodybecomes more efficient at feeding the working muscles, and learns to metabolize fat as a source of fuel.`
  String get hrzone_intro_zone1_des {
    return Intl.message(
      'Training in this zone improves the ability of your heart to pump blood and improve themuscles’ ability to utilize oxygen. The bodybecomes more efficient at feeding the working muscles, and learns to metabolize fat as a source of fuel.',
      name: 'hrzone_intro_zone1_des',
      desc: '',
      args: [],
    );
  }

  /// `Zone2 Easy`
  String get hrzone_intro_zone2 {
    return Intl.message(
      'Zone2 Easy',
      name: 'hrzone_intro_zone2',
      desc: '',
      args: [],
    );
  }

  /// `This zone provides the same benefits as Zone1, but is more intense and burns more total calories.`
  String get hrzone_intro_zone2_des {
    return Intl.message(
      'This zone provides the same benefits as Zone1, but is more intense and burns more total calories.',
      name: 'hrzone_intro_zone2_des',
      desc: '',
      args: [],
    );
  }

  /// `Zone3 Aerobic`
  String get hrzone_intro_zone3 {
    return Intl.message(
      'Zone3 Aerobic',
      name: 'hrzone_intro_zone3',
      desc: '',
      args: [],
    );
  }

  /// `Most effective for overall cardiovascular fitness. Increases your cardio-respiratory capacity: that is, your ability to transport oxygenated blood to the muscle cells and carbon dioxide away from the cells.Also effective for increasing overall muscle strength.`
  String get hrzone_intro_zone3_des {
    return Intl.message(
      'Most effective for overall cardiovascular fitness. Increases your cardio-respiratory capacity: that is, your ability to transport oxygenated blood to the muscle cells and carbon dioxide away from the cells.Also effective for increasing overall muscle strength.',
      name: 'hrzone_intro_zone3_des',
      desc: '',
      args: [],
    );
  }

  /// `Zone4 Threshold`
  String get hrzone_intro_zone4 {
    return Intl.message(
      'Zone4 Threshold',
      name: 'hrzone_intro_zone4',
      desc: '',
      args: [],
    );
  }

  /// `The point at which the body cannot remove lactic acid as quickly as it is produced is called the lactate threshold or anaerobic threshold. It generally occurs at about 88% of the Heart Rate Zone. Training in this zone helps to increase the lactate threshold, which improves performance.Training in this zone is hard: your muscles are tired, your breathing is heavy.`
  String get hrzone_intro_zone4_des {
    return Intl.message(
      'The point at which the body cannot remove lactic acid as quickly as it is produced is called the lactate threshold or anaerobic threshold. It generally occurs at about 88% of the Heart Rate Zone. Training in this zone helps to increase the lactate threshold, which improves performance.Training in this zone is hard: your muscles are tired, your breathing is heavy.',
      name: 'hrzone_intro_zone4_des',
      desc: '',
      args: [],
    );
  }

  /// `Zone5 Maximum`
  String get hrzone_intro_zone5 {
    return Intl.message(
      'Zone5 Maximum',
      name: 'hrzone_intro_zone5',
      desc: '',
      args: [],
    );
  }

  /// `You should only train in this zone if you’re very fit, and only for very short periods of time. Lactic acid develops quickly as you areoperating in oxygen debt to the muscles.The value of training in this zone is you can increase your fast twitch muscle fibers which increase speed.`
  String get hrzone_intro_zone5_des {
    return Intl.message(
      'You should only train in this zone if you’re very fit, and only for very short periods of time. Lactic acid develops quickly as you areoperating in oxygen debt to the muscles.The value of training in this zone is you can increase your fast twitch muscle fibers which increase speed.',
      name: 'hrzone_intro_zone5_des',
      desc: '',
      args: [],
    );
  }

  /// `Warm Up`
  String get hrzone_warm_up {
    return Intl.message(
      'Warm Up',
      name: 'hrzone_warm_up',
      desc: '',
      args: [],
    );
  }

  /// `Hula hoop`
  String get hu_la_hoop {
    return Intl.message(
      'Hula hoop',
      name: 'hu_la_hoop',
      desc: '',
      args: [],
    );
  }

  /// `Ice hockey`
  String get ice_hockey {
    return Intl.message(
      'Ice hockey',
      name: 'ice_hockey',
      desc: '',
      args: [],
    );
  }

  /// `Incoming Call`
  String get Incoming_call {
    return Intl.message(
      'Incoming Call',
      name: 'Incoming_call',
      desc: '',
      args: [],
    );
  }

  /// `Indoor Cycling`
  String get Indoor_Cycling {
    return Intl.message(
      'Indoor Cycling',
      name: 'Indoor_Cycling',
      desc: '',
      args: [],
    );
  }

  /// `Indoor Running`
  String get Indoor_Running {
    return Intl.message(
      'Indoor Running',
      name: 'Indoor_Running',
      desc: '',
      args: [],
    );
  }

  /// `Indoor Walking`
  String get Indoor_Walking {
    return Intl.message(
      'Indoor Walking',
      name: 'Indoor_Walking',
      desc: '',
      args: [],
    );
  }

  /// `User Agreement and Privacy Policy`
  String get inland_first_use_policy_dialog {
    return Intl.message(
      'User Agreement and Privacy Policy',
      name: 'inland_first_use_policy_dialog',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the % App\nBefore you use it, please read %'s "User Agreement" and "Privacy Policy" carefully, % will strictly follow the terms you agree to use your information to provide you with better services.\nClicking "Agree" means you voluntarily agree to comply with %'s User Agreement and Privacy Policy.`
  String get inland_first_use_policy_dialog_des {
    return Intl.message(
      'Welcome to the % App\nBefore you use it, please read %\'s "User Agreement" and "Privacy Policy" carefully, % will strictly follow the terms you agree to use your information to provide you with better services.\nClicking "Agree" means you voluntarily agree to comply with %\'s User Agreement and Privacy Policy.',
      name: 'inland_first_use_policy_dialog_des',
      desc: '',
      args: [],
    );
  }

  /// `Input cannot be empty`
  String get input_can_not_be_empty {
    return Intl.message(
      'Input cannot be empty',
      name: 'input_can_not_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Install`
  String get Install {
    return Intl.message(
      'Install',
      name: 'Install',
      desc: '',
      args: [],
    );
  }

  /// `Installation failed, Please try again.`
  String get Installation_failed {
    return Intl.message(
      'Installation failed, Please try again.',
      name: 'Installation_failed',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate Zones Division`
  String get Interval_division_mode {
    return Intl.message(
      'Heart Rate Zones Division',
      name: 'Interval_division_mode',
      desc: '',
      args: [],
    );
  }

  /// `in.`
  String get in_unit {
    return Intl.message(
      'in.',
      name: 'in_unit',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email Address`
  String get Invalid_Email_Address {
    return Intl.message(
      'Invalid Email Address',
      name: 'Invalid_Email_Address',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password format`
  String get Invalid_password_format {
    return Intl.message(
      'Invalid password format',
      name: 'Invalid_password_format',
      desc: '',
      args: [],
    );
  }

  /// `Italiano`
  String get Italian {
    return Intl.message(
      'Italiano',
      name: 'Italian',
      desc: '',
      args: [],
    );
  }

  /// `Jan`
  String get Jan {
    return Intl.message(
      'Jan',
      name: 'Jan',
      desc: '',
      args: [],
    );
  }

  /// `Janpan`
  String get Janpan {
    return Intl.message(
      'Janpan',
      name: 'Janpan',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get January {
    return Intl.message(
      'January',
      name: 'January',
      desc: '',
      args: [],
    );
  }

  /// `日本語`
  String get Japanese {
    return Intl.message(
      '日本語',
      name: 'Japanese',
      desc: '',
      args: [],
    );
  }

  /// `Jazz`
  String get jazz {
    return Intl.message(
      'Jazz',
      name: 'jazz',
      desc: '',
      args: [],
    );
  }

  /// `Jul`
  String get Jul {
    return Intl.message(
      'Jul',
      name: 'Jul',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get July {
    return Intl.message(
      'July',
      name: 'July',
      desc: '',
      args: [],
    );
  }

  /// `Jumping Jack`
  String get Jumping_Jacks {
    return Intl.message(
      'Jumping Jack',
      name: 'Jumping_Jacks',
      desc: '',
      args: [],
    );
  }

  /// `Jump Rope`
  String get Jump_Rope {
    return Intl.message(
      'Jump Rope',
      name: 'Jump_Rope',
      desc: '',
      args: [],
    );
  }

  /// `Jun`
  String get Jun {
    return Intl.message(
      'Jun',
      name: 'Jun',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get June {
    return Intl.message(
      'June',
      name: 'June',
      desc: '',
      args: [],
    );
  }

  /// `Karate`
  String get karate {
    return Intl.message(
      'Karate',
      name: 'karate',
      desc: '',
      args: [],
    );
  }

  /// `Kayaking`
  String get kayaking {
    return Intl.message(
      'Kayaking',
      name: 'kayaking',
      desc: '',
      args: [],
    );
  }

  /// `kcal`
  String get kcal {
    return Intl.message(
      'kcal',
      name: 'kcal',
      desc: '',
      args: [],
    );
  }

  /// `Keep Agreement`
  String get Keep_agreeing {
    return Intl.message(
      'Keep Agreement',
      name: 'Keep_agreeing',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get kg {
    return Intl.message(
      'kg',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `Kickboxing`
  String get Kickboxing {
    return Intl.message(
      'Kickboxing',
      name: 'Kickboxing',
      desc: '',
      args: [],
    );
  }

  /// `Kilocalorie`
  String get Kilocalorie {
    return Intl.message(
      'Kilocalorie',
      name: 'Kilocalorie',
      desc: '',
      args: [],
    );
  }

  /// `Kilogram`
  String get Kilogram {
    return Intl.message(
      'Kilogram',
      name: 'Kilogram',
      desc: '',
      args: [],
    );
  }

  /// `Kilojoule`
  String get Kilojoules {
    return Intl.message(
      'Kilojoule',
      name: 'Kilojoules',
      desc: '',
      args: [],
    );
  }

  /// `Kilometer`
  String get Kilometer {
    return Intl.message(
      'Kilometer',
      name: 'Kilometer',
      desc: '',
      args: [],
    );
  }

  /// `Kite flying`
  String get kite_flying {
    return Intl.message(
      'Kite flying',
      name: 'kite_flying',
      desc: '',
      args: [],
    );
  }

  /// `kj`
  String get kj {
    return Intl.message(
      'kj',
      name: 'kj',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `Please ensure that the watch has more than 30% battery before switching the language.`
  String get kriki_language_lowbattery {
    return Intl.message(
      'Please ensure that the watch has more than 30% battery before switching the language.',
      name: 'kriki_language_lowbattery',
      desc: '',
      args: [],
    );
  }

  /// `Reinstall`
  String get kriki_language_reinstall {
    return Intl.message(
      'Reinstall',
      name: 'kriki_language_reinstall',
      desc: '',
      args: [],
    );
  }

  /// `Your Kriki language has been changed to`
  String get kriki_language_success_des {
    return Intl.message(
      'Your Kriki language has been changed to',
      name: 'kriki_language_success_des',
      desc: '',
      args: [],
    );
  }

  /// `Change Kriki Language to`
  String get kriki_language_title {
    return Intl.message(
      'Change Kriki Language to',
      name: 'kriki_language_title',
      desc: '',
      args: [],
    );
  }

  /// `The watch will take 10-15 minutes to complete the installation of the voice package, during which time the watch will temporarily disconnect and settings cannot be modified on the app until the installation is complete`
  String get kriki_wait_watch_install_des {
    return Intl.message(
      'The watch will take 10-15 minutes to complete the installation of the voice package, during which time the watch will temporarily disconnect and settings cannot be modified on the app until the installation is complete',
      name: 'kriki_wait_watch_install_des',
      desc: '',
      args: [],
    );
  }

  /// `Wait for the watch to complete the installation...`
  String get kriki_wait_watch_install_title {
    return Intl.message(
      'Wait for the watch to complete the installation...',
      name: 'kriki_wait_watch_install_title',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get lang {
    return Intl.message(
      'en',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `1625789967549001730`
  String get langId {
    return Intl.message(
      '1625789967549001730',
      name: 'langId',
      desc: '为了请求服务器的一个参数，后台根据我们自己定义的数字',
      args: [],
    );
  }

  /// `Last Name`
  String get Last_Name {
    return Intl.message(
      'Last Name',
      name: 'Last_Name',
      desc: '',
      args: [],
    );
  }

  /// `Synced Recently`
  String get Last_sync {
    return Intl.message(
      'Synced Recently',
      name: 'Last_sync',
      desc: '',
      args: [],
    );
  }

  /// `Last Week`
  String get LAST_WEEK {
    return Intl.message(
      'Last Week',
      name: 'LAST_WEEK',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get Later {
    return Intl.message(
      'Later',
      name: 'Later',
      desc: '',
      args: [],
    );
  }

  /// `The Latest Results`
  String get latest {
    return Intl.message(
      'The Latest Results',
      name: 'latest',
      desc: '',
      args: [],
    );
  }

  /// `Latin`
  String get latin {
    return Intl.message(
      'Latin',
      name: 'latin',
      desc: '',
      args: [],
    );
  }

  /// `lb`
  String get lb {
    return Intl.message(
      'lb',
      name: 'lb',
      desc: '',
      args: [],
    );
  }

  /// `Legal & Regulatory`
  String get legal_regulatory {
    return Intl.message(
      'Legal & Regulatory',
      name: 'legal_regulatory',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get Light {
    return Intl.message(
      'Light',
      name: 'Light',
      desc: '',
      args: [],
    );
  }

  /// `For the protection of privacy of minors,the minimum age for using this app is % years old.`
  String get limit_age_introductions {
    return Intl.message(
      'For the protection of privacy of minors,the minimum age for using this app is % years old.',
      name: 'limit_age_introductions',
      desc: '',
      args: [],
    );
  }

  /// `Used to match the nearest online servers to improve in-app data response speed and provide accurate weather information, etc.`
  String get location_permission_huawei_des {
    return Intl.message(
      'Used to match the nearest online servers to improve in-app data response speed and provide accurate weather information, etc.',
      name: 'location_permission_huawei_des',
      desc: '',
      args: [],
    );
  }

  /// `This allows % to get accurate  workout tracking data and weather updates.`
  String get location_permission_intro_guide {
    return Intl.message(
      'This allows % to get accurate  workout tracking data and weather updates.',
      name: 'location_permission_intro_guide',
      desc: '间接索取定位权限_无法跳转设置',
      args: [],
    );
  }

  /// `Location Access Not Authorized`
  String get Location_permission_not_authorized {
    return Intl.message(
      'Location Access Not Authorized',
      name: 'Location_permission_not_authorized',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth search and connection functions are unavailable without enabling location services. Please go to system settings to enable it.`
  String get location_service_des {
    return Intl.message(
      'Bluetooth search and connection functions are unavailable without enabling location services. Please go to system settings to enable it.',
      name: 'location_service_des',
      desc: '定位未开启_可跳转设置',
      args: [],
    );
  }

  /// `Location Services must be turned on for accurate tracking data and weather updates. Please go to System Settings to enable it.`
  String get location_service_ios_des {
    return Intl.message(
      'Location Services must be turned on for accurate tracking data and weather updates. Please go to System Settings to enable it.',
      name: 'location_service_ios_des',
      desc: '',
      args: [],
    );
  }

  /// `To get accurate workout tracking data and weather updates, % requires access of your Location.`
  String get location_services_permison_instructions {
    return Intl.message(
      'To get accurate workout tracking data and weather updates, % requires access of your Location.',
      name: 'location_services_permison_instructions',
      desc: '',
      args: [],
    );
  }

  /// `To get accurate distance, workout tracking, and weather updates.`
  String get location_services_permison_intro {
    return Intl.message(
      'To get accurate distance, workout tracking, and weather updates.',
      name: 'location_services_permison_intro',
      desc: '',
      args: [],
    );
  }

  /// `Location Service`
  String get location_services_title {
    return Intl.message(
      'Location Service',
      name: 'location_services_title',
      desc: '',
      args: [],
    );
  }

  /// `Allow "%" to Access Your Location`
  String get location_title {
    return Intl.message(
      'Allow "%" to Access Your Location',
      name: 'location_title',
      desc: '%=AppName\n索取系统级定位权限',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message(
      'Log In',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get LogOut {
    return Intl.message(
      'Log Out',
      name: 'LogOut',
      desc: '',
      args: [],
    );
  }

  /// `Low`
  String get Low {
    return Intl.message(
      'Low',
      name: 'Low',
      desc: '',
      args: [],
    );
  }

  /// `m`
  String get m {
    return Intl.message(
      'm',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `Main Goals`
  String get main_goals {
    return Intl.message(
      'Main Goals',
      name: 'main_goals',
      desc: '',
      args: [],
    );
  }

  /// `Main Watch Faces`
  String get Main_watch_faces {
    return Intl.message(
      'Main Watch Faces',
      name: 'Main_watch_faces',
      desc: '',
      args: [],
    );
  }

  /// `Make sure you type the same password twice`
  String get Make_sure_same_password_twice {
    return Intl.message(
      'Make sure you type the same password twice',
      name: 'Make_sure_same_password_twice',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get Male {
    return Intl.message(
      'Male',
      name: 'Male',
      desc: '',
      args: [],
    );
  }

  /// `Mar`
  String get Mar {
    return Intl.message(
      'Mar',
      name: 'Mar',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get March {
    return Intl.message(
      'March',
      name: 'March',
      desc: '',
      args: [],
    );
  }

  /// `Martial Arts`
  String get martial_arts {
    return Intl.message(
      'Martial Arts',
      name: 'martial_arts',
      desc: '',
      args: [],
    );
  }

  /// `Maximum`
  String get maximal {
    return Intl.message(
      'Maximum',
      name: 'maximal',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Heart Rate`
  String get maximum {
    return Intl.message(
      'Maximum Heart Rate',
      name: 'maximum',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Heart Rate Mode`
  String get Maximum_heart_rate_mode {
    return Intl.message(
      'Maximum Heart Rate Mode',
      name: 'Maximum_heart_rate_mode',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get May {
    return Intl.message(
      'May',
      name: 'May',
      desc: '',
      args: [],
    );
  }

  /// `Cumulative completion %%`
  String get medal_accomplish_sum {
    return Intl.message(
      'Cumulative completion %%',
      name: 'medal_accomplish_sum',
      desc: '',
      args: [],
    );
  }

  /// `Completed % today`
  String get medal_accomplish_today_progress {
    return Intl.message(
      'Completed % today',
      name: 'medal_accomplish_today_progress',
      desc: '',
      args: [],
    );
  }

  /// `Completion this week %`
  String get medal_accomplish_week_progress {
    return Intl.message(
      'Completion this week %',
      name: 'medal_accomplish_week_progress',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get medal_check {
    return Intl.message(
      'Check',
      name: 'medal_check',
      desc: '',
      args: [],
    );
  }

  /// `Medals`
  String get medal_entrance_title {
    return Intl.message(
      'Medals',
      name: 'medal_entrance_title',
      desc: '',
      args: [],
    );
  }

  /// `Equip`
  String get medal_equip {
    return Intl.message(
      'Equip',
      name: 'medal_equip',
      desc: '',
      args: [],
    );
  }

  /// `Equipped`
  String get medal_equipped {
    return Intl.message(
      'Equipped',
      name: 'medal_equipped',
      desc: '',
      args: [],
    );
  }

  /// `Medal successfully worn`
  String get medal_equip_success_toast {
    return Intl.message(
      'Medal successfully worn',
      name: 'medal_equip_success_toast',
      desc: '',
      args: [],
    );
  }

  /// `Won the award in %`
  String get medal_get_date {
    return Intl.message(
      'Won the award in %',
      name: 'medal_get_date',
      desc: '',
      args: [],
    );
  }

  /// `Great job!\nYou've unlocked`
  String get medal_get_popup {
    return Intl.message(
      'Great job!\nYou\'ve unlocked',
      name: 'medal_get_popup',
      desc: '',
      args: [],
    );
  }

  /// `Haven't Earned this Medal Yet`
  String get medal_not_get {
    return Intl.message(
      'Haven\'t Earned this Medal Yet',
      name: 'medal_not_get',
      desc: '',
      args: [],
    );
  }

  /// `Most Recent Achievement`
  String get medal_recent_get_time {
    return Intl.message(
      'Most Recent Achievement',
      name: 'medal_recent_get_time',
      desc: '',
      args: [],
    );
  }

  /// `Won this medal on %`
  String get medal_share_graded_des {
    return Intl.message(
      'Won this medal on %',
      name: 'medal_share_graded_des',
      desc: '',
      args: [],
    );
  }

  /// `Won this medal for the %th time on %%`
  String get medal_share_sum_des {
    return Intl.message(
      'Won this medal for the %th time on %%',
      name: 'medal_share_sum_des',
      desc: '',
      args: [],
    );
  }

  /// `Recently`
  String get medal_zone_recently {
    return Intl.message(
      'Recently',
      name: 'medal_zone_recently',
      desc: '',
      args: [],
    );
  }

  /// `Workout & Exercise`
  String get medal_zone_workout_exercise {
    return Intl.message(
      'Workout & Exercise',
      name: 'medal_zone_workout_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get Medium {
    return Intl.message(
      'Medium',
      name: 'Medium',
      desc: '',
      args: [],
    );
  }

  /// `Period`
  String get menstrual_add_period {
    return Intl.message(
      'Period',
      name: 'menstrual_add_period',
      desc: '',
      args: [],
    );
  }

  /// `Heavy Flow`
  String get menstrual_des_heavy_flow {
    return Intl.message(
      'Heavy Flow',
      name: 'menstrual_des_heavy_flow',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get menstrual_des_later {
    return Intl.message(
      'Later',
      name: 'menstrual_des_later',
      desc: '',
      args: [],
    );
  }

  /// `Light Flow`
  String get menstrual_des_light_flow {
    return Intl.message(
      'Light Flow',
      name: 'menstrual_des_light_flow',
      desc: '',
      args: [],
    );
  }

  /// `Medium Flow`
  String get menstrual_des_medium_flow {
    return Intl.message(
      'Medium Flow',
      name: 'menstrual_des_medium_flow',
      desc: '',
      args: [],
    );
  }

  /// `No Flow`
  String get menstrual_des_no_flow {
    return Intl.message(
      'No Flow',
      name: 'menstrual_des_no_flow',
      desc: '',
      args: [],
    );
  }

  /// `Now`
  String get menstrual_des_now {
    return Intl.message(
      'Now',
      name: 'menstrual_des_now',
      desc: '',
      args: [],
    );
  }

  /// `Ongoing`
  String get menstrual_des_ongoing {
    return Intl.message(
      'Ongoing',
      name: 'menstrual_des_ongoing',
      desc: '',
      args: [],
    );
  }

  /// `Possible Period Day`
  String get menstrual_des_possible {
    return Intl.message(
      'Possible Period Day',
      name: 'menstrual_des_possible',
      desc: '',
      args: [],
    );
  }

  /// `Predicted Period Day`
  String get menstrual_des_predict {
    return Intl.message(
      'Predicted Period Day',
      name: 'menstrual_des_predict',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get menstrual_des_predict_now {
    return Intl.message(
      '',
      name: 'menstrual_des_predict_now',
      desc: '',
      args: [],
    );
  }

  /// `Let's record period day`
  String get menstrual_des_start {
    return Intl.message(
      'Let\'s record period day',
      name: 'menstrual_des_start',
      desc: '',
      args: [],
    );
  }

  /// `As Usual`
  String get menstrual_des_usual_flow {
    return Intl.message(
      'As Usual',
      name: 'menstrual_des_usual_flow',
      desc: '',
      args: [],
    );
  }

  /// `Predicted Fertile Window`
  String get menstrual_des_window {
    return Intl.message(
      'Predicted Fertile Window',
      name: 'menstrual_des_window',
      desc: '',
      args: [],
    );
  }

  /// `How heavy the flow is?`
  String get menstrual_flow_ques {
    return Intl.message(
      'How heavy the flow is?',
      name: 'menstrual_flow_ques',
      desc: '',
      args: [],
    );
  }

  /// `How long is your typical menstrual cycle?`
  String get menstrual_guide_cycle_ques {
    return Intl.message(
      'How long is your typical menstrual cycle?',
      name: 'menstrual_guide_cycle_ques',
      desc: '',
      args: [],
    );
  }

  /// `Get predictions or notifications for upcoming periods and fertile windows`
  String get menstrual_guide_des {
    return Intl.message(
      'Get predictions or notifications for upcoming periods and fertile windows',
      name: 'menstrual_guide_des',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get menstrual_guide_get_start {
    return Intl.message(
      'Get Started',
      name: 'menstrual_guide_get_start',
      desc: '',
      args: [],
    );
  }

  /// `How long does your period\nusually last?`
  String get menstrual_guide_period_last_ques {
    return Intl.message(
      'How long does your period\nusually last?',
      name: 'menstrual_guide_period_last_ques',
      desc: '',
      args: [],
    );
  }

  /// `Recorded Period`
  String get menstrual_guide_recorded {
    return Intl.message(
      'Recorded Period',
      name: 'menstrual_guide_recorded',
      desc: '',
      args: [],
    );
  }

  /// `When did your last period start?`
  String get menstrual_guide_started_ques {
    return Intl.message(
      'When did your last period start?',
      name: 'menstrual_guide_started_ques',
      desc: '',
      args: [],
    );
  }

  /// `Period Started`
  String get menstrual_guide_started_title {
    return Intl.message(
      'Period Started',
      name: 'menstrual_guide_started_title',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get menstrual_options {
    return Intl.message(
      'Options',
      name: 'menstrual_options',
      desc: '',
      args: [],
    );
  }

  /// `Cycle Length`
  String get menstrual_options_cycle_length {
    return Intl.message(
      'Cycle Length',
      name: 'menstrual_options_cycle_length',
      desc: '',
      args: [],
    );
  }

  /// `Period Length`
  String get menstrual_options_period_length {
    return Intl.message(
      'Period Length',
      name: 'menstrual_options_period_length',
      desc: '',
      args: [],
    );
  }

  /// `Period Predictions`
  String get menstrual_options_period_predict {
    return Intl.message(
      'Period Predictions',
      name: 'menstrual_options_period_predict',
      desc: '',
      args: [],
    );
  }

  /// `Fertile Window Predictions`
  String get menstrual_options_window_predict {
    return Intl.message(
      'Fertile Window Predictions',
      name: 'menstrual_options_window_predict',
      desc: '',
      args: [],
    );
  }

  /// `Period Tracking`
  String get menstrual_period_tracking {
    return Intl.message(
      'Period Tracking',
      name: 'menstrual_period_tracking',
      desc: '',
      args: [],
    );
  }

  /// `Fertility Tracking`
  String get menstrual_window_tracking {
    return Intl.message(
      'Fertility Tracking',
      name: 'menstrual_window_tracking',
      desc: '',
      args: [],
    );
  }

  /// `Meter`
  String get Meter {
    return Intl.message(
      'Meter',
      name: 'Meter',
      desc: '',
      args: [],
    );
  }

  /// `METs`
  String get mets {
    return Intl.message(
      'METs',
      name: 'mets',
      desc: '',
      args: [],
    );
  }

  /// `Middle Left`
  String get Middle_left {
    return Intl.message(
      'Middle Left',
      name: 'Middle_left',
      desc: '',
      args: [],
    );
  }

  /// `Middle Right`
  String get Middle_right {
    return Intl.message(
      'Middle Right',
      name: 'Middle_right',
      desc: '',
      args: [],
    );
  }

  /// `Mile`
  String get Mile {
    return Intl.message(
      'Mile',
      name: 'Mile',
      desc: '',
      args: [],
    );
  }

  /// `min`
  String get min {
    return Intl.message(
      'min',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `Minute`
  String get minutes {
    return Intl.message(
      'Minute',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `mi`
  String get mi_unit {
    return Intl.message(
      'mi',
      name: 'mi_unit',
      desc: '',
      args: [],
    );
  }

  /// `Model No.`
  String get model_name {
    return Intl.message(
      'Model No.',
      name: 'model_name',
      desc: '',
      args: [],
    );
  }

  /// `Mon`
  String get Mon {
    return Intl.message(
      'Mon',
      name: 'Mon',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get Monday {
    return Intl.message(
      'Monday',
      name: 'Monday',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get monthly_title {
    return Intl.message(
      'Month',
      name: 'monthly_title',
      desc: '',
      args: [],
    );
  }

  /// `Motorboating`
  String get motorboating {
    return Intl.message(
      'Motorboating',
      name: 'motorboating',
      desc: '',
      args: [],
    );
  }

  /// `Mountain Climbing`
  String get Mountain_climbing {
    return Intl.message(
      'Mountain Climbing',
      name: 'Mountain_climbing',
      desc: '',
      args: [],
    );
  }

  /// `ms`
  String get ms {
    return Intl.message(
      'ms',
      name: 'ms',
      desc: '',
      args: [],
    );
  }

  /// `Mute `
  String get mute {
    return Intl.message(
      'Mute ',
      name: 'mute',
      desc: '',
      args: [],
    );
  }

  /// `Mute`
  String get mute_notifications {
    return Intl.message(
      'Mute',
      name: 'mute_notifications',
      desc: '',
      args: [],
    );
  }

  /// `App Keeps Active`
  String get my_app_keeps_active {
    return Intl.message(
      'App Keeps Active',
      name: 'my_app_keeps_active',
      desc: '',
      args: [],
    );
  }

  /// `Allow App Auto-Start`
  String get my_app_keeps_active_auto_start {
    return Intl.message(
      'Allow App Auto-Start',
      name: 'my_app_keeps_active_auto_start',
      desc: '',
      args: [],
    );
  }

  /// `Remove battery restrictions for the app`
  String get my_app_keeps_active_disable_battery_restriction {
    return Intl.message(
      'Remove battery restrictions for the app',
      name: 'my_app_keeps_active_disable_battery_restriction',
      desc: '',
      args: [],
    );
  }

  /// `App Keeps Active Guide`
  String get my_app_keeps_active_guide {
    return Intl.message(
      'App Keeps Active Guide',
      name: 'my_app_keeps_active_guide',
      desc: '',
      args: [],
    );
  }

  /// `My Data`
  String get my_data {
    return Intl.message(
      'My Data',
      name: 'my_data',
      desc: '',
      args: [],
    );
  }

  /// `My Watch`
  String get my_watch {
    return Intl.message(
      'My Watch',
      name: 'my_watch',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get my_watch_detail_notifications {
    return Intl.message(
      'Notifications',
      name: 'my_watch_detail_notifications',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get New {
    return Intl.message(
      'New',
      name: 'New',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get new_firmware_version {
    return Intl.message(
      'New',
      name: 'new_firmware_version',
      desc: '',
      args: [],
    );
  }

  /// `New %`
  String get New_P {
    return Intl.message(
      'New %',
      name: 'New_P',
      desc: '%=Email/password/etc',
      args: [],
    );
  }

  /// `Make sure your new password is not identical to the old one`
  String get new_password_same_caution {
    return Intl.message(
      'Make sure your new password is not identical to the old one',
      name: 'new_password_same_caution',
      desc: '',
      args: [],
    );
  }

  /// `A new version of watch firmware is available to upgrade.`
  String get new_version_of_watch_firmware {
    return Intl.message(
      'A new version of watch firmware is available to upgrade.',
      name: 'new_version_of_watch_firmware',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get Next {
    return Intl.message(
      'Next',
      name: 'Next',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `No Alarms`
  String get No_alarm_clock {
    return Intl.message(
      'No Alarms',
      name: 'No_alarm_clock',
      desc: '',
      args: [],
    );
  }

  /// `Device connection failed. Please try the following steps:\n1. Access the Bluetooth settings in your phone's system settings.\n2. Reconnect the intended device. \n3. Reopen % app.`
  String get no_bt_have_ble {
    return Intl.message(
      'Device connection failed. Please try the following steps:\n1. Access the Bluetooth settings in your phone\'s system settings.\n2. Reconnect the intended device. \n3. Reopen % app.',
      name: 'no_bt_have_ble',
      desc: '%=AppName\nbt未连接',
      args: [],
    );
  }

  /// `Device connection failed. Please try the following steps:\n1. Access the Bluetooth settings in your phone's system settings.\n2. Tap the ⓘ mark next to the intended device and select 'Forget This Device'.\n3. Reconnect this device in % app`
  String get no_bt_no_ble {
    return Intl.message(
      'Device connection failed. Please try the following steps:\n1. Access the Bluetooth settings in your phone\'s system settings.\n2. Tap the ⓘ mark next to the intended device and select \'Forget This Device\'.\n3. Reconnect this device in % app',
      name: 'no_bt_no_ble',
      desc: '%=AppName\nble连接错误',
      args: [],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message(
      'None',
      name: 'none',
      desc: '',
      args: [],
    );
  }

  /// `Please check your network and try again.`
  String get no_network {
    return Intl.message(
      'Please check your network and try again.',
      name: 'no_network',
      desc: '',
      args: [],
    );
  }

  /// `No Notifications`
  String get no_notification {
    return Intl.message(
      'No Notifications',
      name: 'no_notification',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get normal {
    return Intl.message(
      'Normal',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `Access Details Directly`
  String get notification_direct_show_details {
    return Intl.message(
      'Access Details Directly',
      name: 'notification_direct_show_details',
      desc: '',
      args: [],
    );
  }

  /// `With the switch on,incoming notifications will lead you directly to their details`
  String get notification_direct_show_details_des {
    return Intl.message(
      'With the switch on,incoming notifications will lead you directly to their details',
      name: 'notification_direct_show_details_des',
      desc: '',
      args: [],
    );
  }

  /// `More Details`
  String get notification_more_details {
    return Intl.message(
      'More Details',
      name: 'notification_more_details',
      desc: '',
      args: [],
    );
  }

  /// `Do not sync notifications when not worn`
  String get notification_notwear_notnotify {
    return Intl.message(
      'Do not sync notifications when not worn',
      name: 'notification_notwear_notnotify',
      desc: '',
      args: [],
    );
  }

  /// `Automatically detects whether you are wearing a watch, and when the switch is turned on, notifications will no longer be synchronized when the watch is not worn`
  String get notification_notwear_notnotify_des {
    return Intl.message(
      'Automatically detects whether you are wearing a watch, and when the switch is turned on, notifications will no longer be synchronized when the watch is not worn',
      name: 'notification_notwear_notnotify_des',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications from the phone on your watch. Notifications may include alerts and sounds. These can be configured in the Settings.`
  String get notification_permison_instructions {
    return Intl.message(
      'Receive notifications from the phone on your watch. Notifications may include alerts and sounds. These can be configured in the Settings.',
      name: 'notification_permison_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get Notifications {
    return Intl.message(
      'Notifications',
      name: 'Notifications',
      desc: '',
      args: [],
    );
  }

  /// `Allow "%" to Access Notifications`
  String get notifications_permisson_title {
    return Intl.message(
      'Allow "%" to Access Notifications',
      name: 'notifications_permisson_title',
      desc: '',
      args: [],
    );
  }

  /// `Ensure that % and the apps requiring notification access have obtained the necessary permissions on your phone, and that your watch and phone maintain a Bluetooth connection.`
  String get notification_system_bluetooth_ios_hint {
    return Intl.message(
      'Ensure that % and the apps requiring notification access have obtained the necessary permissions on your phone, and that your watch and phone maintain a Bluetooth connection.',
      name: 'notification_system_bluetooth_ios_hint',
      desc: '',
      args: [],
    );
  }

  /// `No update available！`
  String get no_update_avaliable {
    return Intl.message(
      'No update available！',
      name: 'no_update_avaliable',
      desc: '',
      args: [],
    );
  }

  /// `Nov`
  String get Nov {
    return Intl.message(
      'Nov',
      name: 'Nov',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get November {
    return Intl.message(
      'November',
      name: 'November',
      desc: '',
      args: [],
    );
  }

  /// `No World Clock`
  String get No_world_clock {
    return Intl.message(
      'No World Clock',
      name: 'No_world_clock',
      desc: '',
      args: [],
    );
  }

  /// `Oct`
  String get Oct {
    return Intl.message(
      'Oct',
      name: 'Oct',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get October {
    return Intl.message(
      'October',
      name: 'October',
      desc: '',
      args: [],
    );
  }

  /// `Off`
  String get Off {
    return Intl.message(
      'Off',
      name: 'Off',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get Ok {
    return Intl.message(
      'OK',
      name: 'Ok',
      desc: '',
      args: [],
    );
  }

  /// `Old %`
  String get Old {
    return Intl.message(
      'Old %',
      name: 'Old',
      desc: '%=Email/password/etc',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get oops_something_went_wrong {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'oops_something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `OPEN`
  String get open_goal {
    return Intl.message(
      'OPEN',
      name: 'open_goal',
      desc: '',
      args: [],
    );
  }

  /// `Open Water Swimming`
  String get Open_Water_Swimming {
    return Intl.message(
      'Open Water Swimming',
      name: 'Open_Water_Swimming',
      desc: '',
      args: [],
    );
  }

  /// `Kriki OS`
  String get os_name {
    return Intl.message(
      'Kriki OS',
      name: 'os_name',
      desc: '',
      args: [],
    );
  }

  /// `Cubitt OS`
  String get os_name_Cubitt {
    return Intl.message(
      'Cubitt OS',
      name: 'os_name_Cubitt',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get Other {
    return Intl.message(
      'Other',
      name: 'Other',
      desc: '',
      args: [],
    );
  }

  /// `Other Goals`
  String get other_goals {
    return Intl.message(
      'Other Goals',
      name: 'other_goals',
      desc: '',
      args: [],
    );
  }

  /// `Outdoor Cycling`
  String get Outdoor_Cycling {
    return Intl.message(
      'Outdoor Cycling',
      name: 'Outdoor_Cycling',
      desc: '',
      args: [],
    );
  }

  /// `Outdoor Running`
  String get Outdoor_Running {
    return Intl.message(
      'Outdoor Running',
      name: 'Outdoor_Running',
      desc: '',
      args: [],
    );
  }

  /// `Outdoor Walking`
  String get Outdoor_Walking {
    return Intl.message(
      'Outdoor Walking',
      name: 'Outdoor_Walking',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Pace`
  String get Pace {
    return Intl.message(
      'Pace',
      name: 'Pace',
      desc: '',
      args: [],
    );
  }

  /// `Paddling`
  String get paddle {
    return Intl.message(
      'Paddling',
      name: 'paddle',
      desc: '',
      args: [],
    );
  }

  /// `Padel`
  String get padel {
    return Intl.message(
      'Padel',
      name: 'padel',
      desc: '',
      args: [],
    );
  }

  /// `Pairing...`
  String get Pairing {
    return Intl.message(
      'Pairing...',
      name: 'Pairing',
      desc: '',
      args: [],
    );
  }

  /// `Connecting…`
  String get Pairing_connecting {
    return Intl.message(
      'Connecting…',
      name: 'Pairing_connecting',
      desc: '',
      args: [],
    );
  }

  /// `Unable to Connect to Your Watch`
  String get Pairing_connection_failed {
    return Intl.message(
      'Unable to Connect to Your Watch',
      name: 'Pairing_connection_failed',
      desc: '',
      args: [],
    );
  }

  /// `Make sure your watch is powered on and is not paired with another phone.`
  String get Pairing_connection_failed_tips {
    return Intl.message(
      'Make sure your watch is powered on and is not paired with another phone.',
      name: 'Pairing_connection_failed_tips',
      desc: '',
      args: [],
    );
  }

  /// `Pair`
  String get Pairing_device_title {
    return Intl.message(
      'Pair',
      name: 'Pairing_device_title',
      desc: '',
      args: [],
    );
  }

  /// `Set Up a Watch`
  String get pairing_with_your_watch {
    return Intl.message(
      'Set Up a Watch',
      name: 'pairing_with_your_watch',
      desc: '',
      args: [],
    );
  }

  /// `Scan The QR Code on The Watch`
  String get Pair_scan_the_qr_code {
    return Intl.message(
      'Scan The QR Code on The Watch',
      name: 'Pair_scan_the_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `% does not have system camera permission and can not scan the QR code. Please proceed to grant permissions.`
  String get Pair_watchic_does_not_have_system_camera {
    return Intl.message(
      '% does not have system camera permission and can not scan the QR code. Please proceed to grant permissions.',
      name: 'Pair_watchic_does_not_have_system_camera',
      desc: '非官方，引导获取相机授权描述',
      args: [],
    );
  }

  /// `Allow "%" to Access Bluetooth`
  String get Pair_watchic_wants_to_use_bluetooth {
    return Intl.message(
      'Allow "%" to Access Bluetooth',
      name: 'Pair_watchic_wants_to_use_bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Parallel bars`
  String get parallel_bar {
    return Intl.message(
      'Parallel bars',
      name: 'parallel_bar',
      desc: '',
      args: [],
    );
  }

  /// `Pairing With Your Watch`
  String get paring_code_title {
    return Intl.message(
      'Pairing With Your Watch',
      name: 'paring_code_title',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, the code you entered doesn't match`
  String get paring_code_you_entered_doesn_match {
    return Intl.message(
      'Sorry, the code you entered doesn\'t match',
      name: 'paring_code_you_entered_doesn_match',
      desc: '',
      args: [],
    );
  }

  /// `Press and hold the side button of the watch to turn it on before Bluetooth searching.`
  String get paring_tips {
    return Intl.message(
      'Press and hold the side button of the watch to turn it on before Bluetooth searching.',
      name: 'paring_tips',
      desc: '',
      args: [],
    );
  }

  /// `Parkour`
  String get parkour {
    return Intl.message(
      'Parkour',
      name: 'parkour',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be 8 to 16 characters long and include at least 1 number and 1 letter`
  String get Password_must_contain_digits {
    return Intl.message(
      'Password must be 8 to 16 characters long and include at least 1 number and 1 letter',
      name: 'Password_must_contain_digits',
      desc: '',
      args: [],
    );
  }

  /// `Your personal data is important for accurately tracking your steps, distance, and calorie burn.`
  String get personal_data_is_important {
    return Intl.message(
      'Your personal data is important for accurately tracking your steps, distance, and calorie burn.',
      name: 'personal_data_is_important',
      desc: '',
      args: [],
    );
  }

  /// `Personal`
  String get Personal_information {
    return Intl.message(
      'Personal',
      name: 'Personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Photos`
  String get Photo_face {
    return Intl.message(
      'Photos',
      name: 'Photo_face',
      desc: '',
      args: [],
    );
  }

  /// `To create a personalized watch face using your favorite photos for your smartwatch.`
  String get photo_permison_instructions {
    return Intl.message(
      'To create a personalized watch face using your favorite photos for your smartwatch.',
      name: 'photo_permison_instructions',
      desc: '',
      args: [],
    );
  }

  /// `This permission is needed to support uploading and adding a personal avatar or creating a photo watch face`
  String get photo_storage_permission_des {
    return Intl.message(
      'This permission is needed to support uploading and adding a personal avatar or creating a photo watch face',
      name: 'photo_storage_permission_des',
      desc: '',
      args: [],
    );
  }

  /// `Instructions for Gallery and Storage Permissions`
  String get photo_storage_permission_title {
    return Intl.message(
      'Instructions for Gallery and Storage Permissions',
      name: 'photo_storage_permission_title',
      desc: '',
      args: [],
    );
  }

  /// `Physiological Information`
  String get physical_data_title {
    return Intl.message(
      'Physiological Information',
      name: 'physical_data_title',
      desc: '',
      args: [],
    );
  }

  /// `Explore tips for relieving stress.`
  String get physical_or_mental_condition {
    return Intl.message(
      'Explore tips for relieving stress.',
      name: 'physical_or_mental_condition',
      desc: '',
      args: [],
    );
  }

  /// `Pickleball`
  String get pickleball {
    return Intl.message(
      'Pickleball',
      name: 'pickleball',
      desc: '',
      args: [],
    );
  }

  /// `Pilates`
  String get Pilates {
    return Intl.message(
      'Pilates',
      name: 'Pilates',
      desc: '',
      args: [],
    );
  }

  /// `Plank`
  String get Plank {
    return Intl.message(
      'Plank',
      name: 'Plank',
      desc: '',
      args: [],
    );
  }

  /// `Please add at least one watch.`
  String get please_add_at_least_one_watch {
    return Intl.message(
      'Please add at least one watch.',
      name: 'please_add_at_least_one_watch',
      desc: '',
      args: [],
    );
  }

  /// `Please Complete Your Personal Information`
  String get please_complete_the_information {
    return Intl.message(
      'Please Complete Your Personal Information',
      name: 'please_complete_the_information',
      desc: '未填写完整toast提示',
      args: [],
    );
  }

  /// `This information helps to calculate accurate fitness and health tracking data. We assure you that your personal data is kept confidential and will never be shared.`
  String get please_complete_your_information {
    return Intl.message(
      'This information helps to calculate accurate fitness and health tracking data. We assure you that your personal data is kept confidential and will never be shared.',
      name: 'please_complete_your_information',
      desc: '',
      args: [],
    );
  }

  /// `Please keep at least one data type.`
  String get please_keep_at_least_one_data_type {
    return Intl.message(
      'Please keep at least one data type.',
      name: 'please_keep_at_least_one_data_type',
      desc: '',
      args: [],
    );
  }

  /// `Please pair your watch first. Face Gallery will automatically match the suitable watch faces. `
  String get please_pair_your_watch_first {
    return Intl.message(
      'Please pair your watch first. Face Gallery will automatically match the suitable watch faces. ',
      name: 'please_pair_your_watch_first',
      desc: '',
      args: [],
    );
  }

  /// `Please wear your watch and start exercising. The detailed record of your workout will be synchronized here afterwards.`
  String get please_put_on_the_watch {
    return Intl.message(
      'Please wear your watch and start exercising. The detailed record of your workout will be synchronized here afterwards.',
      name: 'please_put_on_the_watch',
      desc: '',
      args: [],
    );
  }

  /// `Please select a photo`
  String get please_select_photo {
    return Intl.message(
      'Please select a photo',
      name: 'please_select_photo',
      desc: '',
      args: [],
    );
  }

  /// `Please turn on Bluetooth.`
  String get please_turn_on_bluetooth {
    return Intl.message(
      'Please turn on Bluetooth.',
      name: 'please_turn_on_bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Please verify the Bluetooth pairing request.`
  String get please_verify_bluethooth_pairing_request_ios {
    return Intl.message(
      'Please verify the Bluetooth pairing request.',
      name: 'please_verify_bluethooth_pairing_request_ios',
      desc: '通话设置ios请求蓝牙配对',
      args: [],
    );
  }

  /// `Please verify the Bluetooth pairing request. If you don't see a pairing request, please check the notification bar messages and confirm.`
  String get please_verify_bluetooth_pairing_request_android {
    return Intl.message(
      'Please verify the Bluetooth pairing request. If you don\'t see a pairing request, please check the notification bar messages and confirm.',
      name: 'please_verify_bluetooth_pairing_request_android',
      desc: '通话设置安卓请求蓝牙配对',
      args: [],
    );
  }

  /// `PM`
  String get PM {
    return Intl.message(
      'PM',
      name: 'PM',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get points {
    return Intl.message(
      'Points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `Pool Length`
  String get pool_length {
    return Intl.message(
      'Pool Length',
      name: 'pool_length',
      desc: '',
      args: [],
    );
  }

  /// `Pool Swimming`
  String get Pool_Swimming {
    return Intl.message(
      'Pool Swimming',
      name: 'Pool_Swimming',
      desc: '',
      args: [],
    );
  }

  /// `Português`
  String get Portuguese {
    return Intl.message(
      'Português',
      name: 'Portuguese',
      desc: '',
      args: [],
    );
  }

  /// `Pound`
  String get Pound {
    return Intl.message(
      'Pound',
      name: 'Pound',
      desc: '',
      args: [],
    );
  }

  /// `Power`
  String get power {
    return Intl.message(
      'Power',
      name: 'power',
      desc: '',
      args: [],
    );
  }

  /// `Follow the phone system`
  String get preference_follow_the_system {
    return Intl.message(
      'Follow the phone system',
      name: 'preference_follow_the_system',
      desc: '',
      args: [],
    );
  }

  /// `Preference Settings`
  String get preference_settings_title {
    return Intl.message(
      'Preference Settings',
      name: 'preference_settings_title',
      desc: '',
      args: [],
    );
  }

  /// `Walking And Running Distance`
  String get preference_walkingRunningUnit {
    return Intl.message(
      'Walking And Running Distance',
      name: 'preference_walkingRunningUnit',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get Privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'Privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Product Manual`
  String get Product_user_manual {
    return Intl.message(
      'Product Manual',
      name: 'Product_user_manual',
      desc: '',
      args: [],
    );
  }

  /// `Pull Down to Sync Data`
  String get pull_synchronize_data {
    return Intl.message(
      'Pull Down to Sync Data',
      name: 'pull_synchronize_data',
      desc: '',
      args: [],
    );
  }

  /// `Pull-Up`
  String get Pull_up {
    return Intl.message(
      'Pull-Up',
      name: 'Pull_up',
      desc: '',
      args: [],
    );
  }

  /// `Every day is a fresh start,begin with the all-new watch faces.`
  String get push_new_watchface_des {
    return Intl.message(
      'Every day is a fresh start,begin with the all-new watch faces.',
      name: 'push_new_watchface_des',
      desc: '',
      args: [],
    );
  }

  /// `New watch faces are available! Download and use them now!`
  String get push_new_watchface_title {
    return Intl.message(
      'New watch faces are available! Download and use them now!',
      name: 'push_new_watchface_title',
      desc: '',
      args: [],
    );
  }

  /// `We have responded to your question or feedback.`
  String get push_reply_suggestion_title {
    return Intl.message(
      'We have responded to your question or feedback.',
      name: 'push_reply_suggestion_title',
      desc: '',
      args: [],
    );
  }

  /// `Push-Up`
  String get Push_up {
    return Intl.message(
      'Push-Up',
      name: 'Push_up',
      desc: '',
      args: [],
    );
  }

  /// `Astronomy`
  String get quickaccess_astronomy_title {
    return Intl.message(
      'Astronomy',
      name: 'quickaccess_astronomy_title',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get quickaccess_health_title {
    return Intl.message(
      'Health',
      name: 'quickaccess_health_title',
      desc: '',
      args: [],
    );
  }

  /// `In Use`
  String get quickaccess_in_use_zone {
    return Intl.message(
      'In Use',
      name: 'quickaccess_in_use_zone',
      desc: '',
      args: [],
    );
  }

  /// `Menstruation`
  String get quickaccess_menstruation_title {
    return Intl.message(
      'Menstruation',
      name: 'quickaccess_menstruation_title',
      desc: '',
      args: [],
    );
  }

  /// `Settable`
  String get quickaccess_settable_zone {
    return Intl.message(
      'Settable',
      name: 'quickaccess_settable_zone',
      desc: '',
      args: [],
    );
  }

  /// `Suggestions`
  String get quickaccess_suggestion_title {
    return Intl.message(
      'Suggestions',
      name: 'quickaccess_suggestion_title',
      desc: '',
      args: [],
    );
  }

  /// `Trail`
  String get quickaccess_trail_title {
    return Intl.message(
      'Trail',
      name: 'quickaccess_trail_title',
      desc: '',
      args: [],
    );
  }

  /// `UV Index`
  String get quickaccess_uvindex_title {
    return Intl.message(
      'UV Index',
      name: 'quickaccess_uvindex_title',
      desc: '',
      args: [],
    );
  }

  /// `Watch Face`
  String get quickaccess_watchface_title {
    return Intl.message(
      'Watch Face',
      name: 'quickaccess_watchface_title',
      desc: '',
      args: [],
    );
  }

  /// `Quick Reply`
  String get quick_reply {
    return Intl.message(
      'Quick Reply',
      name: 'quick_reply',
      desc: '',
      args: [],
    );
  }

  /// `Keep at least 1 quick reply`
  String get quick_reply_delete_caution {
    return Intl.message(
      'Keep at least 1 quick reply',
      name: 'quick_reply_delete_caution',
      desc: '',
      args: [],
    );
  }

  /// `To ensure that quick reply content is displayed correctly on your watch, please use the same language as your watch to edit quick replies. Your watch is currently set to %`
  String get quick_reply_des {
    return Intl.message(
      'To ensure that quick reply content is displayed correctly on your watch, please use the same language as your watch to edit quick replies. Your watch is currently set to %',
      name: 'quick_reply_des',
      desc: '',
      args: [],
    );
  }

  /// `Click the content area to change the content`
  String get quick_reply_edit_des {
    return Intl.message(
      'Click the content area to change the content',
      name: 'quick_reply_edit_des',
      desc: '',
      args: [],
    );
  }

  /// `Restore Defaults`
  String get quick_reply_restore_defaults {
    return Intl.message(
      'Restore Defaults',
      name: 'quick_reply_restore_defaults',
      desc: '',
      args: [],
    );
  }

  /// `Restore successfully`
  String get quick_reply_restore_defaults_success {
    return Intl.message(
      'Restore successfully',
      name: 'quick_reply_restore_defaults_success',
      desc: '',
      args: [],
    );
  }

  /// `Racing`
  String get racing {
    return Intl.message(
      'Racing',
      name: 'racing',
      desc: '',
      args: [],
    );
  }

  /// `Wake on Wrist Raise`
  String get Raise_to_wake {
    return Intl.message(
      'Wake on Wrist Raise',
      name: 'Raise_to_wake',
      desc: '',
      args: [],
    );
  }

  /// `Range`
  String get range {
    return Intl.message(
      'Range',
      name: 'range',
      desc: '',
      args: [],
    );
  }

  /// `Reached the maximum number of items that can be added`
  String get Reached_the_maximum_number_of_items_that_can_be_added {
    return Intl.message(
      'Reached the maximum number of items that can be added',
      name: 'Reached_the_maximum_number_of_items_that_can_be_added',
      desc: '',
      args: [],
    );
  }

  /// `Restart`
  String get Reboot {
    return Intl.message(
      'Restart',
      name: 'Reboot',
      desc: '',
      args: [],
    );
  }

  /// `Restart Successful`
  String get reboot_successful {
    return Intl.message(
      'Restart Successful',
      name: 'reboot_successful',
      desc: '',
      args: [],
    );
  }

  /// `Add device`
  String get recovery_mode_add_device {
    return Intl.message(
      'Add device',
      name: 'recovery_mode_add_device',
      desc: '',
      args: [],
    );
  }

  /// `Please wait for the watch to start up and pair again`
  String get recovery_mode_recovering_des {
    return Intl.message(
      'Please wait for the watch to start up and pair again',
      name: 'recovery_mode_recovering_des',
      desc: '',
      args: [],
    );
  }

  /// `System is repairing`
  String get recovery_mode_recovering_title {
    return Intl.message(
      'System is repairing',
      name: 'recovery_mode_recovering_title',
      desc: '',
      args: [],
    );
  }

  /// `Device abnormal, please repair immediately`
  String get recovery_mode_start_caution {
    return Intl.message(
      'Device abnormal, please repair immediately',
      name: 'recovery_mode_start_caution',
      desc: '',
      args: [],
    );
  }

  /// `Start repairing`
  String get recovery_mode_start_recovery {
    return Intl.message(
      'Start repairing',
      name: 'recovery_mode_start_recovery',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter New Password`
  String get ReEnter_New_Password {
    return Intl.message(
      'Re-enter New Password',
      name: 'ReEnter_New_Password',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get region {
    return Intl.message(
      'Region',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `REM`
  String get REM {
    return Intl.message(
      'REM',
      name: 'REM',
      desc: '',
      args: [],
    );
  }

  /// `Remaining space after deletion : % kb`
  String get Remaining_space_after_deletion {
    return Intl.message(
      'Remaining space after deletion : % kb',
      name: 'Remaining_space_after_deletion',
      desc: '',
      args: [],
    );
  }

  /// `High heart rate alert`
  String get reminders_high_hr_alert {
    return Intl.message(
      'High heart rate alert',
      name: 'reminders_high_hr_alert',
      desc: '',
      args: [],
    );
  }

  /// `Alert when heart rate exceeds the set value for more than 10 minutes in a non-active state`
  String get reminders_high_hr_alert_des {
    return Intl.message(
      'Alert when heart rate exceeds the set value for more than 10 minutes in a non-active state',
      name: 'reminders_high_hr_alert_des',
      desc: '',
      args: [],
    );
  }

  /// `Low heart rate alert`
  String get reminders_low_hr_alert {
    return Intl.message(
      'Low heart rate alert',
      name: 'reminders_low_hr_alert',
      desc: '',
      args: [],
    );
  }

  /// `Alert when heart rate is below the set value for more than 10 minutes in a non-active state`
  String get reminders_low_hr_alert_des {
    return Intl.message(
      'Alert when heart rate is below the set value for more than 10 minutes in a non-active state',
      name: 'reminders_low_hr_alert_des',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get Remove {
    return Intl.message(
      'Remove',
      name: 'Remove',
      desc: '',
      args: [],
    );
  }

  /// `Now`
  String get Repair_immediately {
    return Intl.message(
      'Now',
      name: 'Repair_immediately',
      desc: '',
      args: [],
    );
  }

  /// `Repeat`
  String get Repeat {
    return Intl.message(
      'Repeat',
      name: 'Repeat',
      desc: '',
      args: [],
    );
  }

  /// `Reset password,expires in 24 hours`
  String get reset_code_expire_time {
    return Intl.message(
      'Reset password,expires in 24 hours',
      name: 'reset_code_expire_time',
      desc: '',
      args: [],
    );
  }

  /// `Resting`
  String get resting {
    return Intl.message(
      'Resting',
      name: 'resting',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get Retry {
    return Intl.message(
      'Retry',
      name: 'Retry',
      desc: '',
      args: [],
    );
  }

  /// `Cycling Speed`
  String get Riding_speed {
    return Intl.message(
      'Cycling Speed',
      name: 'Riding_speed',
      desc: '',
      args: [],
    );
  }

  /// `Rock Climbing`
  String get Rock_Climbing {
    return Intl.message(
      'Rock Climbing',
      name: 'Rock_Climbing',
      desc: '',
      args: [],
    );
  }

  /// `Roller skating`
  String get roller_skating {
    return Intl.message(
      'Roller skating',
      name: 'roller_skating',
      desc: '',
      args: [],
    );
  }

  /// `Get insights! Stay Motivated!`
  String get rookie_landingpage_slogan {
    return Intl.message(
      'Get insights! Stay Motivated!',
      name: 'rookie_landingpage_slogan',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get rookie_landingpage_startnow {
    return Intl.message(
      'Get Started',
      name: 'rookie_landingpage_startnow',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to %`
  String get rookie_landingpage_welcome {
    return Intl.message(
      'Welcome to %',
      name: 'rookie_landingpage_welcome',
      desc: '',
      args: [],
    );
  }

  /// `% enhances healthy habits with wearable data insights: stay active, improve sleep, and relax regularly.\n\nThese Terms of Service ("Terms") apply to your access and use of the services in %. The services encompass a range of offerings, including our devices, firmware, applications, software, websites, etc.`
  String get rookie_termsandcondition_summarize {
    return Intl.message(
      '% enhances healthy habits with wearable data insights: stay active, improve sleep, and relax regularly.\n\nThese Terms of Service ("Terms") apply to your access and use of the services in %. The services encompass a range of offerings, including our devices, firmware, applications, software, websites, etc.',
      name: 'rookie_termsandcondition_summarize',
      desc: '%=app name',
      args: [],
    );
  }

  /// `Terms of Service and Privacy Policy`
  String get rookie_termsandcondition_title {
    return Intl.message(
      'Terms of Service and Privacy Policy',
      name: 'rookie_termsandcondition_title',
      desc: '',
      args: [],
    );
  }

  /// `Rope Skipping`
  String get Rope_Skipping {
    return Intl.message(
      'Rope Skipping',
      name: 'Rope_Skipping',
      desc: '',
      args: [],
    );
  }

  /// `Rowing`
  String get rowing {
    return Intl.message(
      'Rowing',
      name: 'rowing',
      desc: '',
      args: [],
    );
  }

  /// `Rowing Machine`
  String get Rowing_Machine {
    return Intl.message(
      'Rowing Machine',
      name: 'Rowing_Machine',
      desc: '',
      args: [],
    );
  }

  /// `Rugby`
  String get Rugby {
    return Intl.message(
      'Rugby',
      name: 'Rugby',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get Russian {
    return Intl.message(
      'Русский',
      name: 'Russian',
      desc: '',
      args: [],
    );
  }

  /// `Sailing`
  String get sailing {
    return Intl.message(
      'Sailing',
      name: 'sailing',
      desc: '',
      args: [],
    );
  }

  /// `Sat`
  String get Sat {
    return Intl.message(
      'Sat',
      name: 'Sat',
      desc: '',
      args: [],
    );
  }

  /// `Saturday`
  String get Saturday {
    return Intl.message(
      'Saturday',
      name: 'Saturday',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get Save {
    return Intl.message(
      'Save',
      name: 'Save',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get score {
    return Intl.message(
      'Score',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get Search {
    return Intl.message(
      'Search',
      name: 'Search',
      desc: '',
      args: [],
    );
  }

  /// `Get your Country or Region`
  String get search_city_location_Region {
    return Intl.message(
      'Get your Country or Region',
      name: 'search_city_location_Region',
      desc: '',
      args: [],
    );
  }

  /// `Search Completed`
  String get Search_finished {
    return Intl.message(
      'Search Completed',
      name: 'Search_finished',
      desc: '',
      args: [],
    );
  }

  /// `Searching for Your Watch`
  String get searching_for_your_watch {
    return Intl.message(
      'Searching for Your Watch',
      name: 'searching_for_your_watch',
      desc: '',
      args: [],
    );
  }

  /// `In English Only`
  String get Search_only_in_english {
    return Intl.message(
      'In English Only',
      name: 'Search_only_in_english',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get Select {
    return Intl.message(
      'Select',
      name: 'Select',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get select_date_of_birth {
    return Intl.message(
      'Date of Birth',
      name: 'select_date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Frequent Contacts`
  String get Select_favotire_contacts {
    return Intl.message(
      'Frequent Contacts',
      name: 'Select_favotire_contacts',
      desc: '',
      args: [],
    );
  }

  /// `Select function`
  String get Select_function {
    return Intl.message(
      'Select function',
      name: 'Select_function',
      desc: '',
      args: [],
    );
  }

  /// `Selecting future time not supported`
  String get select_future_not_support {
    return Intl.message(
      'Selecting future time not supported',
      name: 'select_future_not_support',
      desc: '',
      args: [],
    );
  }

  /// `Delete some watch faces`
  String get Select_the_deleted_face {
    return Intl.message(
      'Delete some watch faces',
      name: 'Select_the_deleted_face',
      desc: '',
      args: [],
    );
  }

  /// `We will send a confirmation email to you at %.`
  String get send_confirmation_email {
    return Intl.message(
      'We will send a confirmation email to you at %.',
      name: 'send_confirmation_email',
      desc: '',
      args: [],
    );
  }

  /// `We have send a verification code to you at %. `
  String get sent_verification_code {
    return Intl.message(
      'We have send a verification code to you at %. ',
      name: 'sent_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Sep`
  String get Sep {
    return Intl.message(
      'Sep',
      name: 'Sep',
      desc: '',
      args: [],
    );
  }

  /// `Sepaktakraw`
  String get Sepaktakraw {
    return Intl.message(
      'Sepaktakraw',
      name: 'Sepaktakraw',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get September {
    return Intl.message(
      'September',
      name: 'September',
      desc: '',
      args: [],
    );
  }

  /// `SN`
  String get serial_number {
    return Intl.message(
      'SN',
      name: 'serial_number',
      desc: '',
      args: [],
    );
  }

  /// `Set`
  String get set {
    return Intl.message(
      'Set',
      name: 'set',
      desc: '',
      args: [],
    );
  }

  /// `Set as Current`
  String get set_current_face {
    return Intl.message(
      'Set as Current',
      name: 'set_current_face',
      desc: '',
      args: [],
    );
  }

  /// `Goals`
  String get setGoals_goals {
    return Intl.message(
      'Goals',
      name: 'setGoals_goals',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get setGoals_hours {
    return Intl.message(
      'hours',
      name: 'setGoals_hours',
      desc: '',
      args: [],
    );
  }

  /// `Move Calories`
  String get setGoals_moveCalories {
    return Intl.message(
      'Move Calories',
      name: 'setGoals_moveCalories',
      desc: '',
      args: [],
    );
  }

  /// `Connected Apps`
  String get setting_connected_apps {
    return Intl.message(
      'Connected Apps',
      name: 'setting_connected_apps',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get setting_darkmode {
    return Intl.message(
      'Dark Mode',
      name: 'setting_darkmode',
      desc: '',
      args: [],
    );
  }

  /// `Setting failed, Please try again`
  String get Setting_failed_please_try_again {
    return Intl.message(
      'Setting failed, Please try again',
      name: 'Setting_failed_please_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Set Your Goals`
  String get set_watch_guide_set_goal_title {
    return Intl.message(
      'Set Your Goals',
      name: 'set_watch_guide_set_goal_title',
      desc: '',
      args: [],
    );
  }

  /// `Well Done！`
  String get set_watch_well_done {
    return Intl.message(
      'Well Done！',
      name: 'set_watch_well_done',
      desc: '',
      args: [],
    );
  }

  /// `Share System Notifications`
  String get Share_System_Notifications {
    return Intl.message(
      'Share System Notifications',
      name: 'Share_System_Notifications',
      desc: '',
      args: [],
    );
  }

  /// `Shooting`
  String get shooting {
    return Intl.message(
      'Shooting',
      name: 'shooting',
      desc: '',
      args: [],
    );
  }

  /// `Shuttlecock`
  String get Shuttlecock {
    return Intl.message(
      'Shuttlecock',
      name: 'Shuttlecock',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Please select the correct country or region`
  String get sign_up_select_region_tip {
    return Intl.message(
      'Please select the correct country or region',
      name: 'sign_up_select_region_tip',
      desc: '',
      args: [],
    );
  }

  /// `If you did not perform this action, please log back into the app and change your password immediately.`
  String get single_sign_on_caution {
    return Intl.message(
      'If you did not perform this action, please log back into the app and change your password immediately.',
      name: 'single_sign_on_caution',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been logged in on another device！`
  String get single_sign_on_tip {
    return Intl.message(
      'Your account has been logged in on another device！',
      name: 'single_sign_on_tip',
      desc: '单点登录挤下线提示',
      args: [],
    );
  }

  /// `Sit-Up`
  String get Sit_up {
    return Intl.message(
      'Sit-Up',
      name: 'Sit_up',
      desc: '',
      args: [],
    );
  }

  /// `Skateboarding`
  String get Skateboarding {
    return Intl.message(
      'Skateboarding',
      name: 'Skateboarding',
      desc: '',
      args: [],
    );
  }

  /// `Skating`
  String get Skating {
    return Intl.message(
      'Skating',
      name: 'Skating',
      desc: '',
      args: [],
    );
  }

  /// `Skiing`
  String get skiing {
    return Intl.message(
      'Skiing',
      name: 'skiing',
      desc: '',
      args: [],
    );
  }

  /// `Sledding`
  String get sledding {
    return Intl.message(
      'Sledding',
      name: 'sledding',
      desc: '',
      args: [],
    );
  }

  /// `Sleep HRV`
  String get sleep_hrv {
    return Intl.message(
      'Sleep HRV',
      name: 'sleep_hrv',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Measurements`
  String get sleep_measure {
    return Intl.message(
      'Sleep Measurements',
      name: 'sleep_measure',
      desc: '',
      args: [],
    );
  }

  /// `"You're doing well with your sleep! To further improve, consider keeping a regular sleep schedule; it might enhance your sleep quality."`
  String get sleep_NotBad_hint1 {
    return Intl.message(
      '"You\'re doing well with your sleep! To further improve, consider keeping a regular sleep schedule; it might enhance your sleep quality."',
      name: 'sleep_NotBad_hint1',
      desc: '',
      args: [],
    );
  }

  /// `"Not bad at all! Quality sleep can enhance your life. Try using meditation or a warm cup of tea to unwind before bedtime for even better sleep."`
  String get sleep_NotBad_hint2 {
    return Intl.message(
      '"Not bad at all! Quality sleep can enhance your life. Try using meditation or a warm cup of tea to unwind before bedtime for even better sleep."',
      name: 'sleep_NotBad_hint2',
      desc: '',
      args: [],
    );
  }

  /// `"Keep up the good work! Consider reducing screen time and noise to enhance the depth and continuity of your sleep."`
  String get sleep_NotBad_hint3 {
    return Intl.message(
      '"Keep up the good work! Consider reducing screen time and noise to enhance the depth and continuity of your sleep."',
      name: 'sleep_NotBad_hint3',
      desc: '',
      args: [],
    );
  }

  /// `"Congratulations! Your sleep is outstanding. To keep it up, try maintaining a consistent bedtime and wake-up time."`
  String get sleep_outstanding_hint1 {
    return Intl.message(
      '"Congratulations! Your sleep is outstanding. To keep it up, try maintaining a consistent bedtime and wake-up time."',
      name: 'sleep_outstanding_hint1',
      desc: '',
      args: [],
    );
  }

  /// `"You're doing great with your sleep! Consider establishing a tranquil sleep environment every night for even better rest."`
  String get sleep_outstanding_hint2 {
    return Intl.message(
      '"You\'re doing great with your sleep! Consider establishing a tranquil sleep environment every night for even better rest."',
      name: 'sleep_outstanding_hint2',
      desc: '',
      args: [],
    );
  }

  /// `"Outstanding sleep is key to overall health. Keep up regular exercise and a balanced diet to optimize your sleep."`
  String get sleep_outstanding_hint3 {
    return Intl.message(
      '"Outstanding sleep is key to overall health. Keep up regular exercise and a balanced diet to optimize your sleep."',
      name: 'sleep_outstanding_hint3',
      desc: '',
      args: [],
    );
  }

  /// `"We understand your sleep difficulties. Consider seeking professional medical advice to explore possible sleep disorders and appropriate treatments."`
  String get sleep_Poor_hint1 {
    return Intl.message(
      '"We understand your sleep difficulties. Consider seeking professional medical advice to explore possible sleep disorders and appropriate treatments."',
      name: 'sleep_Poor_hint1',
      desc: '',
      args: [],
    );
  }

  /// `"Inadequate sleep can have adverse effects on health. Try to avoid consuming a lot of caffeine during the day, which may help improve nighttime sleep."`
  String get sleep_Poor_hint2 {
    return Intl.message(
      '"Inadequate sleep can have adverse effects on health. Try to avoid consuming a lot of caffeine during the day, which may help improve nighttime sleep."',
      name: 'sleep_Poor_hint2',
      desc: '',
      args: [],
    );
  }

  /// `"Prioritize sleep and establish a relaxing bedtime routine. Reducing stress and anxiety through meditation or deep breathing exercises can also help."`
  String get sleep_Poor_hint3 {
    return Intl.message(
      '"Prioritize sleep and establish a relaxing bedtime routine. Reducing stress and anxiety through meditation or deep breathing exercises can also help."',
      name: 'sleep_Poor_hint3',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Score`
  String get sleep_quality_score {
    return Intl.message(
      'Sleep Score',
      name: 'sleep_quality_score',
      desc: '',
      args: [],
    );
  }

  /// `Suggest about 8 hours sleep. `
  String get sleep_schedule_suggest {
    return Intl.message(
      'Suggest about 8 hours sleep. ',
      name: 'sleep_schedule_suggest',
      desc: '',
      args: [],
    );
  }

  /// `Not Bad`
  String get sleep_score_notbad {
    return Intl.message(
      'Not Bad',
      name: 'sleep_score_notbad',
      desc: '',
      args: [],
    );
  }

  /// `Outstanding`
  String get sleep_score_outstanding {
    return Intl.message(
      'Outstanding',
      name: 'sleep_score_outstanding',
      desc: '',
      args: [],
    );
  }

  /// `Poor`
  String get sleep_score_poor {
    return Intl.message(
      'Poor',
      name: 'sleep_score_poor',
      desc: '',
      args: [],
    );
  }

  /// `So So`
  String get sleep_score_soso {
    return Intl.message(
      'So So',
      name: 'sleep_score_soso',
      desc: '',
      args: [],
    );
  }

  /// `"Your sleep is okay, but there's room for improvement. Try creating a calming bedtime routine, like reading or meditation, to enhance your sleep."`
  String get sleep_SoSo_hint1 {
    return Intl.message(
      '"Your sleep is okay, but there\'s room for improvement. Try creating a calming bedtime routine, like reading or meditation, to enhance your sleep."',
      name: 'sleep_SoSo_hint1',
      desc: '',
      args: [],
    );
  }

  /// `"A decent sleep can further improve. Make sure your bedroom is cool, quiet, and conducive to a good night's sleep."`
  String get sleep_SoSo_hint2 {
    return Intl.message(
      '"A decent sleep can further improve. Make sure your bedroom is cool, quiet, and conducive to a good night\'s sleep."',
      name: 'sleep_SoSo_hint2',
      desc: '',
      args: [],
    );
  }

  /// `"Try to maintain a consistent sleep schedule, even on weekends. This can help improve the quality of your sleep."`
  String get sleep_SoSo_hint3 {
    return Intl.message(
      '"Try to maintain a consistent sleep schedule, even on weekends. This can help improve the quality of your sleep."',
      name: 'sleep_SoSo_hint3',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Stages`
  String get SleepStages {
    return Intl.message(
      'Sleep Stages',
      name: 'SleepStages',
      desc: '',
      args: [],
    );
  }

  /// `Wind Down`
  String get sleep_wind_down {
    return Intl.message(
      'Wind Down',
      name: 'sleep_wind_down',
      desc: '',
      args: [],
    );
  }

  /// `SMS`
  String get Sms {
    return Intl.message(
      'SMS',
      name: 'Sms',
      desc: '',
      args: [],
    );
  }

  /// `Snooze`
  String get snooze {
    return Intl.message(
      'Snooze',
      name: 'snooze',
      desc: '',
      args: [],
    );
  }

  /// `Snowboarding`
  String get snowboarding {
    return Intl.message(
      'Snowboarding',
      name: 'snowboarding',
      desc: '',
      args: [],
    );
  }

  /// `Soccer`
  String get Soccer {
    return Intl.message(
      'Soccer',
      name: 'Soccer',
      desc: '',
      args: [],
    );
  }

  /// `Social Dancing`
  String get Social_Dancing {
    return Intl.message(
      'Social Dancing',
      name: 'Social_Dancing',
      desc: '',
      args: [],
    );
  }

  /// `Softball`
  String get Softball {
    return Intl.message(
      'Softball',
      name: 'Softball',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get sort {
    return Intl.message(
      'Sort',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Contact`
  String get sos_add_contact {
    return Intl.message(
      'Emergency Contact',
      name: 'sos_add_contact',
      desc: '',
      args: [],
    );
  }

  /// `Call for a help right from your watch in case of an emergency.To use this feature,you must keep your watch close to your phone.`
  String get sos_contact_des {
    return Intl.message(
      'Call for a help right from your watch in case of an emergency.To use this feature,you must keep your watch close to your phone.',
      name: 'sos_contact_des',
      desc: '',
      args: [],
    );
  }

  /// `Español`
  String get Spanish {
    return Intl.message(
      'Español',
      name: 'Spanish',
      desc: '',
      args: [],
    );
  }

  /// `Speed`
  String get Speed {
    return Intl.message(
      'Speed',
      name: 'Speed',
      desc: '',
      args: [],
    );
  }

  /// `Spinning`
  String get spinning {
    return Intl.message(
      'Spinning',
      name: 'spinning',
      desc: '',
      args: [],
    );
  }

  /// `Splits`
  String get Splits {
    return Intl.message(
      'Splits',
      name: 'Splits',
      desc: '',
      args: [],
    );
  }

  /// `Square dance`
  String get square_dance {
    return Intl.message(
      'Square dance',
      name: 'square_dance',
      desc: '',
      args: [],
    );
  }

  /// `Squash`
  String get Squash {
    return Intl.message(
      'Squash',
      name: 'Squash',
      desc: '',
      args: [],
    );
  }

  /// `Squat`
  String get Squat {
    return Intl.message(
      'Squat',
      name: 'Squat',
      desc: '',
      args: [],
    );
  }

  /// `st`
  String get st {
    return Intl.message(
      'st',
      name: 'st',
      desc: '',
      args: [],
    );
  }

  /// `Stair Stepper`
  String get Stair_Stepper {
    return Intl.message(
      'Stair Stepper',
      name: 'Stair_Stepper',
      desc: '',
      args: [],
    );
  }

  /// `Stand Reminder`
  String get Stand_reminder {
    return Intl.message(
      'Stand Reminder',
      name: 'Stand_reminder',
      desc: '',
      args: [],
    );
  }

  /// `Receive a reminder to stand up if you've been sitting for the first 50 minutes of an hour.`
  String get stand_reminder_intro {
    return Intl.message(
      'Receive a reminder to stand up if you\'ve been sitting for the first 50 minutes of an hour.',
      name: 'stand_reminder_intro',
      desc: '',
      args: [],
    );
  }

  /// `Steps`
  String get steps {
    return Intl.message(
      'Steps',
      name: 'steps',
      desc: '',
      args: [],
    );
  }

  /// `Stone`
  String get Stone {
    return Intl.message(
      'Stone',
      name: 'Stone',
      desc: '',
      args: [],
    );
  }

  /// `Stop`
  String get Stop {
    return Intl.message(
      'Stop',
      name: 'Stop',
      desc: '',
      args: [],
    );
  }

  /// `Stop searching for the phone?`
  String get Stop_looking_for_the_phone {
    return Intl.message(
      'Stop searching for the phone?',
      name: 'Stop_looking_for_the_phone',
      desc: '',
      args: [],
    );
  }

  /// `Stop Sync`
  String get stop_sync {
    return Intl.message(
      'Stop Sync',
      name: 'stop_sync',
      desc: '',
      args: [],
    );
  }

  /// `Strava`
  String get Strava {
    return Intl.message(
      'Strava',
      name: 'Strava',
      desc: '',
      args: [],
    );
  }

  /// `You have authorized the Strava account.`
  String get strava_authorized_title {
    return Intl.message(
      'You have authorized the Strava account.',
      name: 'strava_authorized_title',
      desc: '',
      args: [],
    );
  }

  /// `Revoke Authorization`
  String get strava_cancel_authorize {
    return Intl.message(
      'Revoke Authorization',
      name: 'strava_cancel_authorize',
      desc: '',
      args: [],
    );
  }

  /// `After revoking authorization, your data will no longer be shared with Strava.`
  String get strava_cancel_authorize_des {
    return Intl.message(
      'After revoking authorization, your data will no longer be shared with Strava.',
      name: 'strava_cancel_authorize_des',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to revoke Strava authorization?`
  String get strava_cancel_authorize_ques {
    return Intl.message(
      'Do you want to revoke Strava authorization?',
      name: 'strava_cancel_authorize_ques',
      desc: '',
      args: [],
    );
  }

  /// `Strava Privacy Policy`
  String get strava_privacy_policy {
    return Intl.message(
      'Strava Privacy Policy',
      name: 'strava_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Start Authorization`
  String get strava_start_authorize {
    return Intl.message(
      'Start Authorization',
      name: 'strava_start_authorize',
      desc: '',
      args: [],
    );
  }

  /// `Authorization indicates your consent to share data with Strava through %. The data may include activities, location, calorie consumption, and other health data. All data sharing will follow %%.\nYou can revoke authorization at any time in %.`
  String get strava_start_authorize_des {
    return Intl.message(
      'Authorization indicates your consent to share data with Strava through %. The data may include activities, location, calorie consumption, and other health data. All data sharing will follow %%.\nYou can revoke authorization at any time in %.',
      name: 'strava_start_authorize_des',
      desc: '',
      args: [],
    );
  }

  /// `Share Data with Strava`
  String get strava_start_authorize_title {
    return Intl.message(
      'Share Data with Strava',
      name: 'strava_start_authorize_title',
      desc: '',
      args: [],
    );
  }

  /// `Stress Measurements`
  String get stress_measure {
    return Intl.message(
      'Stress Measurements',
      name: 'stress_measure',
      desc: '',
      args: [],
    );
  }

  /// `To receive alerts of high stress, you need to enable "Stress Tracking".`
  String get Stress_To_receive_a_reminder_of_high_pressure {
    return Intl.message(
      'To receive alerts of high stress, you need to enable "Stress Tracking".',
      name: 'Stress_To_receive_a_reminder_of_high_pressure',
      desc: '',
      args: [],
    );
  }

  /// `Stress Tracking`
  String get Stress_tracking {
    return Intl.message(
      'Stress Tracking',
      name: 'Stress_tracking',
      desc: '',
      args: [],
    );
  }

  /// `Style`
  String get Style {
    return Intl.message(
      'Style',
      name: 'Style',
      desc: '',
      args: [],
    );
  }

  /// `Suggest walking 1000 steps a day.`
  String get suggest_walking_steps_a_day {
    return Intl.message(
      'Suggest walking 1000 steps a day.',
      name: 'suggest_walking_steps_a_day',
      desc: '',
      args: [],
    );
  }

  /// `Sun`
  String get Sun {
    return Intl.message(
      'Sun',
      name: 'Sun',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get Sunday {
    return Intl.message(
      'Sunday',
      name: 'Sunday',
      desc: '',
      args: [],
    );
  }

  /// `Surfing`
  String get surfing {
    return Intl.message(
      'Surfing',
      name: 'surfing',
      desc: '',
      args: [],
    );
  }

  /// `Sync`
  String get Sync {
    return Intl.message(
      'Sync',
      name: 'Sync',
      desc: '',
      args: [],
    );
  }

  /// `Sync data failed.Please try again.`
  String get sync_data_failed {
    return Intl.message(
      'Sync data failed.Please try again.',
      name: 'sync_data_failed',
      desc: '',
      args: [],
    );
  }

  /// `Data Sync Successful`
  String get sync_data_successfully {
    return Intl.message(
      'Data Sync Successful',
      name: 'sync_data_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Sync steps, sleep, heart rate, and other data with %`
  String get sync_health {
    return Intl.message(
      'Sync steps, sleep, heart rate, and other data with %',
      name: 'sync_health',
      desc: '%=Apple Health或Google Fit',
      args: [],
    );
  }

  /// `To make call and display contacts when receiving calls from your watch. You can sync the phone's contacts to your watch.`
  String get Synchronizing_address_book {
    return Intl.message(
      'To make call and display contacts when receiving calls from your watch. You can sync the phone\'s contacts to your watch.',
      name: 'Synchronizing_address_book',
      desc: '',
      args: [],
    );
  }

  /// `Sync Phone Notifications`
  String get sync_phone_notifications {
    return Intl.message(
      'Sync Phone Notifications',
      name: 'sync_phone_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Sync to Watch`
  String get Sync_weather_information {
    return Intl.message(
      'Sync to Watch',
      name: 'Sync_weather_information',
      desc: '',
      args: [],
    );
  }

  /// `%Team`
  String get sys_notification_fitbeing_team {
    return Intl.message(
      '%Team',
      name: 'sys_notification_fitbeing_team',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get sys_notification_You {
    return Intl.message(
      'You',
      name: 'sys_notification_You',
      desc: '',
      args: [],
    );
  }

  /// `Allow % access to your album`
  String get system_album_permission_title {
    return Intl.message(
      'Allow % access to your album',
      name: 'system_album_permission_title',
      desc: '',
      args: [],
    );
  }

  /// `Firmware Upgrade`
  String get System_upgrade {
    return Intl.message(
      'Firmware Upgrade',
      name: 'System_upgrade',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get tabbar_profile {
    return Intl.message(
      'Profile',
      name: 'tabbar_profile',
      desc: '',
      args: [],
    );
  }

  /// `Table Tennis`
  String get Table_Tennis {
    return Intl.message(
      'Table Tennis',
      name: 'Table_Tennis',
      desc: '',
      args: [],
    );
  }

  /// `Taekwondo`
  String get taekwondo {
    return Intl.message(
      'Taekwondo',
      name: 'taekwondo',
      desc: '',
      args: [],
    );
  }

  /// `Tai Chi`
  String get tai_chi {
    return Intl.message(
      'Tai Chi',
      name: 'tai_chi',
      desc: '',
      args: [],
    );
  }

  /// `Take a nap for 10 minutes.`
  String get takeAnap {
    return Intl.message(
      'Take a nap for 10 minutes.',
      name: 'takeAnap',
      desc: '',
      args: [],
    );
  }

  /// `Take deep breaths or meditate for 5 minutes.`
  String get takeDeep {
    return Intl.message(
      'Take deep breaths or meditate for 5 minutes.',
      name: 'takeDeep',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get Temperature {
    return Intl.message(
      'Temperature',
      name: 'Temperature',
      desc: '',
      args: [],
    );
  }

  /// `Tennis`
  String get Tennis {
    return Intl.message(
      'Tennis',
      name: 'Tennis',
      desc: '',
      args: [],
    );
  }

  /// `Sync weather for the next 6 hours to your watch. To keep the weather data on your watch up to date, please make sure your watch and app connect at least once every 6 hours.`
  String get The_app_will_sync {
    return Intl.message(
      'Sync weather for the next 6 hours to your watch. To keep the weather data on your watch up to date, please make sure your watch and app connect at least once every 6 hours.',
      name: 'The_app_will_sync',
      desc: '',
      args: [],
    );
  }

  /// `Connection failed. Please try again.`
  String get The_connection_failed {
    return Intl.message(
      'Connection failed. Please try again.',
      name: 'The_connection_failed',
      desc: '',
      args: [],
    );
  }

  /// `The watch face is being installed, abort the installation may cause the watch to appear abnormal, please wait patiently.`
  String get The_dial_is_being_installed {
    return Intl.message(
      'The watch face is being installed, abort the installation may cause the watch to appear abnormal, please wait patiently.',
      name: 'The_dial_is_being_installed',
      desc: '',
      args: [],
    );
  }

  /// `The space required for the new watch face : % kb`
  String get The_space_required {
    return Intl.message(
      'The space required for the new watch face : % kb',
      name: 'The_space_required',
      desc: '',
      args: [],
    );
  }

  /// `This email address has already been registered. Please log in using this email or register with a new one.`
  String get thisEmailAddressHasAlreadyRegistered {
    return Intl.message(
      'This email address has already been registered. Please log in using this email or register with a new one.',
      name: 'thisEmailAddressHasAlreadyRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Please choose % photos. The watch will display one randomly each time.`
  String get this_face_displays_a_new_photo {
    return Intl.message(
      'Please choose % photos. The watch will display one randomly each time.',
      name: 'this_face_displays_a_new_photo',
      desc: '',
      args: [],
    );
  }

  /// `Your watch needs a watch face to show the time, and right now, this is the only one available.`
  String get This_is_the_only_dial {
    return Intl.message(
      'Your watch needs a watch face to show the time, and right now, this is the only one available.',
      name: 'This_is_the_only_dial',
      desc: '',
      args: [],
    );
  }

  /// `This Week`
  String get this_week {
    return Intl.message(
      'This Week',
      name: 'this_week',
      desc: '',
      args: [],
    );
  }

  /// `Thur`
  String get Thur {
    return Intl.message(
      'Thur',
      name: 'Thur',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get Thursday {
    return Intl.message(
      'Thursday',
      name: 'Thursday',
      desc: '',
      args: [],
    );
  }

  /// `Start and end times cannot overlap`
  String get time_period_repeat_caution {
    return Intl.message(
      'Start and end times cannot overlap',
      name: 'time_period_repeat_caution',
      desc: '',
      args: [],
    );
  }

  /// `Timers`
  String get timer {
    return Intl.message(
      'Timers',
      name: 'timer',
      desc: '',
      args: [],
    );
  }

  /// `Tips`
  String get tips {
    return Intl.message(
      'Tips',
      name: 'tips',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get Title_age {
    return Intl.message(
      'Age',
      name: 'Title_age',
      desc: '',
      args: [],
    );
  }

  /// `Alarms`
  String get title_Alarm_clock {
    return Intl.message(
      'Alarms',
      name: 'title_Alarm_clock',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get title_city_weather {
    return Intl.message(
      'City',
      name: 'title_city_weather',
      desc: '',
      args: [],
    );
  }

  /// `Display & Brightness`
  String get title_Display_brightness {
    return Intl.message(
      'Display & Brightness',
      name: 'title_Display_brightness',
      desc: '',
      args: [],
    );
  }

  /// `Health Data Measurements`
  String get title_Health_Tracking {
    return Intl.message(
      'Health Data Measurements',
      name: 'title_Health_Tracking',
      desc: '',
      args: [],
    );
  }

  /// `Setting...`
  String get title_Loading_setting_up {
    return Intl.message(
      'Setting...',
      name: 'title_Loading_setting_up',
      desc: '',
      args: [],
    );
  }

  /// `Preference`
  String get title_Preference {
    return Intl.message(
      'Preference',
      name: 'title_Preference',
      desc: '',
      args: [],
    );
  }

  /// `Workouts`
  String get title_Workout {
    return Intl.message(
      'Workouts',
      name: 'title_Workout',
      desc: '',
      args: [],
    );
  }

  /// `World Clock`
  String get title_World_clock {
    return Intl.message(
      'World Clock',
      name: 'title_World_clock',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password to proceed with deleting your account.`
  String get To_cancel_your_account {
    return Intl.message(
      'Please enter your password to proceed with deleting your account.',
      name: 'To_cancel_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get Today {
    return Intl.message(
      'Today',
      name: 'Today',
      desc: '',
      args: [],
    );
  }

  /// `Tools`
  String get Tools {
    return Intl.message(
      'Tools',
      name: 'Tools',
      desc: '',
      args: [],
    );
  }

  /// `Top Center`
  String get Top_center {
    return Intl.message(
      'Top Center',
      name: 'Top_center',
      desc: '',
      args: [],
    );
  }

  /// `Top Left`
  String get Top_left {
    return Intl.message(
      'Top Left',
      name: 'Top_left',
      desc: '',
      args: [],
    );
  }

  /// `Top Right`
  String get Top_right {
    return Intl.message(
      'Top Right',
      name: 'Top_right',
      desc: '',
      args: [],
    );
  }

  /// `Total Calories`
  String get total_calories {
    return Intl.message(
      'Total Calories',
      name: 'total_calories',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to synchronize your local data with this account % ?`
  String get tourist_data_sync {
    return Intl.message(
      'Would you like to synchronize your local data with this account % ?',
      name: 'tourist_data_sync',
      desc: '%=EmailAdress\n游客状态登录，询问是否合并数据',
      args: [],
    );
  }

  /// `Activity`
  String get tracking_activity {
    return Intl.message(
      'Activity',
      name: 'tracking_activity',
      desc: '',
      args: [],
    );
  }

  /// `Blood Oxygen`
  String get tracking_bloodOxygen {
    return Intl.message(
      'Blood Oxygen',
      name: 'tracking_bloodOxygen',
      desc: '',
      args: [],
    );
  }

  /// `Distance`
  String get tracking_distance {
    return Intl.message(
      'Distance',
      name: 'tracking_distance',
      desc: '',
      args: [],
    );
  }

  /// `Exercise Time`
  String get tracking_exercise {
    return Intl.message(
      'Exercise Time',
      name: 'tracking_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get tracking_health {
    return Intl.message(
      'Health',
      name: 'tracking_health',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate`
  String get tracking_heartRate {
    return Intl.message(
      'Heart Rate',
      name: 'tracking_heartRate',
      desc: '',
      args: [],
    );
  }

  /// `Sleep`
  String get tracking_sleep {
    return Intl.message(
      'Sleep',
      name: 'tracking_sleep',
      desc: '',
      args: [],
    );
  }

  /// `Stand Hour`
  String get tracking_stand {
    return Intl.message(
      'Stand Hour',
      name: 'tracking_stand',
      desc: '',
      args: [],
    );
  }

  /// `Steps`
  String get tracking_steps {
    return Intl.message(
      'Steps',
      name: 'tracking_steps',
      desc: '',
      args: [],
    );
  }

  /// `Stress`
  String get tracking_stress {
    return Intl.message(
      'Stress',
      name: 'tracking_stress',
      desc: '',
      args: [],
    );
  }

  /// `Trail Running`
  String get Trail_Running {
    return Intl.message(
      'Trail Running',
      name: 'Trail_Running',
      desc: '',
      args: [],
    );
  }

  /// `Treadmill`
  String get treadmill {
    return Intl.message(
      'Treadmill',
      name: 'treadmill',
      desc: '',
      args: [],
    );
  }

  /// `Practice yoga or stretching for 15 minutes.`
  String get tryYoga {
    return Intl.message(
      'Practice yoga or stretching for 15 minutes.',
      name: 'tryYoga',
      desc: '',
      args: [],
    );
  }

  /// `Tue`
  String get Tues {
    return Intl.message(
      'Tue',
      name: 'Tues',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get Tuesday {
    return Intl.message(
      'Tuesday',
      name: 'Tuesday',
      desc: '',
      args: [],
    );
  }

  /// `24 Hour Time`
  String get twofour_hour_time {
    return Intl.message(
      '24 Hour Time',
      name: 'twofour_hour_time',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized`
  String get Unauthorized {
    return Intl.message(
      'Unauthorized',
      name: 'Unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Unpair`
  String get Unbind {
    return Intl.message(
      'Unpair',
      name: 'Unbind',
      desc: '',
      args: [],
    );
  }

  /// `Your watch has lost connection. Please ensure the following conditions and try again.  \n1. Your watch is close to your phone.\n2. Your watch has more than 30% battery.\n3. Bluetooth on your phone is turned on.`
  String get unconnected_tips {
    return Intl.message(
      'Your watch has lost connection. Please ensure the following conditions and try again.  \n1. Your watch is close to your phone.\n2. Your watch has more than 30% battery.\n3. Bluetooth on your phone is turned on.',
      name: 'unconnected_tips',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get United_Kingdom {
    return Intl.message(
      'United Kingdom',
      name: 'United_Kingdom',
      desc: '',
      args: [],
    );
  }

  /// `First Day of the Week`
  String get Unit_first_day_of_the_week_des {
    return Intl.message(
      'First Day of the Week',
      name: 'Unit_first_day_of_the_week_des',
      desc: '',
      args: [],
    );
  }

  /// `Unit Setting`
  String get unit_settings {
    return Intl.message(
      'Unit Setting',
      name: 'unit_settings',
      desc: '',
      args: [],
    );
  }

  /// `What's New`
  String get update_version_introductions {
    return Intl.message(
      'What\'s New',
      name: 'update_version_introductions',
      desc: '',
      args: [],
    );
  }

  /// `Restart your watch...`
  String get update_wait_reboot_watch {
    return Intl.message(
      'Restart your watch...',
      name: 'update_wait_reboot_watch',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade`
  String get Upgrade {
    return Intl.message(
      'Upgrade',
      name: 'Upgrade',
      desc: '',
      args: [],
    );
  }

  /// `Please ensure that the watch's battery level is above 30% before upgrade.`
  String get upgrade_current_power {
    return Intl.message(
      'Please ensure that the watch\'s battery level is above 30% before upgrade.',
      name: 'upgrade_current_power',
      desc: '',
      args: [],
    );
  }

  /// `Stay on this page during upgrade. Exiting may cause firmware failure, impacting watch functionality.`
  String get upgrade_exit_caution {
    return Intl.message(
      'Stay on this page during upgrade. Exiting may cause firmware failure, impacting watch functionality.',
      name: 'upgrade_exit_caution',
      desc: '',
      args: [],
    );
  }

  /// `During the upgrade process, please keep the watch close to the phone.`
  String get upgrade_keep_close_tip {
    return Intl.message(
      'During the upgrade process, please keep the watch close to the phone.',
      name: 'upgrade_keep_close_tip',
      desc: '',
      args: [],
    );
  }

  /// `Your watch firmware is up to date.`
  String get upgrade_no_avaliable_version_tip {
    return Intl.message(
      'Your watch firmware is up to date.',
      name: 'upgrade_no_avaliable_version_tip',
      desc: '',
      args: [],
    );
  }

  /// `1. The watch battery should be above 30%.\n2. Keep the watch close to the phone.\n3. Keep on this page and do not close the app.\n4. Do not disconnect the Bluetooth.`
  String get upgrade_precautions {
    return Intl.message(
      '1. The watch battery should be above 30%.\n2. Keep the watch close to the phone.\n3. Keep on this page and do not close the app.\n4. Do not disconnect the Bluetooth.',
      name: 'upgrade_precautions',
      desc: '',
      args: [],
    );
  }

  /// `Precautions`
  String get upgrade_precautions_title {
    return Intl.message(
      'Precautions',
      name: 'upgrade_precautions_title',
      desc: '',
      args: [],
    );
  }

  /// `Up to % Cities`
  String get Up_to_10_Cities {
    return Intl.message(
      'Up to % Cities',
      name: 'Up_to_10_Cities',
      desc: '',
      args: [],
    );
  }

  /// `Up to 20 Alarms`
  String get Up_to_20_can_be_added {
    return Intl.message(
      'Up to 20 Alarms',
      name: 'Up_to_20_can_be_added',
      desc: '',
      args: [],
    );
  }

  /// `This allows % to connect and set up and sync data with your watch.`
  String get use_bluetooth_intro {
    return Intl.message(
      'This allows % to connect and set up and sync data with your watch.',
      name: 'use_bluetooth_intro',
      desc: '蓝牙开关已开启但缺失权限',
      args: [],
    );
  }

  /// `Please turn on Bluetooth, otherwise, the watch can not connect to the watch or sync data.`
  String get use_bluetooth_intro_guide {
    return Intl.message(
      'Please turn on Bluetooth, otherwise, the watch can not connect to the watch or sync data.',
      name: 'use_bluetooth_intro_guide',
      desc: '蓝牙开关未开启',
      args: [],
    );
  }

  /// `User Agreement`
  String get User_agreement {
    return Intl.message(
      'User Agreement',
      name: 'User_agreement',
      desc: '',
      args: [],
    );
  }

  /// `Read and agree to the User Agreement and Privacy Policy`
  String get user_agreement_and_privacy_policy {
    return Intl.message(
      'Read and agree to the User Agreement and Privacy Policy',
      name: 'user_agreement_and_privacy_policy',
      desc: 'first %=Terms of service\nsecond %=Privacy Policy',
      args: [],
    );
  }

  /// `User Guide`
  String get user_guide {
    return Intl.message(
      'User Guide',
      name: 'user_guide',
      desc: '',
      args: [],
    );
  }

  /// `Discover the power of %App to effortlessly manage your device, explore health data, track exercise, and personalize with watch faces. Rest easy knowing that we prioritize the protection of your private information.`
  String get verify_code_app_intro {
    return Intl.message(
      'Discover the power of %App to effortlessly manage your device, explore health data, track exercise, and personalize with watch faces. Rest easy knowing that we prioritize the protection of your private information.',
      name: 'verify_code_app_intro',
      desc: '%=app name',
      args: [],
    );
  }

  /// `We are excited for you to join us! \n\nIf you did not request this verification code, you can ignore and delete this email. \n\nHave a great day!`
  String get verify_code_content {
    return Intl.message(
      'We are excited for you to join us! \n\nIf you did not request this verification code, you can ignore and delete this email. \n\nHave a great day!',
      name: 'verify_code_content',
      desc: '',
      args: [],
    );
  }

  /// `Here's your verification code %`
  String get verify_code_detail {
    return Intl.message(
      'Here\'s your verification code %',
      name: 'verify_code_detail',
      desc: '%=code',
      args: [],
    );
  }

  /// `Verify your email,expires in 24 hours`
  String get verify_code_expire_time {
    return Intl.message(
      'Verify your email,expires in 24 hours',
      name: 'verify_code_expire_time',
      desc: '',
      args: [],
    );
  }

  /// `Kriki`
  String get Voice_assistant_kriki {
    return Intl.message(
      'Kriki',
      name: 'Voice_assistant_kriki',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get Voice_assistant_kriki_language {
    return Intl.message(
      'Change Language',
      name: 'Voice_assistant_kriki_language',
      desc: '',
      args: [],
    );
  }

  /// `Kriki User Manual`
  String get Voice_assistant_kriki_manual {
    return Intl.message(
      'Kriki User Manual',
      name: 'Voice_assistant_kriki_manual',
      desc: '',
      args: [],
    );
  }

  /// `The voice assistant needs this permission to receive, sync, and process your voice.`
  String get voice_permission_des {
    return Intl.message(
      'The voice assistant needs this permission to receive, sync, and process your voice.',
      name: 'voice_permission_des',
      desc: '',
      args: [],
    );
  }

  /// `Volleyball`
  String get volleyball {
    return Intl.message(
      'Volleyball',
      name: 'volleyball',
      desc: '',
      args: [],
    );
  }

  /// `Force to Unpair`
  String get wahtch_force_to_unpair {
    return Intl.message(
      'Force to Unpair',
      name: 'wahtch_force_to_unpair',
      desc: '',
      args: [],
    );
  }

  /// `Wake Up`
  String get Wake_up {
    return Intl.message(
      'Wake Up',
      name: 'Wake_up',
      desc: '',
      args: [],
    );
  }

  /// `Wake-up Alarm`
  String get wake_up_alarm {
    return Intl.message(
      'Wake-up Alarm',
      name: 'wake_up_alarm',
      desc: '',
      args: [],
    );
  }

  /// `Walk for 5 minutes.`
  String get walkFor30min {
    return Intl.message(
      'Walk for 5 minutes.',
      name: 'walkFor30min',
      desc: '',
      args: [],
    );
  }

  /// `Watch`
  String get Watch {
    return Intl.message(
      'Watch',
      name: 'Watch',
      desc: '',
      args: [],
    );
  }

  /// `App View`
  String get watch_detail_app_view {
    return Intl.message(
      'App View',
      name: 'watch_detail_app_view',
      desc: '',
      args: [],
    );
  }

  /// `Find My Watch`
  String get watch_detail_findwatch_title {
    return Intl.message(
      'Find My Watch',
      name: 'watch_detail_findwatch_title',
      desc: '',
      args: [],
    );
  }

  /// `Synchronize Mobile Notifications and Music Transfer`
  String get watch_detail_notification_android_switch_title {
    return Intl.message(
      'Synchronize Mobile Notifications and Music Transfer',
      name: 'watch_detail_notification_android_switch_title',
      desc: '',
      args: [],
    );
  }

  /// `Notification and Music Transfer`
  String get watch_detail_notification_android_title {
    return Intl.message(
      'Notification and Music Transfer',
      name: 'watch_detail_notification_android_title',
      desc: '',
      args: [],
    );
  }

  /// `Other Apps`
  String get watch_detail_notification_other_app {
    return Intl.message(
      'Other Apps',
      name: 'watch_detail_notification_other_app',
      desc: '',
      args: [],
    );
  }

  /// `Quick Access`
  String get watch_detail_quickaccess_title {
    return Intl.message(
      'Quick Access',
      name: 'watch_detail_quickaccess_title',
      desc: '',
      args: [],
    );
  }

  /// `Reminders`
  String get watch_detail_reminders {
    return Intl.message(
      'Reminders',
      name: 'watch_detail_reminders',
      desc: '',
      args: [],
    );
  }

  /// `SOS`
  String get watch_detail_sos_title {
    return Intl.message(
      'SOS',
      name: 'watch_detail_sos_title',
      desc: '',
      args: [],
    );
  }

  /// `Auto Recognition of Workouts`
  String get watch_detail_workout_auto_recognize {
    return Intl.message(
      'Auto Recognition of Workouts',
      name: 'watch_detail_workout_auto_recognize',
      desc: '',
      args: [],
    );
  }

  /// `Automatically recognizes your exercise status and sends reminders, allowing you to quickly perform related operations, such as recording exercise details, through reminders. Only some exercises support automatic recognition, such as outdoor running, cycling, etc.`
  String get watch_detail_workout_auto_recognize_des {
    return Intl.message(
      'Automatically recognizes your exercise status and sends reminders, allowing you to quickly perform related operations, such as recording exercise details, through reminders. Only some exercises support automatic recognition, such as outdoor running, cycling, etc.',
      name: 'watch_detail_workout_auto_recognize_des',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get watch_face_add {
    return Intl.message(
      'Add',
      name: 'watch_face_add',
      desc: '安装/添加表盘',
      args: [],
    );
  }

  /// `Custom Function`
  String get watch_face_edit_custom_function {
    return Intl.message(
      'Custom Function',
      name: 'watch_face_edit_custom_function',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get watch_face_edit_music {
    return Intl.message(
      'Music',
      name: 'watch_face_edit_music',
      desc: '',
      args: [],
    );
  }

  /// `Stepping`
  String get watch_face_edit_step {
    return Intl.message(
      'Stepping',
      name: 'watch_face_edit_step',
      desc: '',
      args: [],
    );
  }

  /// `Your watch face has been upgraded to a new version, please update now to enjoy the latest features and optimized experience!`
  String get watch_face_force_update_des {
    return Intl.message(
      'Your watch face has been upgraded to a new version, please update now to enjoy the latest features and optimized experience!',
      name: 'watch_face_force_update_des',
      desc: '',
      args: [],
    );
  }

  /// `Face Gallery`
  String get Watch_face_market {
    return Intl.message(
      'Face Gallery',
      name: 'Watch_face_market',
      desc: '',
      args: [],
    );
  }

  /// `Installed/Maximum Watch Faces:`
  String get watch_face_number_limitation {
    return Intl.message(
      'Installed/Maximum Watch Faces:',
      name: 'watch_face_number_limitation',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get watch_face_remove {
    return Intl.message(
      'Remove',
      name: 'watch_face_remove',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get watch_face_update {
    return Intl.message(
      'Update',
      name: 'watch_face_update',
      desc: '更新表盘',
      args: [],
    );
  }

  /// `My Faces`
  String get watch_home_My_watch_faces {
    return Intl.message(
      'My Faces',
      name: 'watch_home_My_watch_faces',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get watch_language {
    return Intl.message(
      'Language',
      name: 'watch_language',
      desc: '',
      args: [],
    );
  }

  /// `Watch name cannot be empty`
  String get watch_name_cannot_be_empty {
    return Intl.message(
      'Watch name cannot be empty',
      name: 'watch_name_cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Watch name up to 30 characters`
  String get watch_Name_to_long {
    return Intl.message(
      'Watch name up to 30 characters',
      name: 'watch_Name_to_long',
      desc: '',
      args: [],
    );
  }

  /// `To ensure that your watch can enter pairing mode in the future, we highly recommend resetting your watch by following these steps: Go to "Settings," then "General," and select "Factory Reset." \nAdditionally, please remember to choose "Forget This Device" in the Bluetooth settings page on your phone.`
  String get watch_to_ensure_watch_reset_on_watch {
    return Intl.message(
      'To ensure that your watch can enter pairing mode in the future, we highly recommend resetting your watch by following these steps: Go to "Settings," then "General," and select "Factory Reset." \nAdditionally, please remember to choose "Forget This Device" in the Bluetooth settings page on your phone.',
      name: 'watch_to_ensure_watch_reset_on_watch',
      desc: '',
      args: [],
    );
  }

  /// `Firmware installed failed. Please try again.`
  String get watch_upate_failed_to_send_again {
    return Intl.message(
      'Firmware installed failed. Please try again.',
      name: 'watch_upate_failed_to_send_again',
      desc: '',
      args: [],
    );
  }

  /// `Firmware download failed. Please try again.`
  String get watch_update_download_failed {
    return Intl.message(
      'Firmware download failed. Please try again.',
      name: 'watch_update_download_failed',
      desc: '',
      args: [],
    );
  }

  /// `Downloading... (% %)`
  String get watch_update_Downloading_new_version {
    return Intl.message(
      'Downloading... (% %)',
      name: 'watch_update_Downloading_new_version',
      desc: '',
      args: [],
    );
  }

  /// `New Firmware`
  String get watch_update_new_firmware {
    return Intl.message(
      'New Firmware',
      name: 'watch_update_new_firmware',
      desc: '',
      args: [],
    );
  }

  /// `Installing...% %`
  String get watch_update_sending_to_watch {
    return Intl.message(
      'Installing...% %',
      name: 'watch_update_sending_to_watch',
      desc: '',
      args: [],
    );
  }

  /// `White water rafting`
  String get water_raft {
    return Intl.message(
      'White water rafting',
      name: 'water_raft',
      desc: '',
      args: [],
    );
  }

  /// `W`
  String get watt {
    return Intl.message(
      'W',
      name: 'watt',
      desc: '',
      args: [],
    );
  }

  /// `Keep the watch close to your phone during the process.`
  String get weak_connection_caution {
    return Intl.message(
      'Keep the watch close to your phone during the process.',
      name: 'weak_connection_caution',
      desc: '',
      args: [],
    );
  }

  /// `Weather`
  String get Weather {
    return Intl.message(
      'Weather',
      name: 'Weather',
      desc: '',
      args: [],
    );
  }

  /// `Weather data synchronized successfully`
  String get weather_data_synchronized_successfully {
    return Intl.message(
      'Weather data synchronized successfully',
      name: 'weather_data_synchronized_successfully',
      desc: '',
      args: [],
    );
  }

  /// `When your watch is connected to %, the latest weather data of your location will be updated.`
  String get weather_state_des {
    return Intl.message(
      'When your watch is connected to %, the latest weather data of your location will be updated.',
      name: 'weather_state_des',
      desc: '%=app name',
      args: [],
    );
  }

  /// `Wechat`
  String get Wechat {
    return Intl.message(
      'Wechat',
      name: 'Wechat',
      desc: '',
      args: [],
    );
  }

  /// `Wed`
  String get Wed {
    return Intl.message(
      'Wed',
      name: 'Wed',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get Wednesday {
    return Intl.message(
      'Wednesday',
      name: 'Wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Week %`
  String get week {
    return Intl.message(
      'Week %',
      name: 'week',
      desc: 'week of year',
      args: [],
    );
  }

  /// `Week`
  String get weekly_tiltle {
    return Intl.message(
      'Week',
      name: 'weekly_tiltle',
      desc: '',
      args: [],
    );
  }

  /// `We've sent a Verification code to your email at % .\nPlease enter it.`
  String get We_have_sent_a_recovery_code_to_your {
    return Intl.message(
      'We\'ve sent a Verification code to your email at % .\nPlease enter it.',
      name: 'We_have_sent_a_recovery_code_to_your',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get Weight {
    return Intl.message(
      'Weight',
      name: 'Weight',
      desc: '',
      args: [],
    );
  }

  /// `Welcome %`
  String get welcome_user {
    return Intl.message(
      'Welcome %',
      name: 'welcome_user',
      desc: '',
      args: [],
    );
  }

  /// `Your watch will always display the time when turned on. However, it will shorten the standby time of your watch.`
  String get When_the_watch_displays_the_time {
    return Intl.message(
      'Your watch will always display the time when turned on. However, it will shorten the standby time of your watch.',
      name: 'When_the_watch_displays_the_time',
      desc: '',
      args: [],
    );
  }

  /// `The watch automatically pauses tracking when you stop your workout and resumes when you start again, supporting running, walking, and outdoor cycling activities.`
  String get When_you_stop_during_the_exercise {
    return Intl.message(
      'The watch automatically pauses tracking when you stop your workout and resumes when you start again, supporting running, walking, and outdoor cycling activities.',
      name: 'When_you_stop_during_the_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Some functionality may not work when wireless data is turned off.`
  String get wireless_permison_instructions {
    return Intl.message(
      'Some functionality may not work when wireless data is turned off.',
      name: 'wireless_permison_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Revoke Consent`
  String get Withdraw_consent {
    return Intl.message(
      'Revoke Consent',
      name: 'Withdraw_consent',
      desc: '',
      args: [],
    );
  }

  /// `If you revoke your consent to the "Privacy Policy" and "User Agreement," you will not be able to use this app, and all your data within this app will be cleared. `
  String get Withdraw_consent_content {
    return Intl.message(
      'If you revoke your consent to the "Privacy Policy" and "User Agreement," you will not be able to use this app, and all your data within this app will be cleared. ',
      name: 'Withdraw_consent_content',
      desc: '',
      args: [],
    );
  }

  /// `Cadence`
  String get workouts_cadence {
    return Intl.message(
      'Cadence',
      name: 'workouts_cadence',
      desc: '',
      args: [],
    );
  }

  /// `Elevation Gain`
  String get workouts_detail_elevation_gain {
    return Intl.message(
      'Elevation Gain',
      name: 'workouts_detail_elevation_gain',
      desc: '',
      args: [],
    );
  }

  /// `Elevation Max`
  String get workouts_detail_elevation_max {
    return Intl.message(
      'Elevation Max',
      name: 'workouts_detail_elevation_max',
      desc: '',
      args: [],
    );
  }

  /// `Heart Rate Variability, also known as HRV, represents the variance in time between every heartbeat. So while your Heart Rate measures how many times your heart beats per minute, HRV is the variance in time between those beats.`
  String get workouts_detail_info_hrv_content1 {
    return Intl.message(
      'Heart Rate Variability, also known as HRV, represents the variance in time between every heartbeat. So while your Heart Rate measures how many times your heart beats per minute, HRV is the variance in time between those beats.',
      name: 'workouts_detail_info_hrv_content1',
      desc: '',
      args: [],
    );
  }

  /// `Your heart rate variability is an important expression of how well you are able to deal with and recover from stress, whether that is a physical stressor (like exercise or illness) or an emotional and mental stressor (like anxiety). Increasing your heart rate variability means sleeping better, reducing pain, and improving your overall health and fitness.`
  String get workouts_detail_info_hrv_content2 {
    return Intl.message(
      'Your heart rate variability is an important expression of how well you are able to deal with and recover from stress, whether that is a physical stressor (like exercise or illness) or an emotional and mental stressor (like anxiety). Increasing your heart rate variability means sleeping better, reducing pain, and improving your overall health and fitness.',
      name: 'workouts_detail_info_hrv_content2',
      desc: '',
      args: [],
    );
  }

  /// `Your individual heart rate variability is represented by your HRV Score. HRV is typically measured in milliseconds with a higher HRV score indicating better health.`
  String get workouts_detail_info_hrv_content3_1 {
    return Intl.message(
      'Your individual heart rate variability is represented by your HRV Score. HRV is typically measured in milliseconds with a higher HRV score indicating better health.',
      name: 'workouts_detail_info_hrv_content3_1',
      desc: '',
      args: [],
    );
  }

  /// `To understand why a high HRV score is an indication of good health, you have to know that heart rate variability is controlled by the autonomic nervous system (or ANS). The autonomic nervous system regulates involuntary body functions (like digestion, blood pressure, breathing, and heart rate) and is made up of two branches- the sympathetic nervous system ("fight or flight mode") and parasympathetic nervous system ("rest, digest, and recovery mode").`
  String get workouts_detail_info_hrv_content3_2 {
    return Intl.message(
      'To understand why a high HRV score is an indication of good health, you have to know that heart rate variability is controlled by the autonomic nervous system (or ANS). The autonomic nervous system regulates involuntary body functions (like digestion, blood pressure, breathing, and heart rate) and is made up of two branches- the sympathetic nervous system ("fight or flight mode") and parasympathetic nervous system ("rest, digest, and recovery mode").',
      name: 'workouts_detail_info_hrv_content3_2',
      desc: '',
      args: [],
    );
  }

  /// `The sympathetic nervous system, commonly known as the "fight or flight" mode, is activated involuntarily when your body perceives a threat. In order to protect itself, the body utilizes the sympathetic nervous system to accelerate breathing, increase blood pressure, and elevate stress hormones like cortisol to make sure you have all the energy and resources necessary to keep yourself safe in a dangerous situation.`
  String get workouts_detail_info_hrv_content3_3 {
    return Intl.message(
      'The sympathetic nervous system, commonly known as the "fight or flight" mode, is activated involuntarily when your body perceives a threat. In order to protect itself, the body utilizes the sympathetic nervous system to accelerate breathing, increase blood pressure, and elevate stress hormones like cortisol to make sure you have all the energy and resources necessary to keep yourself safe in a dangerous situation.',
      name: 'workouts_detail_info_hrv_content3_3',
      desc: '',
      args: [],
    );
  }

  /// `The parasympathetic nervous system, the "rest and digest" mode, is the state of relaxation. It decreases your heart rate, slows breathing, and allows your body to return to homeostasis (a natural balance). When you are in a parasympathetic state, your body feels safe reallocating blood flow and energy to restorative functions such as sleep, digestion, and reproduction.`
  String get workouts_detail_info_hrv_content3_4 {
    return Intl.message(
      'The parasympathetic nervous system, the "rest and digest" mode, is the state of relaxation. It decreases your heart rate, slows breathing, and allows your body to return to homeostasis (a natural balance). When you are in a parasympathetic state, your body feels safe reallocating blood flow and energy to restorative functions such as sleep, digestion, and reproduction.',
      name: 'workouts_detail_info_hrv_content3_4',
      desc: '',
      args: [],
    );
  }

  /// `Therefore, a high variance in time between your heartbeats, aka a high HRV score, means that your autonomic nervous system is able to react efficiently by turning on the sympathetic nervous system to deal with stressful situations and then switching to the relaxed parasympathetic state when the threat has passed.`
  String get workouts_detail_info_hrv_content3_5 {
    return Intl.message(
      'Therefore, a high variance in time between your heartbeats, aka a high HRV score, means that your autonomic nervous system is able to react efficiently by turning on the sympathetic nervous system to deal with stressful situations and then switching to the relaxed parasympathetic state when the threat has passed.',
      name: 'workouts_detail_info_hrv_content3_5',
      desc: '',
      args: [],
    );
  }

  /// `Intensity and Recovery Assessment: By monitoring HRV, individuals can gain a more accurate understanding of their physical fatigue levels and recovery status. A lower HRV might indicate overtraining or inadequate recovery, prompting adjustments to the workout plan, such as increasing rest periods or switching to low-intensity exercises to avoid excessive strain.`
  String get workouts_detail_info_hrv_content4_1 {
    return Intl.message(
      'Intensity and Recovery Assessment: By monitoring HRV, individuals can gain a more accurate understanding of their physical fatigue levels and recovery status. A lower HRV might indicate overtraining or inadequate recovery, prompting adjustments to the workout plan, such as increasing rest periods or switching to low-intensity exercises to avoid excessive strain.',
      name: 'workouts_detail_info_hrv_content4_1',
      desc: '',
      args: [],
    );
  }

  /// `Psychological Stress and Physical Performance Connection: Prolonged psychological stress may lead to decreased HRV, affecting athletic performance. Therefore, maintaining good HRV contributes to optimal psychological and physiological states, thereby enhancing competitive performance.`
  String get workouts_detail_info_hrv_content4_2 {
    return Intl.message(
      'Psychological Stress and Physical Performance Connection: Prolonged psychological stress may lead to decreased HRV, affecting athletic performance. Therefore, maintaining good HRV contributes to optimal psychological and physiological states, thereby enhancing competitive performance.',
      name: 'workouts_detail_info_hrv_content4_2',
      desc: '',
      args: [],
    );
  }

  /// `In summary, Heart Rate Variability plays a pivotal role in guiding individual exercise routines, monitoring overall health status, and predicting athletic performance. By tracking and analyzing changes in HRV, individuals can make informed and scientific decisions about their fitness regimen.`
  String get workouts_detail_info_hrv_content5 {
    return Intl.message(
      'In summary, Heart Rate Variability plays a pivotal role in guiding individual exercise routines, monitoring overall health status, and predicting athletic performance. By tracking and analyzing changes in HRV, individuals can make informed and scientific decisions about their fitness regimen.',
      name: 'workouts_detail_info_hrv_content5',
      desc: '',
      args: [],
    );
  }

  /// `What is Heart Rate Variability?`
  String get workouts_detail_info_hrv_content_title1 {
    return Intl.message(
      'What is Heart Rate Variability?',
      name: 'workouts_detail_info_hrv_content_title1',
      desc: '',
      args: [],
    );
  }

  /// `Why does my Heart Rate Variability matter?`
  String get workouts_detail_info_hrv_content_title2 {
    return Intl.message(
      'Why does my Heart Rate Variability matter?',
      name: 'workouts_detail_info_hrv_content_title2',
      desc: '',
      args: [],
    );
  }

  /// `What Does My HRV Score Mean?`
  String get workouts_detail_info_hrv_content_title3 {
    return Intl.message(
      'What Does My HRV Score Mean?',
      name: 'workouts_detail_info_hrv_content_title3',
      desc: '',
      args: [],
    );
  }

  /// `Influence on personal exercise`
  String get workouts_detail_info_hrv_content_title4 {
    return Intl.message(
      'Influence on personal exercise',
      name: 'workouts_detail_info_hrv_content_title4',
      desc: '',
      args: [],
    );
  }

  /// `What is HRV and why does it matter?`
  String get workouts_detail_info_hrv_title {
    return Intl.message(
      'What is HRV and why does it matter?',
      name: 'workouts_detail_info_hrv_title',
      desc: '',
      args: [],
    );
  }

  /// `Learn More`
  String get workouts_detail_information_learn_more {
    return Intl.message(
      'Learn More',
      name: 'workouts_detail_information_learn_more',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get workouts_detail_information_title {
    return Intl.message(
      'Information',
      name: 'workouts_detail_information_title',
      desc: '',
      args: [],
    );
  }

  /// `Fast`
  String get workouts_detail_track_fast {
    return Intl.message(
      'Fast',
      name: 'workouts_detail_track_fast',
      desc: '',
      args: [],
    );
  }

  /// `Slow`
  String get workouts_detail_track_slow {
    return Intl.message(
      'Slow',
      name: 'workouts_detail_track_slow',
      desc: '',
      args: [],
    );
  }

  /// `Stride`
  String get workouts_step_length {
    return Intl.message(
      'Stride',
      name: 'workouts_step_length',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete your account?`
  String get Would_you_like_cancle_account {
    return Intl.message(
      'Are you sure to delete your account?',
      name: 'Would_you_like_cancle_account',
      desc: '',
      args: [],
    );
  }

  /// `Yard`
  String get Yard {
    return Intl.message(
      'Yard',
      name: 'Yard',
      desc: '',
      args: [],
    );
  }

  /// `yd`
  String get yd {
    return Intl.message(
      'yd',
      name: 'yd',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get yearly_title {
    return Intl.message(
      'Year',
      name: 'yearly_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you % years or older?`
  String get years_or_older {
    return Intl.message(
      'Are you % years or older?',
      name: 'years_or_older',
      desc: '%=age',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Yoga`
  String get Yoga {
    return Intl.message(
      'Yoga',
      name: 'Yoga',
      desc: '',
      args: [],
    );
  }

  /// `You're ready to go`
  String get You_are_ready {
    return Intl.message(
      'You\'re ready to go',
      name: 'You_are_ready',
      desc: '',
      args: [],
    );
  }

  /// `Email Changed Successfully`
  String get Your_email_has_been_changed_successfully {
    return Intl.message(
      'Email Changed Successfully',
      name: 'Your_email_has_been_changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Your password has \nbeen reset successfully`
  String get Your_password_has_been_change_successfully {
    return Intl.message(
      'Your password has \nbeen reset successfully',
      name: 'Your_password_has_been_change_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Password Changed Successfully`
  String get Your_password_has_been_rest_successfully {
    return Intl.message(
      'Password Changed Successfully',
      name: 'Your_password_has_been_rest_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Your Schedule`
  String get your_sleep_schedule {
    return Intl.message(
      'Your Schedule',
      name: 'your_sleep_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations！\nPairing Successful`
  String get your_watch_is_paired {
    return Intl.message(
      'Congratulations！\nPairing Successful',
      name: 'your_watch_is_paired',
      desc: '',
      args: [],
    );
  }

  /// `Your watch firmware has encountered an error. Please upgrade the firmware immediately to fix it.`
  String get your_watch_system_is_abnormal {
    return Intl.message(
      'Your watch firmware has encountered an error. Please upgrade the firmware immediately to fix it.',
      name: 'your_watch_system_is_abnormal',
      desc: '',
      args: [],
    );
  }

  /// `Zone`
  String get Zone {
    return Intl.message(
      'Zone',
      name: 'Zone',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
