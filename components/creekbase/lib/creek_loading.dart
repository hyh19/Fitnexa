/*
 * @Date: 2023-10-24 10:48:47
 * @LastEditors: yuen
 * @LastEditTime: 2023-12-07 15:21:17
 * @FilePath: \project\creekbase\lib\creek_loading.dart
 */
import 'package:creekbase/creek_base.dart';
import 'package:creekbase/dialog/my_navigator_observers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import 'generated/l10n.dart';

enum CreekLoadingType {
  CreekNormalLoading,
  CreekShowProgress,
  CreekShowSuccess,
  CreekShowError,
  CreekShowInfo,
  CreekShowToast,
}

class CreekLoading {
  //要在main函数初始化loading
  static get initialize => FlutterSmartDialog.init(
      builder: (context, widget){
        return   MediaQuery(
          //设置文字大小不随系统设置改变
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget ?? Container());
      }
  );
  static get observer => FlutterSmartDialog.observer;
  static get myObserver => MyNavigatorObserver();

  static void showLoadings({String title = ""}) {
    if (title.isEmpty) {
      title = S.current.title_Loading_setting_up;
    }
    show(title: title, needMask: true);
  }

  //普通的loading
  static show({
    required String title,
    bool? needMask = false,
  }) {
    SmartDialog.showLoading(
        msg: title,
        usePenetrate: false,
        builder: (BuildContext context) {
          return Container(
            constraints: BoxConstraints(
              maxWidth: CreekScreen.screenW(context) - 150,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              //loading animation
              const CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
              //msg
              Offstage(
                offstage: title.isEmpty,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white)),
                ),
              ),
            ]),
          );
        });
  }

  static dismiss() => SmartDialog.dismiss();

  static setThemeData(ThemeMode mode, bool isPlatformDarkMode) {}
}
