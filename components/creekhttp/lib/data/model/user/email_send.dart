/// 发送邮件
class EmailSendRequestModel {
  EmailSendRequestModel({
    required this.email,
    required this.type,
    required this.customerCode,
    this.appName,
  });

  /// 邮箱
  final String? email;

  /// 邮件类型:1-用户注册,2-修改密码,3-修改邮箱,可用值:1,2,3
  final String? type;

  String? customerCode;
  String? appName;

  Map<String, dynamic> toJson() => {
        "email": email,
        "type": type,
        "customerCode": customerCode,
        "appName": appName,
      };
}
