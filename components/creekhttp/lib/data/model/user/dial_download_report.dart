/// @Desc   表盘下载上报接口请求头信息
/// @Time   2023/10/19 15:32:26 星期四
/// @Author hl

class DialDownloadRecordModel {
  DialDownloadRecordModel({
    required this.dialId,
    required this.downloadTime,
    required this.duration,
    required this.macId,
  });

  /// 表盘ID
  int? dialId;

  /// 下载时间
  String? downloadTime;

  /// 下载耗时
  int? duration;

  /// mac地址
  String? macId;

  Map<String, dynamic> toJson() => {
        "dialId": dialId,
        "downloadTime": downloadTime,
        "duration": duration,
        "macId": macId,
      };
}
