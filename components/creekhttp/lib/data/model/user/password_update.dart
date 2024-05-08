/// 修改密码
class PasswordUpdateRequestModel {
  PasswordUpdateRequestModel({
    required this.password,
    required this.newPassword,
  });

  /// 用户密码
  final String? password;

  /// 新用户密码
  final String? newPassword;

  factory PasswordUpdateRequestModel.fromJson(Map<String, dynamic> json) {
    return PasswordUpdateRequestModel(
      password: json["password"],
      newPassword: json["newPassword"],
    );
  }

  Map<String, dynamic> toJson() => {
        "password": password,
        "newPassword": newPassword,
      };
}
