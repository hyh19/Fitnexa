import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:archive/archive.dart';
import 'package:creekdial/byte_array/byte_array.dart';
import 'package:creekdial/dial/crc_check.dart';
import 'package:creekdial/dial/model/clock_position_model.dart';
import 'package:creekdial/dial/model/data_model.dart';
import 'package:creekdial/dial/model/dial_json_head_model.dart';
import 'package:creekdial/dial/file_info_model.dart';
import 'package:creekdial/dial/model/dial_json_model.dart';
import 'package:creekdial/dial/model/image_model.dart';
import 'package:creekdial/image/image_tool.dart';
import 'package:flutter/material.dart';

import '../file/file_tool.dart';
import '../image/enum.dart';
import 'model/app_json_model.dart';

class DialTool {
  DialTool._();

  /// 表盘头部校验
  static const _magicNumber = [0x21, 0x43, 0xa5, 0x5a];

  /// 获取app.json的模型
  static Future<AppJsonModel?> appJson(String mac, String dialName) async {
    try {
      final files = await FileTool.appFileList(mac, dialName);
      AppJsonModel? appJsonModel;
      List<String> backgroundImages = [];
      Map<String, List<String>> scaleImagesMap = {};
      List<String> clockPositionImages = [];
      List<String> clockPositionPreviewImages = [];
      List<AppDataPositionModel> positionModels = [];
      Map<String, Map<int, List<AppDataTypeModel>>> colorTypeModelsMap = {};
      String? appImage;
      String? appColorImage;
      List<String> planetLittleImages = [];
      List<String> planetImages = [];
      List<String> planetPreviewImages = [];
      for (String path in files) {
        // 文件名
        final fileName = path.fileName;
        if (fileName == 'app.json') {
          final appJson = await FileTool.mapFromJson(path);
          appJsonModel = AppJsonModel.fromJson(appJson);
          appJsonModel.json = appJson;
        }

        /// 获取背景图
        if (path.contains('/background/')) {
          if (!path.contains('.DS_Store') && !path.contains('.lz4')) {
            backgroundImages.add(path);
          }
          backgroundImages.sort();
        }

        /// 获取planet
        if (path.contains('/app/planet/')) {
          if (!path.contains('.DS_Store') && !path.contains('.lz4')) {
            if (path.contains('_0565.')) {
              planetImages.add(path);
            } else if (path.contains('preview_')) {
              planetPreviewImages.add(path);
            } else {
              planetLittleImages.add(path);
            }
          }
          planetImages.sort();
          planetLittleImages.sort();
          planetPreviewImages.sort();
        }

        /// 获取时间位置图片
        if (path.contains('/clock_position/')) {
          if (!path.contains('.DS_Store') && !path.contains('.lz4')) {
            if (path.contains('_image.')) {
              clockPositionPreviewImages.add(path);
            } else {
              clockPositionImages.add(path);
            }
          }
          clockPositionImages.sort();
          clockPositionPreviewImages.sort();
        }
        if (path.contains('/image/') &&
            !path.contains('.DS_Store') &&
            !path.contains('.lz4')) {
          appImage = path;
        }
        if (path.contains('/color_image/') &&
            !path.contains('.DS_Store') &&
            !path.contains('.lz4')) {
          appColorImage = path;
        }
      }
      appJsonModel?.backgroundModel?.images = backgroundImages;

      appJsonModel?.clockPositionModel?.images = clockPositionImages;
      appJsonModel?.clockPositionModel?.previewImages =
          clockPositionPreviewImages;

      appJsonModel?.appImage = appImage;
      appJsonModel?.appColorImage = appColorImage;

      /// 获取刻度
      if (appJsonModel?.scaleModel != null) {
        final colors = appJsonModel?.colorModel?.pureColor ?? [];
        if (appJsonModel?.scaleModel?.onColor == 0) {
          for (String color in colors) {
            final colorName = color.replaceFirst('#', '');
            final files = await FileTool.scaleFileList(mac, dialName,
                colorName: colorName);
            files.sort();
            scaleImagesMap[color] = files;
          }
        } else {
          final files = await FileTool.scaleFileList(mac, dialName);
          files.sort();
          scaleImagesMap['#'] = files;
        }
        appJsonModel?.scaleModel?.images = scaleImagesMap;
      }

      if (appJsonModel?.planetModel != null) {
        appJsonModel?.planetModel?.images = planetImages;
        appJsonModel?.planetModel?.littleImages = planetLittleImages;
        appJsonModel?.planetModel?.previewImages = planetPreviewImages;
      }

      /// 获取data位置模型
      final dataPositions = appJsonModel?.dataModel?.positionList ?? [];
      for (int i = 0; i < dataPositions.length; i++) {
        final positionModel = AppDataPositionModel(
            widget: appJsonModel?.dataModel?.widget ?? '',
            serialNumber: appJsonModel?.dataModel?.serialNumberList[i] ?? 0,
            position: dataPositions[i]);
        positionModels.add(positionModel);
      }

      for (String path in files) {
        /// 获取type模型
        final typeList = appJsonModel?.dataModel?.typeList ?? [];
        for (int i = 0; i < typeList.length; i++) {
          final pic = appJsonModel?.dataModel?.pictureList[i] ?? '';

          if (appJsonModel?.dataModel?.onColor == 0) {
            final colors = appJsonModel?.colorModel?.pureColor ?? [];
            if (path.contains(pic)) {
              for (var color in colors) {
                if (path.contains('/$color/')) {
                  if (colorTypeModelsMap.containsKey(color) == false) {
                    colorTypeModelsMap[color] = {};
                  }
                  var hasAdd = false;
                  final typeModel = AppDataTypeModel(
                      type: typeList[i], picture: pic, image: path);
                  for (var dataPosition in dataPositions) {
                    final position = dataPosition.value;
                    if (path.contains('/$position/')) {
                      if (colorTypeModelsMap[color]?.containsKey(position) ==
                          false) {
                        colorTypeModelsMap[color]?[position] = [];
                      }
                      colorTypeModelsMap[color]?[position]?.add(typeModel);
                      hasAdd = true;
                      break;
                    }
                  }
                  if (!hasAdd) {
                    if (colorTypeModelsMap[color]?.containsKey(0) == false) {
                      colorTypeModelsMap[color]?[0] = [];
                    }
                    colorTypeModelsMap[color]?[0]?.add(typeModel);
                  }
                }
              }
            }
          } else {
            if (path.contains(pic)) {
              if (colorTypeModelsMap.containsKey('#') == false) {
                colorTypeModelsMap['#'] = {};
              }
              var hasAdd = false;
              final typeModel = AppDataTypeModel(
                  type: typeList[i], picture: pic, image: path);
              for (var dataPosition in dataPositions) {
                final position = dataPosition.value;
                if (path.contains('/$position/')) {
                  if (colorTypeModelsMap['#']?.containsKey(position) == false) {
                    colorTypeModelsMap['#']?[position] = [];
                  }
                  colorTypeModelsMap['#']?[position]?.add(typeModel);
                  hasAdd = true;
                  break;
                }
              }
              if (!hasAdd) {
                if (colorTypeModelsMap['#']?.containsKey(0) == false) {
                  colorTypeModelsMap['#']?[0] = [];
                }
                colorTypeModelsMap['#']?[0]?.add(typeModel);
              }
            }
          }
        }
      }

      /// 获取clockPosition模型
      List<List<AppClockPositionModel>> appClockPositions = [];
      final clockPositions =
          appJsonModel?.clockPositionModel?.positionList ?? [];
      final widgetList = appJsonModel?.clockPositionModel?.widgetList ?? [];
      final serialNumberList =
          appJsonModel?.clockPositionModel?.serialNumberList ?? [];

      for (var e in clockPositions) {
        List<AppClockPositionModel> appClockPositionModels = [];
        for (int i = 0; i < widgetList.length; i++) {
          final appClockPositionModel = AppClockPositionModel(
            widget: widgetList[i],
            serialNumber: serialNumberList[i],
            size: ui.Size(e[i].first.toDouble(), e[i].last.toDouble()),
          );
          appClockPositionModels.add(appClockPositionModel);
        }
        appClockPositions.add(appClockPositionModels);
      }

      appJsonModel?.dataModel?.positionModels = positionModels;
      appJsonModel?.dataModel?.colorTypeModelsMap = colorTypeModelsMap;
      appJsonModel?.clockPositionModel?.appClockPositions = appClockPositions;
      return appJsonModel;
    } catch (e) {
      return null;
    }
  }

