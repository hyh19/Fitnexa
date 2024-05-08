part of creek_widgets;
class CreekTextButton extends StatelessWidget {
  ///文本
  final String title;
  ///按钮大小
  final Size? minimumSize;
  ///字体大小
  final double? fontSize;
  ///字体颜色
  final Color? fontColor;
  ///背景颜色
  final Color? defaultColor;
  ///点击颜色
  final Color? tapColor;
  ///设置按钮阴影高度
  final double? elevation;
  ///设置边框颜色
  final Color? sideColor;
  ///设置边框宽度
  final double? sideWidth;
  final Function()? onPressed;


  const CreekTextButton({Key? key,
    required this.title,
    this.minimumSize,
    this.fontSize,
    this.fontColor,
    this.defaultColor,
    this.tapColor,
    this.elevation,
    this.sideColor,
    this.sideWidth,
    this.onPressed
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
      style: ButtonStyle(

        //背景颜色
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          //设置按下时的背景颜色
          if (states.contains(MaterialState.pressed)) {
            return tapColor ?? Colors.white;
          }
          //默认不使用背景颜色
          return defaultColor ?? Colors.white;
        }),
        //设置水波纹颜色
        overlayColor: MaterialStateProperty.all(tapColor ?? Colors.white),
        //设置阴影  不适用于这里的TextButton
        elevation: MaterialStateProperty.all(elevation ?? 0),
        //设置按钮内边距
        // padding: MaterialStateProperty.all(EdgeInsets.all(10)),
        //设置按钮的大小
        minimumSize: MaterialStateProperty.all(minimumSize ?? const Size(40, 40)),
        //设置边框
        side:
        MaterialStateProperty.all(BorderSide(color: sideColor ?? Colors.transparent, width: sideWidth ?? 1)),
        //外边框装饰 会覆盖 side 配置的样式
        // shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: fontColor ?? Colors.black,
          fontSize: fontSize ?? 15
        ),
      ),
      onPressed: () {
        if(onPressed != null){
          onPressed!();
        }

      },
    );
  }
}
