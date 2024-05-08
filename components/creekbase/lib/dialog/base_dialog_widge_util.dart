import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'tips_confirm_dialog.dart';

/// @desc 弹窗 widget 统一创建类

class CommonDialogWidgetUtil {
  ///对话框提示显示
  ///[id] 同一对话框唯一标识
  static Widget createTipWidget(
    BuildContext context,
     {
     required  String contentMessage,
    String? id,
    String title = "",
    bool canceled = true,
         TextStyle? contentStyle,
         TextStyle? titleStyle,
        ///是否竖直显示
         bool? showActionColumn,
        List<String>? actions,
        List<TextStyle>? styles,
         ActionCallBack? clickAction,
         bool? isCustomizeBack,
         double? actionHeight,
      }) {
    return WillPopScope(
        key: ValueKey(id ?? generateId("createTipWidget$contentMessage")),
        child: TipsConfirmDialog(
          message: contentMessage,
          title: title,
          contentStyle:contentStyle,
          titleStyle:titleStyle,
          showActionColumn: showActionColumn?? false,
          actions:actions,
          styles:styles,
          clickAction:clickAction,
          isCustomizeBack:isCustomizeBack,
          actionHeight:actionHeight,
        ),
        onWillPop: () async => canceled);
  }
  static Widget createCustomTipWidget(
      {  bool canceled = true,required BuildContext context,
        required String id,
        required Widget content,}) {
    return WillPopScope(
        key: ValueKey(id ),
        child: content,
        onWillPop: () async => canceled);
  }
  ///生成对话框 id
  static String generateId(String txt) {
    assert(txt != null);
    return generateMd5(txt);
  }

  /// md5 加密
  static String generateMd5(String data) {
    var content = const Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    // 这里其实就是 digest.toString()
    return hex.encode(digest.bytes);
  }
}
