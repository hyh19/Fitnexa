/// 用户注册
class RegisterRequestModel {
  RegisterRequestModel({
    required this.countryCode,
    required this.email,
    required this.key,
    required this.mobileId,
    required this.password,
    required this.verifyCode,
    required this.customerCode,
  });

  final String? countryCode;

  /// 邮箱
  final String? email;

  /// /// 存储在app的key 加密算法BCrypt
  final String? key;

  /// 手机唯一识别码
  final String? mobileId;

  /// 用户密码
  final String? password;

  /// 邮件验证码
  final String? verifyCode;

  String? customerCode;

  Map<String, dynamic> toJson() => {
        "countryCode": countryCode,
        "email": email,
        "key": key,
        "mobileId": mobileId,
        "password": password,
        "verifyCode": verifyCode,
        "customerCode": customerCode,
      };
}
