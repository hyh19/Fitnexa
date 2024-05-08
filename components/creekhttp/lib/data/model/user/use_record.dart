/// @Desc   user_record
/// @Time   2023/10/19 15:51:30 星期四
/// @Author hl

class UseRecordModel {
  UseRecordModel({
    required this.macId,
    required this.useDate,
    required this.functionsCountList,
  });

  /// mac地址
  String? macId;

  /// 使用日期
  String? useDate;

  /// 使用功能统计列表
  List<FunctionCountModel>? functionsCountList;

  Map<String, dynamic> toJson() => {
        "macId": macId,
        "useDate": useDate,
        "functionsCountList": functionsCountList,
      };
}

class FunctionCountModel {
  FunctionCountModel({
    required this.useCount,
    required this.functionType,
  });

  /// 使用次数
  int? useCount;

  /// 功能类型
  String? functionType;

  Map<String, dynamic> toJson() => {
        "useCount": useCount,
        "functionType": functionType,
      };
}
