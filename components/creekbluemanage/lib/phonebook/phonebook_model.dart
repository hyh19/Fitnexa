/// 电话本模型
class CreekPhonebookModel {
  CreekPhonebookModel(
      {required this.contactName,
      required this.phoneNumber,
      });

  /// 联系人姓名
  final String contactName;

  /// 联系人号码
  final String phoneNumber;


  factory CreekPhonebookModel.fromJson(Map<String, dynamic> json) {
    return CreekPhonebookModel(
        contactName: json["contactName"] ?? '',
        phoneNumber: json["phoneNumber"] ?? '');
  }
}
