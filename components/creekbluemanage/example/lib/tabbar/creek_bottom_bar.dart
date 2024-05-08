import 'package:flutter/material.dart';



///作者  : bean
///时间  : 2022/1/6

class CreekBottomBar extends StatelessWidget {
  const CreekBottomBar(
      {Key? key,
      this.selectedIndex = 0,
      this.iconSize = 24,
      this.backgroundColor,
      this.showElevation = true,
      this.animationDuration = const Duration(milliseconds: 270),
      required this.items,
      required this.onItemSelected,
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
      this.itemCornerRadius = 50,
      this.containerHeight = 56,
      this.curve = Curves.linear,
      this.singleIcon = false})
      : super(key: key);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;
  final bool singleIcon;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            )
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((e) {
              var index = items.indexOf(e);
              return GestureDetector(
                onTap: () => onItemSelected(index),
                child: _ItemWidget(
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  item: e,
                  backgroundColor: bgColor,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  const _ItemWidget(
      {Key? key,
      required this.iconSize,
      required this.isSelected,
      required this.item,
      required this.backgroundColor,
      required this.itemCornerRadius,
      required this.animationDuration,
      this.curve = Curves.linear,
      this.singIcon = false})
      : super(key: key);

  final double iconSize;
  final bool isSelected;
  final BottomBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;
  final bool singIcon;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        height: double.maxFinite,
        duration: animationDuration,
        curve: curve,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(itemCornerRadius),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIcon(isSelected, item),
                    SizedBox(
                      height: 2,
                    ),
                    if (!item.singleIcon)
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: DefaultTextStyle.merge(
                            child: item.title,
                            style: _textStyle(isSelected, item)),
                      ))
                  ],
                ),
              )),
        ),
      ),
    );
  }

  TextStyle _textStyle(bool isSelected, BottomBarItem item) {
    if (isSelected) {
      return TextStyle(
          color: item.activeColor, fontSize: 12);
    } else {
      return TextStyle(
          color: item.inactiveColor,
          fontSize: 12);
    }
  }

  Widget _buildIcon(bool isSelected, BottomBarItem item) {
    if (isSelected) {
      return Expanded(child: Stack(children: [
        item.activeIcon,
        // Lottie.asset("assets/home.json",fit: BoxFit.fill),
          (){
            if(item.lottie != null){
             return item.lottie!;
            }else{
              return Container();
            }
          }(),
      ],));
    } else {
      return Expanded(child: item.icon);
    }
  }
}

class BottomBarItem {
  BottomBarItem(
      {required this.icon,
      required this.activeIcon,
        this.lottie,
      required this.title,
      this.activeColor = const Color(0xFF12B770),
      this.inactiveColor,
      this.textAlign = TextAlign.center,
      this.singleIcon = false});

  final Widget icon;
  final Widget activeIcon;
  final Widget? lottie;
  final Widget title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign textAlign;
  final bool singleIcon;
}
