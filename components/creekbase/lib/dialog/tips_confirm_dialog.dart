import 'package:creekbase/creek_base.dart';
import 'package:creekbase/generated/l10n.dart';

import 'package:flutter/material.dart';


typedef TapCallback = void Function();
typedef ActionCallBack<T> = void Function(T value);
typedef OnCancelListener = Function();
typedef OnConfirmListener = Function();

/// @desc 提示框
class TipsConfirmDialog extends StatelessWidget {

  final String? title;
  ///弹窗内容
  final String message;
  final TextStyle? contentStyle;
  final TextStyle? titleStyle;
  ///是否竖直显示
  final bool showActionColumn;
   List<String>? actions;
    List<TextStyle>? styles;
  final ActionCallBack? clickAction;
  final bool? isCustomizeBack;
  final double? actionHeight;
  TipsConfirmDialog({
    required this.message,
    this.title,
    this.contentStyle,
    this.titleStyle,
    this.showActionColumn = false,
     this.actions,
    this.styles,
    this.clickAction,
    this.isCustomizeBack,
    this.actionHeight,
  });

  @override
  Widget build(BuildContext context) {
    actions ??= [S.current.cancel, S.current.confirm];

     styles ??= [TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal,fontFamily: "MiSans_VF.ttf").copyWith(color: Color(0xff708DFF),),
      TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal,fontFamily: "MiSans_VF.ttf").copyWith(
            color: Color(0xff708DFF),
          )
        ];
    List<Widget> buttons = [];
    for (int i = 0; i < (actions?.length??0); i++) {
      buttons.add(Expanded(child: AlertAction(
        text: actions![i],
        style: styles![i],
        isCustomizeBack: isCustomizeBack ?? false,
        onPressed: () {
          if (clickAction != null) {
            clickAction?.call(actions![i]);
          }
        },
      )));
        if(showActionColumn){
          buttons.add(Divider(
            color: const Color(0xFFE7E8EA),
            height: 1.w,
          ));
        }else{
          buttons.add(VerticalDivider(
            color: const Color(0xFFE7E8EA),
            width: 1.w,
          ));
        }
    }
    if ( buttons.isNotEmpty) {
      buttons.removeLast();
    }

    return Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: Center(
        //保证控件居中效果
        child: Container(
          constraints: BoxConstraints(
            maxWidth: CreekScreen.getInstance().screenWidth * 0.8,
            minWidth: CreekScreen.getInstance().screenWidth * 0.8,
          ),
          decoration: ShapeDecoration(
            color: Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.w),
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 24.w)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  (title??"").isNotEmpty? title!: message,
                  style:titleStyle?? TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal,fontFamily: "MiSans_VF.ttf",color:  const Color(0xFF15171C)),
                ),
              ),
              (title??"").isNotEmpty
                  ? Padding(
                      padding: EdgeInsets.only(
                          left: 20.w,
                          right: 20.w,
                          top: 10.w),
                      child: Text(
                        message,
                        softWrap: true,
                        style:contentStyle?? TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal,fontFamily: "MiSans_VF.ttf",color:   const Color(0xFF15171C).withOpacity(0.8)),
                      ),
                    )
                  :  const SizedBox(),
              Padding(padding: EdgeInsets.only(top: 24.w)),
              Visibility(
                visible: (actions??[]).isNotEmpty,
                child: Divider(
                  color: const Color(0xFFE7E8EA),
                  height: 1.w,
                ),
              ),
        SizedBox(
          height: showActionColumn?92:actionHeight??48,
          child: showActionColumn?Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: buttons)
              :Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: buttons),),
            ],
          ),
        ),
      ),
    );
  }




}
class AlertAction extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final TextStyle? style;
  final double actionHeight;
  final bool isCustomizeBack;

  const AlertAction({
    Key? key,
    this.onPressed,
    required this.text,
    this.style,
    this.actionHeight = 48.0,
    this.isCustomizeBack = false,
  }) : super(key: key);

  factory AlertAction.cancel({required String text}) {
    return AlertAction(
      text: text,
      style: TextStyle(color:const Color(0xFFE7E8EA)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      child: Container(
        height: actionHeight,
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: const Color(0xFF708DFF), fontSize: 16.sp).merge(style),
        ),
      ),
      onTap: () {
        if (!isCustomizeBack) {
          Navigator.pop(context, text);
        }
        if (onPressed != null) {
          onPressed!();
        }
      },
    );
  }
}
