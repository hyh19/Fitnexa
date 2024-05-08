import 'dart:convert';

import 'dial.dart';

class DialMarketRequestModel {
  DialMarketRequestModel({
    required this.firmwareId,
    required this.langId,
    required this.appFrameVersion,
    required this.firmwareFrameVersion,
    required this.customerCode,
  });

  final int? firmwareId;
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

class DialMarketResultModel {
  DialMarketResultModel(
      {required this.dialPageDtoList,
      required this.id,
      this.moreEntry = 0,
      this.name = '',
      this.type = 0,
      this.description = ''});

  final List<DialModel> dialPageDtoList;

  /// 表盘分类id
  final int? id;

  /// 是否显示更多:0-否,1-是,可用值:0,1
  final int moreEntry;

  /// 分类名称
  final String name;

  /// 分类类型 1-上新,2-最热,3-照片,4-其它
  final int type;

  /// 备注
  final String description;

  factory DialMarketResultModel.fromJson(Map<dynamic, dynamic> json) {
    return DialMarketResultModel(
      dialPageDtoList: json["dialPageDTOList"] == null
          ? []
          : List<DialModel>.from(
              json["dialPageDTOList"]!.map((x) => DialModel.fromJson(x))),
      id: json["id"],
      moreEntry: json["moreEntry"] ?? 0,
      name: json["name"] ?? '',
      type: json["type"] ?? 1,
      description: json["description"] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "dialPageDTOList": dialPageDtoList.map((e) => e.toJson()).toList(),
        "id": id,
        "moreEntry": moreEntry,
        "name": name,
        "type": type,
        "description": description,
      };
}
