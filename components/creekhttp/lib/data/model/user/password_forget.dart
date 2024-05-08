/// 忘记密码
class PasswordForgetRequestModel {
  PasswordForgetRequestModel({
    required this.email,
    required this.password,
    required this.verifyCode,
    required this.customerCode,
  });

  /// 邮箱
  final String? email;

  /// 用户密码
  final String? password;

  /// 邮件验证码
  final String? verifyCode;

  String? customerCode;

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "verifyCode": verifyCode,
        "customerCode": customerCode,
      };
}
