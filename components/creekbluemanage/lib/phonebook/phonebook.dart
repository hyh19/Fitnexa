import 'package:collection/collection.dart';
import 'package:creek_blue_manage/phonebook/phonebook_model.dart';

import '../byte_array/byte_array.dart';


/// 电话本
class CreekPhonebook {
  CreekPhonebook._();

  /// 生成电话本
  static Future<List<int>?> encodePhoneFile(List<CreekPhonebookModel> phonebooks) async {
    if (phonebooks.isNotEmpty) {
      final version = CreekByteArray.u8(1).toList();
      final count = CreekByteArray.u16(phonebooks.length).toList();
      final lastContactName =
      CreekByteArray.char(phonebooks.last.contactName, length: 64).toList();
      final lastPhoneNumber =
      CreekByteArray.char(phonebooks.last.phoneNumber, length: 16).toList();

      final phonebookList = phonebooks
          .map((e) {
        final contactName =
        CreekByteArray.char(e.contactName, length: 64).toList();
        final phoneNumber =
        CreekByteArray.char(e.phoneNumber, length: 16).toList();
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
