import 'package:creekbase/creek_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreekScaffold extends StatefulWidget {
  final Widget? leading; //左侧widget
  final String? title;
  final Widget? titleWidget;
  final bool showTitleEmpty;
  final String? subTitle;
  final Color? appBarBackgroundColor;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final Color? titleColor;
  final Color? subTitleColor;
  final Color? iconColor;
  final Widget? body;
  final double?leadingWidth;
  final PreferredSizeWidget? bottom;
  final List<Widget>? action;
  final GestureTapCallback? cancelBlock;

    CreekScaffold(
      {Key? key,
      this.leading,
      this.title = "",
      this.subTitle,
      this.appBarBackgroundColor,
      this.backgroundColor,
      this.titleWidget,
      this.leadingWidth,
      this.titleColor ,
      this.subTitleColor ,
      this.iconColor ,
      this.resizeToAvoidBottomInset = true,
      this.showTitleEmpty = false,
      this.cancelBlock,
      this.body,
      this.action,
      this.bottom})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreekScaffoldState();
  }
}

class CreekScaffoldState extends State<CreekScaffold> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    PreferredSizeWidget? appbar;

    List<Widget> actions = [];
    actions = (widget.action ?? []).map((e) {
      return Column(
        children: [
          const Expanded(child: SizedBox()),
          e,
          const Expanded(child: SizedBox()),
        ],
      );
    }).toList();

    if (widget.titleWidget !=null || widget.title != "" || widget.showTitleEmpty) {
      appbar = AppBar(
        toolbarHeight: 48,
        centerTitle: true,
        title:widget.titleWidget?? Column(
          children: [
            Text(
              widget.title ?? "",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: widget.titleColor?? const Color(0xFF15171C), fontSize: 18.sp, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal),
            ),
            if (widget.subTitle != null) Text(widget.subTitle!, style: TextStyle(color: widget.subTitleColor??const Color(0xFF15171C), fontSize: 10.sp))
          ],
        ),
        leadingWidth:widget.leadingWidth??(widget.leading==null?55.w:80.w),
        leading: widget.leading ??
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    CancelPicWidget(cancelBlock: widget.cancelBlock,iconColor: widget.iconColor??const Color(0xFF15171C),),
                  ],
                ),
              ],
            ),
        backgroundColor: widget.appBarBackgroundColor ?? const Color(0xFF414141),
        elevation: 0,
        actions: actions ?? [],
        bottom: widget.bottom,
      );
    }
    return GestureDetector(
      child: Scaffold(
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        backgroundColor: widget.backgroundColor ??const Color(0xFF414141),
        appBar: appbar,
        body: widget.body ?? Container(),
      ),
      onTap: () {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
class CancelPicWidget extends StatelessWidget{
  final Color? iconColor;
  final GestureTapCallback? cancelBlock;

   const CancelPicWidget({super.key, this.iconColor, this.cancelBlock});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        'assets/images/svg/chevron_left.svg',
        width: 11.42.w,
        height: 19.99.h,
        color: iconColor??const Color(0xFF15171C),
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {
        if (cancelBlock == null) {
          Navigator.pop(context, "");
        } else {
          cancelBlock!();
        }
      },
    );
  }

}
