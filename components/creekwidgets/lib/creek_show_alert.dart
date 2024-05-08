part of creek_widgets;

class CreekShowAlert {
  /// 底部弹出2个选项框
  showBottomAlert(BuildContext context, Function(String) callback, String title, List<String>? actions, {String? cancel}) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text(title), // 标题
            actions: actions?.map((e) {
              return CupertinoActionSheetAction(
                onPressed: (() {
                  callback(e);
                }),
                child: Text(e),
              );
            }).toList(), // 选项
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              child: Text(cancel ?? S.current.cancel),
            ), // 取消按钮
          );
        });
  }

  /// 中间弹出提示框
  showCenterTipsAlter(BuildContext context, Function(String) callback, String title, String desText, {String? cancel, String? confirm}) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(desText),
            actions: [
              CupertinoDialogAction(
                  child: Text(cancel ?? S.current.cancel),
                  onPressed: () {
                    Navigator.of(context).pop();
                    callback(cancel ?? S.current.cancel);
                  }),
              CupertinoDialogAction(
                  child: Text(confirm ?? S.current.confirm),
                  onPressed: () {
                    Navigator.of(context).pop();
                    callback(confirm ?? S.current.confirm);
                  })
            ],
          );
        });
  }

  showCenterCusterAlter(BuildContext context, Function(String) callback, String title, Widget content, {String? cancel, String? confirm}) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            // title: Text(title),
            content: content,
            // actions: [
            //   CupertinoDialogAction(
            //       child: Text(cancel ?? S.current.cancel),
            //       onPressed: () {
            //         Navigator.of(context).pop();
            //       }),
            //   CupertinoDialogAction(
            //       child: Text(confirm ?? S.current.confirm),
            //       onPressed: () {
            //         callback(confirm ?? S.current.confirm);
            //       })
            // ],
          );
        });
  }

  //底部弹出自定义widget
  showBottomSheet(BuildContext context, Widget awidget, double screenHeight, Color backGroundColor,{bool enableDrag = true}) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        isDismissible: false,
        enableDrag: enableDrag,
        builder: (context) {
          return Container(
            constraints: BoxConstraints(
                minWidth: CreekScreen.getInstance().screenHeight,
                maxWidth: CreekScreen.getInstance().screenHeight,
                minHeight: screenHeight,
                maxHeight: screenHeight),
            decoration: BoxDecoration(color: backGroundColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(24.w), topRight: Radius.circular(24.w))),
            child: awidget,
          );
        });
  }

  showBottomSheets(BuildContext context, Widget awidget, double screenHeight, Color backGroundColor) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        enableDrag: false,
        isDismissible: false,
        builder: (context) {
          return Container(
            constraints: BoxConstraints(maxHeight: screenHeight),
            decoration: BoxDecoration(color: backGroundColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(12.w), topRight: Radius.circular(12.w))),
            child: awidget,
          );
        });
  }

  ///底部弹出自定义widget 自定义高度
  /// [context] 上下文
  /// [child] 里面的子组件
  /// [isDismissible] 外部是否可以点击 默认是true
  /// [enableDrag] 是否可以拖动
  /// [title] 标题
  /// [isLeftTitle]是否居中
  /// [useRootNavigator ] 是否使用跟路由
  /// [maxHeight] 最小0最大1 取之间数字 小于0.5按0.5算 大于1 按1算
  void showBottomDialog(
      {required context,
      required child,
      isDismissible = true,
      enableDrag = true,
      useRootNavigator = false,
      title,
      isScrollOver = false,
      isLeftTitle = false,
      showRightTopClose = false,
      showBottomClose = true,
      Color? backgroundColor,
      maxHeight = 0.5}) {
    showModalBottomSheet(
      context: context,
      //背景颜色(下半部弹出的颜色)
      backgroundColor: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      //上半部分的mask颜色
      barrierColor: backgroundColor ?? Colors.black54,
// 如果设定高度小于0.5 是flase默认最大半屏 ,大于0.5按设定高度来
      isScrollControlled: maxHeight > 0.5,
      //外部是否可以点击
      isDismissible: isDismissible ?? true,
      //是否可以拖动
      enableDrag: enableDrag ?? true,
      //是否用根路由
      useRootNavigator: useRootNavigator ?? false,
      //顶部的圆角矩形
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.w), topRight: Radius.circular(15.w)),
      ),

      builder: (context) {
        //返回一个SingleChildScrollView 设定他永不滚动 实现自适应高度
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            ///根据设计图设置他的padding
            padding: EdgeInsets.all(18.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //如果有标题或者有右上角的 X就展示这个组件
                if (title != null || showRightTopClose) _buildHead(title, isLeftTitle, showRightTopClose, context),

                ///如果最大宽度小于0.5自适应 否则强制设置最大高度
                if (maxHeight <= 0.5)
                  child
                else
                  SizedBox(
                    height: double.infinity * (maxHeight >= 0.87 ? 0.87 : maxHeight),
                    child: child,
                  ),

                ///是否展示下方的取消按钮
                if (showBottomClose)
                  SizedBox(
                    width: double.infinity,
                    child: comMaterialButton(context, onPressed: () => Navigator.pop(context), buttonName: "取消"),
                  )
              ],
            ),
          ),
        );
      },
    );
  }

  Stack _buildHead(title, isLeftTitle, showRightTopClose, BuildContext context) {
    return Stack(
      children: [
        if (title != null)
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.w),
            margin: EdgeInsets.only(bottom: 18.w),
            child: Text(
              title ?? "",
              textAlign: isLeftTitle ? TextAlign.start : TextAlign.center,
            ),
          ),
        if (showRightTopClose)
          Positioned(
              right: 0,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: EdgeInsets.all(8.w),
                  child: const Icon(Icons.close_rounded, size: 25, color: Color(0xFF1F71FF)),
                ),
              ))
      ],
    );
  }

  Padding comMaterialButton(BuildContext context, {required buttonName, onPressed, padding}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: MaterialButton(
        color: Theme.of(context).textTheme.button?.color,
        height: 44.w,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        onPressed: () {
          if (onPressed != null) {
            onPressed();
          }
        },
        child: Text(
          buttonName ?? "",
          style: TextStyle(color: Theme.of(context).textTheme.subtitle2?.color),
        ),
      ),
    );
  }
}
