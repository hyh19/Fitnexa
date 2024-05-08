import 'package:creekdial/dial/model/dial_json_head_model.dart';

class DialJsonModel {
  DialJsonModel({
    required this.headModel,
    required this.item,
    required this.modifyItem,
    required this.fadeItem,
    required this.modifyFadeItem,
  });

  final DialJsonHeadModel headModel;

  /// 原始数据
  final List<dynamic> item;

  /// 息屏数据
  final List<dynamic> fadeItem;

  /// 修改项数据
  final List<DialModifyItem> modifyItem;

  /// 息屏修改项数据
  final List<DialModifyItem> modifyFadeItem;

  /// 临时背景路径
  String? tempPhotoBackgroundImagePath;

  /// app使用的image
  String? appImage;

  /// app使用的color image
  String? appColorImage;

  /// app使用的position image
  String? positionImage;

  factory DialJsonModel.fromJson(Map<String, dynamic> json) {
    return DialJsonModel(
      headModel: DialJsonHeadModel.fromJson(json),
      item: json["item"] ?? [],
      fadeItem: json["fade_item"] ?? [],
      modifyItem: json["item"] == null
          ? []
          : List<DialModifyItem>.from(
              json["item"]!.map((x) => DialModifyItem.fromJson(x))),
      modifyFadeItem: json["fade_item"] == null
          ? []
          : List<DialModifyItem>.from(
              json["fade_item"]!.map((x) => DialModifyItem.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    final dic = headModel.toJson()..addAll({"item": item});
    if (fadeItem.isNotEmpty) {
      dic["fade_item"] = fadeItem;
    }
    return dic;
  }
}

/// 修改项
class DialModifyItem {
  DialModifyItem(
      {this.widget,
      this.type,
      this.serialNumber,
      this.x,
      this.y,
      this.w,
      this.h,
      this.radius,
      this.centerX,
      this.centerY,
      this.rotation,
      this.color,
      this.picture,
      this.count,
      this.positionList,
      this.colorList,
      this.oldImage,
      this.newImage});

  final String? widget;
  String? type;
  final int? serialNumber;

  /// 旋转中心点x
  final int? centerX;

  /// 旋转中心点y
  final int? centerY;

  /// 旋转角度
  final int? rotation;

  int? x;

  int? y;

  int? w;

  int? h;

  int? radius;

  String? color;

  String? picture;

  /// 照片数量
  int? count;

  /// 照片位置数组
  List<int>? positionList;

  /// 照片颜色数组
  List<String>? colorList;

  /// 表盘包原图
  String? oldImage;

  /// 选择的新图
  String? newImage;

  factory DialModifyItem.fromJson(Map<String, dynamic> json) {
    return DialModifyItem(
      widget: json["widget"],
      type: json["type"],
      serialNumber: json["serial_number"],
      x: json["x"],
      y: json["y"],
      w: json["w"],
      h: json["h"],
      radius: json["radius"],
      centerX: json["centerx"],
      centerY: json["centery"],
      rotation: json["rotation"],
      color: json["color"],
      picture: json["picture"],
      positionList: json["position_list"]?.cast<int>(),
      colorList: json["color_list"]?.cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> dic = {
      "widget": widget,
      "type": type,
      "serial_number": serialNumber,
      "x": x,
      "y": y,
      "color": color,
      "picture": picture,
    };
    if (count != null) {
      dic["count"] = count;
    }
    if (positionList != null) {
      dic["position_list"] = positionList;
    }
    if (colorList != null) {
      dic["color_list"] = colorList;
    }
    return dic;
  }
}
