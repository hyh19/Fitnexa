import 'dart:async';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creekbase/creek_flutter_toast.dart';
import 'package:creekbase/generated/l10n.dart';
import 'package:creekdial/creekdial.dart';
import 'package:creekdial/dial/dial_tool.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'watch_face_photo_detail_logic.dart';

class WatchFaceInstallLogic extends GetxController
    with GetSingleTickerProviderStateMixin {
  /// 安装进度
  int? installProgress;

  /// 安装成功
  bool? installSuccess;

  AnimationController? animationController;

  /// 进度定时器
  Timer? _progressTimer;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: 1.seconds,
    )..repeat();
  }

  @override
  void onClose() {
    _progressTimer?.cancel();
    animationController?.dispose();
    super.onClose();
  }

  /// 解压表盘包
  Future<bool> extractFile() async {
    final result = await CreekDial.extractFile('00:00:00:00:00:00', 'photo');
    if (result) {
      update();
    }
    return result;
  }

  /// 点击安装
  Future<void> onInstallPressed() async {
    if (CreekDeviceManger.instance.connectionStatus !=
        ConnectionStatus.connect) {
      CreekToast.showUnConnectTipToast();
      return;
    }
    if (installProgress != null) return;
    installSuccess = null;
    update();
    await _install();
  }

  /// 安装进度改变
  void onInstallProgressChanged(value) {
    if (value > installProgress) {
      _progressTimer?.cancel();
      installProgress = value;
      update();
    }
  }

  /// 安装成功
  Future<void> onInstallSuccess() async {
    _progressTimer?.cancel();
    installProgress = null;
    installSuccess = true;
    update();
  }

  /// 安装失败
  void onInstallFail(code, msg) {
    _progressTimer?.cancel();
    CreekToast.showToast(S.current.Installation_failed);
    installProgress = null;
    installSuccess = false;
    update();
    CreekLog.info('表盘安装失败——$code——$msg');
  }

  /// 安装
  Future<void> _install() async {
    String dialName = '';
    final controller = Get.find<WatchFacePhotoDetailLogic>();
    dialName = await controller.encodeDial();
    final data = await DialTool.encode('00:00:00:00:00:00', dialName, 0, 0, 0,
        crop: false, imageCompression: 4);

    if (dialName.isNotEmpty) {
      _startProgressTimer();
      await _uploadFile(dialName: dialName, data: data);
    }
  }

  void _startProgressTimer() {
    installProgress = 0;
    _progressTimer = Timer.periodic(1.seconds, (timer) {
      installProgress = installProgress! + 1;
      if (installProgress == 99) {
        _progressTimer?.cancel();
      }
      update();
    });
  }

  /// 发送表盘给固件
  Future<void> _uploadFile(
      {required String dialName, required List<int> data}) async {
    if (dialName.isEmpty) return;
    await CreekDial.uploadFile(
        dialName: dialName,
        data: data,
        progress: onInstallProgressChanged,
        success: onInstallSuccess,
        failure: onInstallFail);
  }
}
