import 'dart:io';
import 'dart:typed_data';

import 'package:creekbase/creek_flutter_toast.dart';
import 'package:creekbase/generated/l10n.dart';
import 'package:creekdial/file/file_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import 'watch_face_install_logic.dart';
import 'watch_face_parse_logic.dart';

class WatchFacePhotoDetailLogic extends GetxController {
  final installController = Get.find<WatchFaceInstallLogic>();
  final parseController = Get.find<WatchFaceParseLogic>();

  int photoMaxNum = 6;

  TextEditingController widthController = TextEditingController(text: '368');
  TextEditingController heightController = TextEditingController(text: '448');

  /// 点击选择照片
  Future<void> onSelectPhotoPressed() async {
    selectPhotos();
  }

  Future<void> selectPhotos() async {
    final List<AssetEntity>? result = await AssetPicker.pickAssets(
      Get.context!,
      pickerConfig: AssetPickerConfig(
          maxAssets: photoMaxNum,
          requestType: RequestType.image,
          specialPickerType: SpecialPickerType.noPreview,
          filterOptions: FilterOptionGroup(containsLivePhotos: false)),
    );
    if (result != null && result.isNotEmpty) {
      for (int i = 0; i < result.length; i++) {
        final bytes = await result[i].originBytes;
        if (bytes != null) {
          parseController.backgroundImageBytes.add(bytes);
          parseController.update();
        }
      }
    }
  }

  Future<void> savePhotoBackgroundImage(
      String imageName, Uint8List bytes) async {
    final dir = await FileTool.dialDirPath('00:00:00:00:00:00', 'photo');
    final appSavePath = '${dir.path}/app/background/$imageName';
    final firmwareSavePath = '${dir.path}/firmware/background/$imageName';
    if (appSavePath.isNotEmpty) {
      await FileTool.saveBytes(appSavePath, bytes);
    }
    if (firmwareSavePath.isNotEmpty) {
      await FileTool.saveBytes(firmwareSavePath, bytes);
    }
  }

  /// 点击删除背景
  void onBackgroundDelete(int index) {
    parseController.backgroundImageBytes.removeAt(index);
    parseController.update();
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    loadDial();
  }

  Future<void> loadDial() async {
    await _parsDial();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /// 解压文件
  static Future<bool> extractAssetFile() async {
    await FileTool.createDir('dial/00:00:00:00:00:00',recursive: true);
    final dir = await FileTool.dialDirPath('00:00:00:00:00:00', 'photo');
    final isExists = await dir.exists();
    if (isExists) {
      await dir.delete(recursive: true);
    }
    ByteData data = await rootBundle.load('assets/zip/photo.zip');
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    final zip = await FileTool.dialZipPath('00:00:00:00:00:00', 'photo');
    await File(zip).writeAsBytes(bytes);
    final result = await FileTool.extractFile(zip, dir.path);
    return result;
  }

  Future<void> _parsDial() async {
    await extractAssetFile();

    parseController.dialName = 'photo';

    await parseController.parseDial();
  }

  /// 表盘编码
  Future<String> encodeDial() async {
    const dialName = 'photo';
    if (parseController.backgroundImageBytes.isEmpty) {
      CreekToast.showToast(S.current.please_select_photo);
      return '';
    } else {
      installController.installProgress = 0;
      const appBackgroundDir =
          'dial/00:00:00:00:00:00/$dialName/app/background';
      const firmwareBackgroundDir =
          'dial/00:00:00:00:00:00/$dialName/firmware/background';
      await FileTool.deleteDir(appBackgroundDir);
      await FileTool.createDir(appBackgroundDir);
      await FileTool.deleteDir(firmwareBackgroundDir);
      await FileTool.createDir(firmwareBackgroundDir);
      for (var i = 0; i < parseController.backgroundImageBytes.length; i++) {
        await savePhotoBackgroundImage(
            'background_${i}_0565.png',
            parseController.backgroundImageBytes[i]);
      }

      parseController.dialJsonModel?.modifyItem.first.count =
          parseController.backgroundImageBytes.length;

      final result = await parseController.encodeDial();
      return result;
    }
  }
}
