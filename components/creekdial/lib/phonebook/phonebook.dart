import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekdial/byte_array/byte_array.dart';
import 'package:creekdial/phonebook/phonebook_model.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:path_provider/path_provider.dart';

/// 电话本
class Phonebook {
  Phonebook._();

  /// 获取通讯录
  static Future<List<PhonebookModel>> getContacts(
      RootIsolateToken? rootIsolateToken) async {
    if (rootIsolateToken != null) {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
    }

    List<PhonebookModel> phonebooks = [];

    final allow = await FlutterContacts.requestPermission(readonly: true);
    print('requestPermission==$allow');
    if (allow) {
      final contacts = await FlutterContacts.getContacts(withProperties: true);
      for (var contact in contacts) {
        for (var phone in contact.phones) {
          final phonebook = PhonebookModel(
              id: contact.id,
              contactName: contact.displayName,
              phoneNumber:_filterPhoneNumber(phone.number),
              isFavorite: contact.isStarred);
          phonebooks.add(phonebook);
        }
      }
    }
    if (phonebooks.length > 2000) {
      phonebooks.removeRange(2000, phonebooks.length);
    }
    return phonebooks;
  }

  /// 生成电话本
  static Future<List<int>?> encodeFile(List<PhonebookModel> phonebooks) async {
    if (phonebooks.isNotEmpty) {
      final version = ByteArray.u8(1).toList();
      final count = ByteArray.u16(phonebooks.length).toList();
      final lastContactName =
      ByteArray.char(phonebooks.last.contactName, length: 64).toList();
      final lastPhoneNumber =
      ByteArray.char(phonebooks.last.phoneNumber, length: 16).toList();

      final phonebookList = phonebooks
          .map((e) {
        final contactName =
        ByteArray.char(e.contactName, length: 64).toList();
        final phoneNumber =
        ByteArray.char(e.phoneNumber, length: 16).toList();
        return contactName + phoneNumber;
      })
          .flattened
          .toList();
      final data =
          version + count + lastContactName + lastPhoneNumber + phonebookList;
      return data;
    }
    return null;
  }

  static String _filterPhoneNumber(String phoneNumber) {
    // 使用正则表达式替换所有非数字和加号字符为空字符串
    return phoneNumber.replaceAll(RegExp(r'[^0-9+]'), '');
  }
}
