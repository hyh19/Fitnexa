/// 电话本模型
class PhonebookModel {
  PhonebookModel(
      {required this.id,
      required this.contactName,
      required this.phoneNumber,
      this.isFavorite = false});

  final String id;

  /// 联系人姓名
  final String contactName;

  /// 联系人号码
  final String phoneNumber;

  /// 是否常用联系人
  final bool isFavorite;

  @override
  String toString() {
    return 'PhonebookModel{id: $id, contactName: $contactName, phoneNumber: $phoneNumber}';
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['contactName'] = contactName;
    map['phoneNumber'] = phoneNumber;
    return map;
  }

  factory PhonebookModel.fromJson(Map<String, dynamic> json) {
    return PhonebookModel(
        id: json["id"] ?? '',
        contactName: json["contactName"] ?? '',
        phoneNumber: json["phoneNumber"] ?? '');
  }
}
