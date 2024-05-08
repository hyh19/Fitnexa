/// 修改邮箱
class EmailUpdateRequestModel {
  EmailUpdateRequestModel({
    required this.email,
    required this.newEmail,
    required this.password,
    required this.verifyCode,
  });

  /// 邮箱
  final String? email;

  /// 新邮箱
  final String? newEmail;

  /// 用户密码
  final String? password;

  /// 邮件验证码
  final String? verifyCode;

  factory EmailUpdateRequestModel.fromJson(Map<String, dynamic> json) {
    return EmailUpdateRequestModel(
      email: json["email"],
      newEmail: json["newEmail"],
      password: json["password"],
      verifyCode: json["verifyCode"],
    );
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "newEmail": newEmail,
        "password": password,
        "verifyCode": verifyCode,
      };
}
