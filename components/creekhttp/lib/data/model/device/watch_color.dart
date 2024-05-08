import 'package:isar/isar.dart';

part 'watch_color.g.dart';

@collection
class WatchColorModel {
  WatchColorModel({
    required this.firmwareId,
    required this.colorCode,
    this.colorImage,
    this.defaultThumb,
    this.bothRatio,
    this.distanceTopRatio,
  });

  Id? id;

  /// 固件ID
  @Index()
  final int firmwareId;

  /// 颜色code
  @Index(composite: [CompositeIndex('firmwareId')], unique: true, replace: true)
  final String colorCode;

  /// 图片地址
  String? colorImage;

  /// 默认预览图
  String? defaultThumb;

  /// 预览图和机头比例
  double? bothRatio;

  /// 预览图顶部距离机头顶部距离比例
  double? distanceTopRatio;

  Map<String, dynamic> toJson() => {
        "firmwareId": firmwareId,
        "colorCode": colorCode,
      };

  factory WatchColorModel.fromJson(
      WatchColorModel colorModel, Map<String, dynamic> json) {
    return WatchColorModel(
      firmwareId: colorModel.firmwareId,
      colorCode: colorModel.colorCode,
      colorImage: json["colorImage"],
      defaultThumb: json["defaultThumb"],
      bothRatio: json["bothRatio"],
      distanceTopRatio: json["distanceTopRatio"],
    );
  }

  @override
  String toString() {
    return 'WatchColorModel{id: $id, firmwareId: $firmwareId, colorCode: $colorCode, colorImage: $colorImage, defaultThumb: $defaultThumb, bothRatio: $bothRatio, distanceTopRatio: $distanceTopRatio}';
  }
}
