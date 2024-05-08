import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class CreekDialog {


  static showDialog(String msg, {int duration = 2,bool backDismiss=true, required Widget content}) {
    SmartDialog.show(
        // keepSingle:true,
        // usePenetrate:false,
        // clickMaskDismiss:false,
        useSystem:true,
        builder: (_) {
          return WillPopScope(
              onWillPop: () async {
                print("showSmartDialog---------showDialog----");
                 if(!backDismiss){
                   return false;
                 }
                 return true;
              },

              child: content);
        });

  }

  static void showCustomDialog(BuildContext context,Widget widget, {String? tag}) async {
    SmartDialog.show(
        tag: tag,
        bindWidget:context,
        usePenetrate: false,
        clickMaskDismiss: true,
        useAnimation: false,
       // keepSingle: true,
        builder: (_) {
          return widget;
        });
  }
  static void dismiss( {String? tag}) async {
    SmartDialog.dismiss(tag: tag);
  }
  static void show(BuildContext context) async {
    SmartDialog.show(
        bindWidget:context,
        usePenetrate: false,
        clickMaskDismiss: true,
        builder: (_) {
          return Container(
            height: 80,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                SmartDialog.dismiss();
              },
              child: const Text(
                'easy custom dialog',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        });
    //  }

  }

}