/// 发送邮件
class EmailVerifyRequestModel {
  EmailVerifyRequestModel({
    required this.email,
    required this.type,
    required this.code,
   required this.customerCode,
  });

  /// 邮箱
  final String? email;

  /// 邮件类型:1-用户注册,2-修改密码,3-修改邮箱,可用值:1,2,3
  final String? type;

  /// 验证码
  final String? code;

  String? customerCode;

  Map<String, dynamic> toJson() => {
        "email": email,
        "type": type,
        "code": code,
        "customerCode": customerCode,
      };
}
