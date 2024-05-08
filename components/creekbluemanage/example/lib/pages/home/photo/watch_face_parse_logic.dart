import 'dart:io';
import 'dart:typed_data';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage_example/pages/home/photo/watch_face_photo_detail_logic.dart';
import 'package:creekdial/dial/dial_tool.dart';
import 'package:creekdial/dial/model/app_json_model.dart';
import 'package:creekdial/dial/model/clock_position_model.dart';
import 'package:creekdial/dial/model/data_model.dart';
import 'package:creekdial/dial/model/dial_json_model.dart';
import 'package:creekdial/file/file_tool.dart';
import 'package:creekdial/image/image_tool.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchFaceParseLogic extends GetxController {

  /// 表盘名
  String dialName = '';

  /// app.json模型
  AppJsonModel? appJsonModel;

  /// dial.json模型
  DialJsonModel? dialJsonModel;

  /// 颜色List
  List<String> appColors = [];

  /// 所有背景图片路径
  List<String> backgroundImages = [];

  /// 所有背景图片byte
  List<Uint8List> backgroundImageBytes = [];

  /// 所有刻度图片Map
  Map<String, List<String>> scaleImagesMap = {};

  /// 所有刻度图片路径
  List<String> scaleImages = [];

  /// 所有刻度图片byte
  List<Uint8List> scaleImageBytes = [];

  /// 所有时间位置图片路径
  List<String> clockPositionImages = [];

  List<String> clockPositionPreviewImages = [];

  /// 所有时间位置图片byte
  List<Uint8List> clockPositionImageBytes = [];

  /// 选中颜色index
  int colorSelectIndex = 0;

  /// 选中背景index
  int backgroundSelectIndex = 0;

  /// 选中照片index
  int? photoSelectIndex;

  /// 选中刻度index
  int scaleSelectIndex = 0;

  /// 选中时间位置index
  int clockPositionSelectIndex = 0;

  /// 当前颜色
  String? currentColor;

  /// 当前背景图片路径
  String? currentBackgroundImagePath;

  /// 当前刻度图片路径
  String? currentScaleImagePath;

  /// 预览图
  Uint8List previewImageByte = Uint8List.fromList([]);

  /// 预览图大小
  Size previewImageSize = Size.zero;

  /// 功能项位置
  List<AppDataPositionModel> positionModels = [];

  /// 功能项
  Map<int, List<AppDataTypeModel>> typeModelsMap = {};

  List<List<AppClockPositionModel>> appClockPositions = [];

  /// 解析表盘包
  Future<void> parseDial() async {
    // 获取json模型
    await getJsonModel();

    update();
  }

  /// 获取Json模型
  Future<void> getJsonModel() async {
    // 获取app.json模型
    appJsonModel = await DialTool.appJson('00:00:00:00:00:00', dialName);

    // 获取dial.json模型
    dialJsonModel = await DialTool.dialJson('00:00:00:00:00:00', dialName,
        appJsonModel: appJsonModel);
  }

  /// 表盘编码
  Future<String> encodeDial() async {
    // 修改dial.json
    final item = dialJsonModel?.item ?? [];
    final modifyItem = dialJsonModel?.modifyItem ?? [];
    if (item.isEmpty || modifyItem.isEmpty) return dialName;
    for (int i = 0; i < item.length; i++) {
      final itemDic = item[i] as Map<String, dynamic>;
      final modifyDic = modifyItem[i].toJson();
      WatchFacePhotoDetailLogic photoDetailLogic = Get.find();
      modifyDic["w"] = photoDetailLogic.widthController.text.toInt();
      modifyDic["h"] = photoDetailLogic.heightController.text.toInt();
      // 更新dial.json的item内容
      itemDic.updateAll((key, value) {
        if (modifyDic.containsKey(key)) {
          return modifyDic[key];
        } else {
          return value;
        }
      });
      // 替换firmware图片
      final oldImage = modifyItem[i].oldImage;
      if (oldImage != null) {
        final newImage = modifyItem[i].newImage;
        if (newImage != null && newImage != oldImage) {
          await DialTool.deleteImage(oldImage);
        }
      }
    }

    for (int i = 0; i < item.length; i++) {
      // 替换firmware图片
      final oldImage = modifyItem[i].oldImage;
      if (oldImage != null) {
        final newImage = modifyItem[i].newImage;
        if (newImage != null && newImage != oldImage) {
          final path = await DialTool.copyImage(oldImage, newImage);
          modifyItem[i].oldImage = path;
        }
      }
    }
    // 保存dial.json文件
    final json = dialJsonModel?.toJson();
    await DialTool.saveDialJson('00:00:00:00:00:00', dialName, json);
    final previewImagePath = dialJsonModel?.headModel.previewImagePath;
    final appPreviewImagePath = dialJsonModel?.headModel.appPreviewImagePath;
    if (appPreviewImagePath != null) {
      await FileTool.saveBytes(appPreviewImagePath, previewImageByte);
    }
    if (previewImagePath != null) {
      // 调整预览图大小
      final resizedBytes = await ImageTool.resizeImage(
          previewImageByte, previewImageSize,
          isBmp: previewImagePath.contains('.bmp'));
      if (resizedBytes != null) {
        // 保存预览图
        await FileTool.saveBytes(previewImagePath, resizedBytes);
      }
    }
    return dialName;
  }
}

extension StringColor on String? {
  Color get hexColor {
    final str = this;
    if (str == null) return Colors.transparent;
    var hexColor = str.replaceAll("#", "");
    var opacity = 1.0;
    if (str.contains("%")) {
      final list = hexColor.split("%");
      hexColor = list.first;
      opacity = double.parse(list.last) / 100;
    }
    final intColor = int.parse(hexColor, radix: 16);
    return Color(intColor).withOpacity(opacity);
  }
}
