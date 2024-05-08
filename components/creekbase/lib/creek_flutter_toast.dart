import 'package:creekbase/creek_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import 'generated/l10n.dart';

class CreekToast {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static bool _showWaitDialog = false;

  static void showFailToast({String tip = ""}) {
    showToast("${S.current.Setting_failed_please_try_again}$tip");
  }

  static void showSettingFailToast({String tip = ""}) {
    showToast("${S.current.oops_something_went_wrong}$tip");
  }

  static void showUnConnectTipToast() {
    showToast(/*"设备未连接，请连接后重试"*/ S.current.Device_not_connected_please_connect_and_try_again);
  }

// 水平排布的吐司
  static void showHorizontalToast(String msg, {int duration = 2, Widget? icon, String? text}) {
    SmartDialog.showToast(
      msg,
      alignment: Alignment.center,
      displayTime: Duration(seconds: duration),
      maskColor: Colors.transparent,
      builder: (context) {
        return Container(
          constraints: BoxConstraints(
            maxWidth: CreekScreen.screenW(context) - 150,
          ),
          padding: EdgeInsets.only(top: 12.w, left: 12.w, right: 16.w, bottom: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.w),
            color: Colors.black,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon!,
              SizedBox(width: 8.w),
              Text(msg, style: const TextStyle(color: Colors.white))
            ],
          ),
        );
      },
    );
  }

  // icon与文字垂直排布
  static void showToastCol(String msg, {int duration = 2, Widget? icon}) {
    SmartDialog.showToast(msg,
        alignment: Alignment.center,
        usePenetrate: false,
        maskColor: Colors.transparent,
        displayTime: Duration(seconds: duration), builder: (BuildContext context) {
      return Container(
          constraints: BoxConstraints(
            maxWidth: 200.w,
          ),
          margin: EdgeInsets.all(16.w),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.w),
          // margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16.w),
          ),
          child: icon == null
              ? Text(msg, style: const TextStyle(color: Colors.white))
              : Column(
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  // textBaseline: TextBaseline.alphabetic,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    icon,
                    SizedBox(
                      height: 24.w,
                    ),
                    Container(
                        constraints: BoxConstraints(
                          maxWidth: CreekScreen.screenW(context) - 150,
                        ),
                        child: Text(msg,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white))),
                  ],
                ));
    });
  }

  static void showToast(String msg, {int duration = 2, Widget? icon}) {
    SmartDialog.showToast(msg,
        alignment: Alignment.center,
        usePenetrate: false,
        maskColor: Colors.transparent,
        displayTime: Duration(seconds: duration), builder: (BuildContext context) {
      return Container(
          constraints: BoxConstraints(
            maxWidth: CreekScreen.screenW(context) - 150,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(24),
          ),
          child: icon == null
              ? Text(msg, style: const TextStyle(color: Colors.white))
              : Row(
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  // textBaseline: TextBaseline.alphabetic,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    icon,
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                        constraints: BoxConstraints(
                          maxWidth: CreekScreen.screenW(context) - 150,
                        ),
                        child: Text(msg,
                            textAlign: TextAlign.start,
                            style: const TextStyle(color: Colors.white))),
                  ],
                ));
    });
  }

  static void showLoadFail() {
    showToast(S.current.failed_to_load, duration: 1);
  }

  static void hideWaitDialog() {
    if (!_showWaitDialog) {
      return;
    }
    _showWaitDialog = false;
    try {
      BuildContext context = navigatorKey.currentState!.overlay!.context;
      Navigator.pop(context);
    } catch (e) {
      // Log.d(e.toString());
    }
  }

  static void showWaitDialog() {
    if (_showWaitDialog) {
      return;
    }
    _showWaitDialog = true;
    BuildContext context = navigatorKey.currentState!.overlay!.context;
    showDialog<void>(
        context: context, //BuildContext对象
        barrierDismissible: false,
        builder: (BuildContext context) {
          return _loadingDialog("正在上传");
        });
  }

  static Widget _loadingDialog(String text) {
    return Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: Center(
        //保证控件居中效果
        child: SizedBox(
          width: 120.0,
          height: 120.0,
          child: Container(
            decoration: const ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Text(
                    text.isEmpty ? "" : text,
                    style: const TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
