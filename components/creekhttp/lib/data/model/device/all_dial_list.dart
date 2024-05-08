class AllDialListRequestModel {
  AllDialListRequestModel({
    required this.firmwareId,
    required this.langId,
    required this.appFrameVersion,
    required this.firmwareFrameVersion,
    required this.customerCode,
  });

  final int firmwareId;
  final String? langId;

  /// app框架版本
  final int appFrameVersion;

  /// 固件框架版本
  final int firmwareFrameVersion;

  /// 客户ID
  final String customerCode;

  Map<String, dynamic> toJson() => {
        "firmwareId": firmwareId,
        "langId": langId,
        "appFrameVersion": appFrameVersion,
        "firmwareFrameVersion": firmwareFrameVersion,
        "customerCode": customerCode,
      };
}
