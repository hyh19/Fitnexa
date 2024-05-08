import 'dart:convert';

import 'package:creekbase/spkey.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'package:encrypt/encrypt.dart';

import 'crrek_storage_utils.dart';
import 'dbcrypt.dart';

const String publicPem = "-----BEGIN PUBLIC KEY-----" + '\n' + "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyP/xgvASh9B1+KBnSu1N1/69D9bXh0yhV13WBzEEwnu3Ubv4YUMdJyrEmAo8sF7INX6GR1KP5+qDF4v5DRrsMfASGoSHwd9LW6NJZKIhdcQsUvS5yzoo0+o93/f0xnUeci8U7YtVyr4MaZ9z4CoWpydOt5cPSA03N8JRR/qP3zjsZDjjGvARSI/V6fuIXArfZY2Pc0lklb7RzdtQeFppICxYesHcStn8vhwNfLf47KWzC2cWi4bSb3CBaqDnTkLAGVT7GUxccPa6lez8zZPszGc1g1KiZ3X2XKdv4CZEuCL239JHXrbrseHkPf8M7/Y+FuC/CdBUD6EZohmK8js7hwIDAQAB" + "\n" + "-----END PUBLIC KEY-----";
const String releasePublicPem = "-----BEGIN PUBLIC KEY-----" + '\n' + "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2pGuOvpyVeYlbiuST465mNMiH6lNJPYyMWk4WLE89DjSHIBwqHhc44EDLqxrQh73EU6s7QEObrxSBwOcVmHXrsMp7PjzcbYSBH5huTqXyK1Mmz+368eyJA4l6IQ8HvGG0JduD9lltRAY1sBHP1f7vrDlLc234IMrOsV6o3Pr3sV14UakiCTq/9GXdnsHodEUySYFJp51GmPLVy4kQOT81xMJK3cS7DtfOyu/Yy8xza58WSEzVhUgEaNWXqT7LA96fK7Vj3IWyHLD7lq44kSFDsqPOT10OvIvaVtdo8+hjWZYfk/iKDXcOvptOIPLueyVJS0joRm3gExkPQXXwUUZSwIDAQAB" + "\n" + "-----END PUBLIC KEY-----";

/// Encrypt Util.
class EncryptUtil {
  /// md5 加密
  static String encodeMd5(String data) {
    var content = Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }

  /// 异或对称加密
  static String xorCode(String res, String key) {
    List<String> keyList = key.split(',');
    List<int> codeUnits = res.codeUnits;
    List<int> codes = [];
    for (int i = 0, length = codeUnits.length; i < length; i++) {
      int code = codeUnits[i] ^ int.parse(keyList[i % keyList.length]);
      codes.add(code);
    }
    return String.fromCharCodes(codes);
  }

  /// 异或对称 Base64 加密
  static String xorBase64Encode(String res, String key) {
    String encode = xorCode(res, key);
    encode = encodeBase64(encode);
    return encode;
  }

  /// 异或对称 Base64 解密
  static String xorBase64Decode(String res, String key) {
    String encode = decodeBase64(res);
    encode = xorCode(encode, key);
    return encode;
  }

  /// Base64加密
  static String encodeBase64(String data) {
    var content = utf8.encode(data);
    var digest = base64Encode(content);
    return digest;
  }

  /// Base64解密
  static String decodeBase64(String data) {
    List<int> bytes = base64Decode(data);
    String result = utf8.decode(bytes);
    return result;
  }

  // 将密码进行 MD5 加密，并提取前18位
  static String getMD5(String input) {
    var bytes = utf8.encode(input);
    var md5Result = md5.convert(bytes);
    return md5Result.toString().substring(0, 18);
  }

// 将密码进行 SHA256 散列，并提取后18位
  static String getSHA256(String input) {
    var bytes = utf8.encode(input);
    var sha256Result = sha256.convert(bytes);
    String sha256String = sha256Result.toString();
    return sha256String.substring(sha256String.length - 18);
  }

// 使用 RSA 加密用户密码
  static String encryptPassword(String input){
    final p = getMD5(input)+getSHA256(input);
    dynamic publickey = RSAKeyParser().parse(getPublicKey());
    final encrypter = Encrypter(RSA(publicKey: publickey));
    return encrypter.encrypt(p).base64;
  }

  // 获取appkey
  static String getAppKey(){
    String bcKey = CreekStorageUtils.getBool(SPUtilKey.releaseService) ?? false
        ? 'Creek)EkmkAwRko3u8&PY!'
        : 'Creek)Ew&IzihGz9@pyb)qm';
    final String hashedPassword = DBCrypt().hashpw(bcKey, DBCrypt().gensalt());
    return hashedPassword;
  }

  static String getPublicKey(){
    String pubKey = CreekStorageUtils.getBool(SPUtilKey.releaseService) ?? false
        ? releasePublicPem
        : publicPem;
    return pubKey;
  }

}
