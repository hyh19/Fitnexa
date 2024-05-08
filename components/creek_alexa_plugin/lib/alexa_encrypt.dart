import 'package:encrypt/encrypt.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';

class EncryptTool{

  static String generateAES(String data, String keyStr, String ivStr) {
    final plainText = data;
    final key = Key.fromUtf8(keyStr);
    final iv = IV.fromUtf8(ivStr);
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc/*指定使用CBC模式(AES/CBC/PKCS5PADDING)*/));
    final encrypted = encrypter.encrypt(plainText, iv: iv);

    print("generateAES:" + encrypted.base64);
    return encrypted.base64;
  }


  static String encrypt(String plainText, Uint8List key, Uint8List iv) {
    final cipher = BlockCipher('AES/ECB/PKCS7');
    cipher.init(true, ParametersWithIV(KeyParameter(key), iv));

    final plainBytes = utf8.encode(plainText);
    final encryptedBytes = cipher.process(Uint8List.fromList(plainBytes));
    final base64Encoded = base64.encode(encryptedBytes);

    return base64Encoded;
  }

}

