import 'package:isar/isar.dart';

part 'all_dial.g.dart';

/// 表盘信息
@collection
class AllDialModel {
  AllDialModel({
    this.dialId,
    this.name = '',
    this.fileName = '',
    this.dialVersion = '0',
    this.packageSize = 0,
    this.packageUrl = '',
    this.previewUrl = '',
    this.screedPreviewUrl = '',
    this.type = 0,
    this.mac,
  });

  Id? id;

  int? dialId;

  /// mac地址
  @Index()
  String? mac;

  /// 表盘名称
  final String name;

  /// 文件名称
  @Index(composite: [CompositeIndex('mac')], unique: true, replace: true)
  final String fileName;

  /// 表盘版本
  final String dialVersion;

  /// 表盘包大小
  double packageSize;

  /// 表盘包下载链接
  final String packageUrl;

  /// 预览图地址
  final String previewUrl;

  /// 息屏预览图地址
  final String screedPreviewUrl;

  /// 表盘类型:1-常规表盘,2-常规表盘带息屏,3-通用的息屏表盘,4-壁纸表盘,5-照片表盘,6-自定义表盘,可用值:1,2,3,4,5,6
  final int type;

  factory AllDialModel.fromJson(Map<String, dynamic> json, String? mac) {
    return AllDialModel(
      dialId: json["id"] ?? 0,
      name: json["name"] ?? '',
      fileName: json["fileName"] ?? '',
      dialVersion: json["dialVersion"] ?? '0',
      packageSize: json["packageSize"] ?? 0,
      packageUrl: json["packageUrl"] ?? '',
      previewUrl: json["previewUrl"] ?? '',
      screedPreviewUrl: json["screedPreviewUrl"] ?? '',
      type: json["type"] ?? 0,
      mac: mac,
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> dic = {
      "id": dialId,
      "name": name,
      "fileName": fileName,
      "dialVersion": dialVersion,
      "packageSize": packageSize,
      "packageUrl": packageUrl,
      "previewUrl": previewUrl,
      "screedPreviewUrl": screedPreviewUrl,
      "type": type,
    };
    return dic;
  }
}
