
import 'package:creekbase/creek_base.dart';
import 'package:flutter/material.dart';


class Searchview extends StatefulWidget {
  Widget? leftWidget; //左边widget
  Widget? rightWidget; //右边widget
  String? hintText; //提示文字
  Function? input; //输出
  Color? color;
  TextEditingController? textcontroller = TextEditingController();
  Searchview(
      {this.hintText = "请输入用户",
      this.input,
        this.textcontroller,
      this.leftWidget,
      this.rightWidget,
        this.color
      });

  @override
  SearchviewState createState() => SearchviewState();
}



class SearchviewState extends State<Searchview> {

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   // FocusScope.of(context).unfocus();
  // }

  @override
  Widget build(BuildContext context) {
    widget.leftWidget ??= Container();
    widget.rightWidget ??= Container();

    // TODO: implement build
    return Container(
      width: CreekScreen.getInstance().screenWidth,
      height: 56,
      child: Row(
        children: [
          widget.leftWidget ?? Container(),
          Expanded(
              child: Container(
            height: 40,
            decoration: BoxDecoration(
                color:  widget.color ?? Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 30.w,
                  right: 30.w),
              child: TextField(
                autofocus: false,
                controller: widget.textcontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Image.asset("assets/images/home_search_icon.png",
                        width: 16.w,
                        height: 16.w),
                  ),
                  labelStyle: TextStyle(
                      color: Color(0xFF101A2E),
                      fontSize: 16.sp),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                      color: Color(0xFF8B92A1),
                      fontSize: 14.sp),
                  contentPadding: const EdgeInsets.only(bottom: 8),
                ),
                onChanged: (e) {
                  if (widget.input != null) {
                    widget.input!(e);
                  }
                },
              ),
            ),
          )),
          widget.rightWidget ?? Container(),
        ],
      ),
    );
  }
}