  /// 获取dial.json的模型
  static Future<DialJsonModel?> dialJson(String mac, String dialName,
      {AppJsonModel? appJsonModel}) async {
    try {
      final files = await FileTool.dialFileList(mac, dialName);
      DialJsonModel? dialJsonModel;
      final path = await FileTool.dialJsonPath(mac, dialName);
      final dialJson = await FileTool.mapFromJson(path);
      dialJsonModel = DialJsonModel.fromJson(dialJson);

      for (String path in files) {
        // 文件名
        final fileName = path.fileName;
        final preview = dialJsonModel.headModel.preview;
        if (preview.isNotEmpty && fileName == preview) {
          dialJsonModel.headModel.previewImagePath = path;
        }
        for (DialModifyItem item in dialJsonModel.modifyItem) {
          if (fileName == item.picture) {
            item.oldImage = path;
            item.newImage = path;
          }
        }
      }
      if (dialJsonModel.headModel.preview.isNotEmpty) {
        dialJsonModel.headModel.previewImagePath ??=
            '${path.dir}/${dialJsonModel.headModel.preview}';
        dialJsonModel.headModel.appPreviewImagePath =
            '${path.dir}/app_preview.png';
      }

      for (DialModifyItem item in dialJsonModel.modifyItem) {
        if (item.widget == appJsonModel?.backgroundModel?.widget &&
            item.serialNumber == appJsonModel?.backgroundModel?.serialNumber) {
          final backgroundImageName = item.picture;
          if (backgroundImageName != null) {
            if (path.dir.contains('photo')) {
              dialJsonModel.tempPhotoBackgroundImagePath =
                  '${path.dir}/$backgroundImageName'
                      .replaceFirst('firmware', 'app');
              item.oldImage = null;
            } else {
              item.oldImage = '${path.dir}/$backgroundImageName';
            }
          }
          break;
        }
      }

      return dialJsonModel;
    } catch (e) {
      return null;
    }
  }

