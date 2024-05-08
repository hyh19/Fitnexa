/// 获取Token
class TokenRequestModel {
  TokenRequestModel({
    required this.countryCode,
    required this.key,
    required this.mobileId,
    required this.customerCode,
  });

  /// 注册国家代码
  final String? countryCode;

  /// 存储在app的key 加密算法BCrypt
  final String? key;

  /// 手机唯一识别码
  final String? mobileId;

  String? customerCode;

  Map<String, dynamic> toJson() => {
        "countryCode": countryCode,
        "key": key,
        "mobileId": mobileId,
        "customerCode": customerCode,
      };
}

class TokenResultModel {
  TokenResultModel({
    required this.refreshToken,
    required this.token,
    required this.domain,
  });

  final String refreshToken;

  final String token;
  final String domain;

  factory TokenResultModel.fromJson(Map<String, dynamic> json) {
    return TokenResultModel(
      refreshToken: json["refreshToken"] ?? '',
      token: json["token"] ?? '',
      domain: json["domain"] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "refreshToken": refreshToken,
        "token": token,
        "domain": domain,
      };
}
