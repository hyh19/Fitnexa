/// 登录
class LoginRequestModel {
  LoginRequestModel({
    required this.email,
    required this.key,
    required this.password,
   required this.customerCode,
  });

  /// 邮箱
  final String? email;

  /// 存储在app的key 加密算法BCrypt
  final String? key;

  /// 密码
  final String? password;

  String? customerCode;

  Map<String, dynamic> toJson() => {
        "email": email,
        "key": key,
        "password": password,
        "customerCode": customerCode,
      };
}

class LoginResultModel {
  LoginResultModel({
    required this.refreshToken,
    required this.token,
    required this.domain,
    required this.status,
    required this.openId,
    required this.countryCode,
  });

  final String refreshToken;

  final String token;
  final String domain;
  final String status;
  final int openId;
  final String countryCode;


  factory LoginResultModel.fromJson(Map<String, dynamic> json) {
    return LoginResultModel(
      refreshToken: json["refreshToken"] ?? '',
      token: json["token"] ?? '',
      domain: json["domain"] ?? '',
      openId: json["openId"] ?? '',
      status: json["status"] ?? '',
      countryCode: json["countryCode"] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "refreshToken": refreshToken,
        "token": token,
        "domain": domain,
        "status": status,
        "openId": openId,
        "countryCode": countryCode
      };
}