  /// 保存dial.json
  static Future<String> saveDialJson(
      String mac, String dialName, Map<String, dynamic>? json) async {
    final dialJsonPath = await FileTool.dialJsonPath(mac, dialName);
    final bytes = utf8.encode(jsonEncode(json));
    final path = await FileTool.saveBytes(dialJsonPath, bytes);
    return path;
  }

  /// 保存dial.json
  static Future<String> saveAppJson(
      String mac, String dialName, Map<String, dynamic>? json) async {
    final appJsonPath = await FileTool.appJsonPath(mac, dialName);
    final bytes = utf8.encode(jsonEncode(json));
    final path = await FileTool.saveBytes(appJsonPath, bytes);
    return path;
  }

  /// 绘制预览图
  static Future<Uint8List?> drawPreviewImage(
      DialJsonModel? model, String? colorHex, Size size) async {
    if (model == null) return null;
    final recorder = ui.PictureRecorder();
    final canvas = ui.Canvas(recorder);
    canvas.drawColor(Colors.black, BlendMode.srcOver);
    final paint = ui.Paint();
    final items = List.of(model.modifyItem);
    int? index;
    for (var i = 0; i < items.length; i++) {
      if (items[i].widget == 'pointer') {
        index = i;
        break;
      }
    }
    if (model.appImage != null && model.appImage?.isEmpty == false) {
      DialModifyItem imageItem = DialModifyItem();
      imageItem.newImage = model.appImage;
      if (model.appImage?.contains('background') == true) {
        index = 0;
      }
      if (model.appImage?.contains('pointer') == true) {
        index = null;
      }
      if (index != null) {
        items.insert(index, imageItem);
      } else {
        items.add(imageItem);
      }
    }

    if (model.appColorImage != null && model.appColorImage?.isEmpty == false) {
      DialModifyItem imageItem = DialModifyItem();
      imageItem.newImage = model.appColorImage;
      imageItem.color = colorHex;
      if (model.appColorImage?.contains('background') == true) {
        index = 0;
      }
      if (model.appColorImage?.contains('pointer') == true) {
        index = null;
      }
      if (index != null) {
        items.insert(index, imageItem);
      } else {
        items.add(imageItem);
      }
    }

    if (model.positionImage != null && model.positionImage?.isEmpty == false) {
      DialModifyItem positionImageItem = DialModifyItem();
      positionImageItem.newImage = model.positionImage;
      positionImageItem.color = colorHex;
      items.add(positionImageItem);
    }

    for (DialModifyItem item in items) {
      if (item.newImage != null) {
        final image = await ImageTool.getUIImage(item.newImage!);
        if (item.color != null) {
          final color = ui.Color(ImageTool.hexToInt(item.color!));
          paint.colorFilter = ui.ColorFilter.mode(color, ui.BlendMode.srcIn);
        } else {
          paint.colorFilter = null;
        }
        final x = (item.x ?? 0).toDouble();
        final y = (item.y ?? 0).toDouble();
        final centerX = (item.centerX ?? 0).toDouble();
        final centerY = (item.centerY ?? 0).toDouble();
        canvas.save();
        if (centerX != 0 || centerY != 0) {
          canvas.translate(x + centerX, y + centerY);
          final rotation = item.rotation?.toDouble() ?? 0;
          canvas.rotate(rotation / 180 * math.pi);
          canvas.translate(-(x + centerX), -(y + centerY));
        }

        canvas.drawImage(image, ui.Offset(x, y), paint);
        canvas.restore();
      } else {
        if (item.color != null && item.widget == 'custom') {
          if (item.radius == null) {
            final color = ui.Color(ImageTool.hexToInt(item.color!));
            paint.colorFilter = ui.ColorFilter.mode(color, ui.BlendMode.src);
            canvas.drawRect(
                ui.Rect.fromLTWH(
                    (item.x ?? 0).toDouble(),
                    (item.y ?? 0).toDouble(),
                    (item.w ?? 0).toDouble(),
                    (item.h ?? 0).toDouble()),
                paint);
          } else {
            final color = ui.Color(ImageTool.hexToInt(item.color!));
            paint.colorFilter = ui.ColorFilter.mode(color, ui.BlendMode.src);
            canvas.drawRRect(
                ui.RRect.fromRectAndRadius(
                    ui.Rect.fromLTWH(
                        (item.x ?? 0).toDouble(),
                        (item.y ?? 0).toDouble(),
                        (item.w ?? 0).toDouble(),
                        (item.h ?? 0).toDouble()),
                    ui.Radius.circular((item.radius ?? 0).toDouble())),
                paint);
          }
        }
      }
    }
    ui.Picture picture = recorder.endRecording();
    final width = size.width;
    final height = size.height;
    ui.Image coloredImage =
        await picture.toImage(width.toInt(), height.toInt());

    ByteData? byteData =
        await coloredImage.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  /// 绘制位置图片
  static Future<Uint8List?> drawPositionImage(
      AppDataPositionModel positionModel,
      Size size,
      Color backgroundColor) async {
    final imagePath = positionModel.typeModel?.image;
    final hexColor = positionModel.typeModel?.color;
    if (imagePath == null) return null;
    // 创建画布
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    final paint = ui.Paint();

    // 设置画布大小
    canvas.drawPaint(Paint()..color = backgroundColor);

    // 在画布上绘制图标图片
    final image = await ImageTool.getUIImage(imagePath);
    final x = (positionModel.typeModel?.x ?? 0).toDouble();
    final y = (positionModel.typeModel?.y ?? 0).toDouble();
    if (hexColor != null) {
      final color = ui.Color(ImageTool.hexToInt(hexColor));
      paint.colorFilter = ui.ColorFilter.mode(color, ui.BlendMode.srcIn);
    } else {
      paint.colorFilter = null;
    }
    canvas.drawImage(image, ui.Offset(x, y), paint);

    // 完成绘制
    ui.Picture picture = recorder.endRecording();
    final width = size.width;
    final height = size.height;
    ui.Image coloredImage =
        await picture.toImage(width.toInt(), height.toInt());

    ByteData? byteData =
        await coloredImage.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  /// 表盘编码
  static Future<List<int>> encode(String mac, String dialName, double width,
      double height, double radiusRatio,
      {int imageCompression = 0, bool crop = true}) async {
    /// 表盘头部信息
    List<int> dialHead = [];

    /// 表盘Json模型数组
    List<DialFileModel> jsonModels = [];

    /// 表盘Image模型数组
    List<DialFileModel> imageModels = [];

    /// 表盘Json信息
    List<int> dialJsonInfo = [];

    /// 表盘图片信息
    List<int> dialImageInfo = [];

    /// 表盘Json数据
    List<int> dialJsonData = [];

    /// 表盘图片数据
    List<int> dialImageData = [];

    /// 图片压缩类型
    final compressionType = ImageCompressionType.getType(imageCompression);

    // 获取文件列表
    final files = await FileTool.dialFileList(mac, dialName)
      ..sort();
    var offset = 0;
    for (String path in files) {
      // 文件名
      final fileName = path.fileName;
      // 文件数据
      List<int> fileBytes = [];
      if (fileName.endsWith('.json')) {
        if (fileName == 'dial.json') {
          final dialJson = await FileTool.mapFromJson(path);
          final dialHeadModel = DialJsonHeadModel.fromJson(dialJson);
          final nameBytes =
              ByteArray.char(dialHeadModel.name, length: 30).toList();
          final typeBytes = ByteArray.u8(dialHeadModel.dialType).toList();
          final versionBytes =
              ByteArray.u16(dialHeadModel.dialVersion).toList();
          final fileCountBytes = ByteArray.u16(files.length).toList();
          // 图片是否压缩
          final compressionBytes = ByteArray.u8(compressionType.value).toList();

          // 头部数据
          dialHead = nameBytes +
              _magicNumber +
              typeBytes +
              versionBytes +
              fileCountBytes +
              compressionBytes;
          // dial.json
          fileBytes = await FileTool.bytesFromJson(path);
        } else {
          // file.json
          fileBytes = await FileTool.bytesFromJson(path);
        }
        final jsonModel = DialFileModel(
            name: fileName, length: fileBytes.length, data: fileBytes);
        // json模型数组
        jsonModels.add(jsonModel);
        if (offset == 0) {
          int crc32Offset = 4;
          int fileInfoOffset = 38;
          offset =
              dialHead.length + crc32Offset + fileInfoOffset * files.length;
        }
        final infoBytes = _encodeInfo(offset, jsonModel);
        // json信息
        dialJsonInfo.addAll(infoBytes);
        // json数据
        dialJsonData.addAll(fileBytes);
        // 偏移
        offset += jsonModel.length;
      } else {
        if (fileName.contains('background') && crop) {
          await ImageTool.copyCrop(path, radiusRatio,
              width: width, height: height, isBmp: fileName.contains('.bmp'));
        }
        if (fileName.startsWith('preview') && crop) {
          await ImageTool.copyCrop(path, radiusRatio,
              isBmp: fileName.contains('.bmp'));
        }
        if (fileName.contains('_8888.')) {
          // 图片取模：ARGB8888
          fileBytes =
              await ImageTool.encodeARGB8888(path, compressionType) ?? [];
        }
        if (fileName.contains('_0565.')) {
          // 图片取模：RGB565
          fileBytes = await ImageTool.encodeRGB565(path, compressionType) ?? [];
        }
        final imageModel = DialFileModel(
            name: fileName, length: fileBytes.length, data: fileBytes);
        dialImageData.addAll(fileBytes);
        imageModels.add(imageModel);
      }
    }
    for (DialFileModel imageModel in imageModels) {
      final infoBytes = _encodeInfo(offset, imageModel);
      // 图片信息
      dialImageInfo.addAll(infoBytes);
      // 偏移
      offset += imageModel.length;
    }
    final data = dialJsonInfo + dialImageInfo + dialJsonData + dialImageData;
    final crc32 = CrcCheck.calculateUint8List(data);
    final crc32Value = ByteArray.u32(crc32).toList();
    return dialHead + crc32Value + data;
  }

  static Future<List<int>> encodeActRes(String mac, String dialName,
      double width, double height, double radiusRatio,
      {int imageCompression = 0, bool crop = true}) async {
    /// 表盘头部信息
    List<int> dialHead = [];

    /// 表盘Json模型数组
    List<DialFileModel> jsonModels = [];

    /// 表盘Image模型数组
    List<DialFileModel> imageModels = [];

    /// 表盘Json信息
    List<int> dialJsonInfo = [];

    /// 表盘图片信息
    List<int> dialImageInfo = [];

    /// 表盘Json数据
    List<int> dialJsonData = [];

    /// 表盘图片数据
    List<int> dialImageData = [];

    /// 图片压缩类型
    final compressionType = ImageCompressionType.getType(imageCompression);

    // 获取文件列表
    final files = await FileTool.dialFileList(mac, dialName)
      ..sort();
    var offset = 0;
    for (String path in files) {
      // 文件名
      final fileName = path.fileName;
      // 文件数据
      List<int> fileBytes = [];
      if (fileName.endsWith('.json')) {
        if (fileName == 'dial.json') {
          final dialJson = await FileTool.mapFromJson(path);
          final dialHeadModel = DialJsonHeadModel.fromJson(dialJson);
          final nameBytes =
              ByteArray.char(dialHeadModel.name, length: 30).toList();
          final typeBytes = ByteArray.u8(dialHeadModel.dialType).toList();
          final versionBytes =
              ByteArray.u16(dialHeadModel.dialVersion).toList();
          final fileCountBytes = ByteArray.u16(files.length).toList();
          // 图片是否压缩
          final compressionBytes = ByteArray.u8(compressionType.value).toList();

          // 头部数据
          dialHead = nameBytes +
              _magicNumber +
              typeBytes +
              versionBytes +
              fileCountBytes +
              compressionBytes;
          // dial.json
          fileBytes = await FileTool.bytesFromJson(path);
        } else {
          // file.json
          fileBytes = await FileTool.bytesFromJson(path);
        }
        fileBytes = fileBytes.aligned4Byte;
        final jsonModel = DialFileModel(
            name: fileName, length: fileBytes.length, data: fileBytes);
        // json模型数组
        jsonModels.add(jsonModel);
        if (offset == 0) {
          int crc32Offset = 4;
          int fileInfoOffset = 38;
          var fileOffset = fileInfoOffset * files.length;
          final remainder = fileOffset % 4;

          // 如果余数不为0，找到下一个能被4整除的数
          if (remainder != 0) {
            fileOffset = fileOffset + (4 - remainder);
          }

          offset = dialHead.length + crc32Offset + fileOffset;
        }
        final infoBytes = _encodeInfo(offset, jsonModel);
        // json信息
        dialJsonInfo.addAll(infoBytes);
        // json数据
        dialJsonData.addAll(fileBytes);
        // 偏移
        offset += jsonModel.length;
      } else {
        if (fileName.contains('background') && crop) {
          await ImageTool.copyCrop(path, radiusRatio,
              width: width, height: height, isBmp: fileName.contains('.bmp'));
        }
        if (fileName.startsWith('preview') && crop) {
          await ImageTool.copyCrop(path, radiusRatio,
              isBmp: fileName.contains('.bmp'));
        }
        if (fileName.contains('_8888.')) {
          // 图片取模：ARGB8888
          fileBytes =
              await ImageTool.encodeActResARGB8888(path, compressionType) ?? [];
        }
        if (fileName.contains('_0565.')) {
          // 图片取模：RGB565
          fileBytes =
              await ImageTool.encodeActResRGB565(path, compressionType) ?? [];
        }
        fileBytes = fileBytes.aligned4Byte;
        final imageModel = DialFileModel(
            name: fileName, length: fileBytes.length, data: fileBytes);
        dialImageData.addAll(fileBytes);
        imageModels.add(imageModel);
      }
    }
    for (DialFileModel imageModel in imageModels) {
      final infoBytes = _encodeInfo(offset, imageModel);
      // 图片信息
      dialImageInfo.addAll(infoBytes);
      // 偏移
      offset += imageModel.length;
    }
    final data = (dialJsonInfo + dialImageInfo).aligned4Byte +
        dialJsonData +
        dialImageData;
    final crc32 = CrcCheck.calculateUint8List(data);
    final crc32Value = ByteArray.u32(crc32).toList();
    return dialHead + crc32Value + data;
  }

  /// 生成文件信息
  static List<int> _encodeInfo(int offset, DialFileModel model) {
    final nameBytes = ByteArray.char(model.name, length: 30).toList();
    final offsetBytes = ByteArray.u32(offset).toList();
    final lengthBytes = ByteArray.u32(model.length).toList();

    return nameBytes + offsetBytes + lengthBytes;
  }

  /// 删除图片
  static Future<void> deleteImage(String image) async {
    try {
      await FileTool.deleteFile(image);
    } catch (e) {}
  }

  /// 替换图片
  static Future<String?> copyImage(String oldImage, String newImage) async {
    try {
      final newPath = '${oldImage.dir}/${newImage.fileName}';
      final path = await FileTool.copyFile(newImage, newPath);
      return path;
    } catch (e) {
      return null;
    }
  }
}
