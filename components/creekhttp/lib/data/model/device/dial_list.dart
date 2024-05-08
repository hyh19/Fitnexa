class DialListRequestModel {
  DialListRequestModel({
    required this.dialClassifyId,
    required this.langId,
    required this.pageNum,
    required this.pageSize,
    required this.appFrameVersion,
    required this.firmwareFrameVersion,
    required this.customerCode,
  });

  final int? dialClassifyId;
  final String? langId;
  final int? pageNum;
  final int? pageSize;

  /// app框架版本
  final int appFrameVersion;

  /// 固件框架版本
  final int firmwareFrameVersion;

  /// 客户ID
  final String customerCode;

  Map<String, dynamic> toJson() => {
        "dialClassifyId": dialClassifyId,
        "langId": langId,
        "pageNum": pageNum,
        "pageSize": pageSize,
        "appFrameVersion": appFrameVersion,
        "firmwareFrameVersion": firmwareFrameVersion,
        "customerCode": customerCode,
      };
}
