import 'dart:typed_data';

import 'package:creekbase/creek_base.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../base/creek_scaffold.dart';
import 'watch_face_install_logic.dart';
import 'watch_face_parse_logic.dart';
import 'watch_face_photo_detail_logic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WatchFacePhotoDetailPage extends GetView<WatchFacePhotoDetailLogic> {
  const WatchFacePhotoDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreekScaffold(
        titleWidget: const _DialSize(),
        appBarBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        action: const [_AddButton()],
        body: const _Container());
  }
}

class _Container extends GetView<WatchFacePhotoDetailLogic> {
  const _Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchFaceInstallLogic>(builder: (logic) {
      return IgnorePointer(
        ignoring: logic.installProgress != null,
        child: Opacity(
          opacity: logic.installProgress == null ? 1 : 0.4,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.symmetric(vertical: 16.w),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12.w)),
            child: Column(
              children: [
                const _Background(),
                SizedBox(height: 24.w),
              ],
            ),
          ),
        ),
      );
    });
  }
}

/// 背景图
class _Background extends GetView<WatchFacePhotoDetailLogic> {
  const _Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.w),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              GetBuilder<WatchFaceParseLogic>(builder: (logic) {
                return ImageListSelectView(
                  height: 210.w,
                  bytes: logic.backgroundImageBytes,
                  selectIndex: logic.photoSelectIndex,
                  onDelete: controller.onBackgroundDelete,
                );
              }),
              _AddPhoto(height: 194.w)
            ],
          ),
        )
      ],
    );
  }
}

class _DialSize extends GetView<WatchFacePhotoDetailLogic> {
  const _DialSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('w:'),
        SizedBox(
          width: 50,
          height: 40,
          child: TextField(
              controller: controller.widthController,
              keyboardType: TextInputType.number),
        ),
        Text('h:'),
        SizedBox(
          width: 50,
          height: 40,
          child: TextField(
              controller: controller.heightController,
              keyboardType: TextInputType.number),
        )
      ],
    );
  }
}

class _AddPhoto extends GetView<WatchFacePhotoDetailLogic> {
  const _AddPhoto({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchFaceParseLogic>(builder: (logic) {
      return GestureDetector(
        onTap: controller.photoMaxNum == logic.backgroundImageBytes.length
            ? null
            : controller.onSelectPhotoPressed,
        child: Opacity(
            opacity: controller.photoMaxNum == logic.backgroundImageBytes.length
                ? 0.4
                : 1,
            child: Container(
              width: height,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 2, color: const Color(0x0015171C).withOpacity(0.2)),
              ),
              child: Text('添加照片',
                  style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal)
                      .copyWith(color: Colors.lightBlue)),
            )),
      );
    });
  }
}

/// 添加按钮
class _AddButton extends StatelessWidget {
  const _AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchFaceInstallLogic>(builder: (logic) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (logic.installProgress != null) {
            return;
          } else {
            logic.onInstallPressed();
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
              color: const Color(0x00708DFF).withOpacity(0.1),
              borderRadius: BorderRadius.circular(24)),
          child: Row(
            children: [
              Visibility(
                visible: logic.installProgress != null,
                child: const _AddProgress(),
              ),
              Visibility(
                  visible: logic.installProgress != null,
                  child: const SizedBox(width: 4)),
              GetBuilder<WatchFaceParseLogic>(builder: (parseLogic) {
                return Text(
                    logic.installProgress != null
                        ? '${logic.installProgress}%'
                        : '安装',
                    style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal)
                        .copyWith(color: Colors.lightBlue));
              })
            ],
          ),
        ),
      );
    });
  }
}

class _AddProgress extends GetView<WatchFaceInstallLogic> {
  const _AddProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: controller.animationController!,
        child: SvgPicture.asset('assets/images/svg/icon_dial_loading.svg',
            width: 24));
  }
}

/// 图片滚动选择页面
class ImageListSelectView extends StatelessWidget {
  const ImageListSelectView(
      {Key? key,
      required this.height,
      required this.bytes,
      required this.selectIndex,
      this.onDelete})
      : super(key: key);

  final double height;

  final List<Uint8List> bytes;

  final int? selectIndex;

  final ValueChanged<int>? onDelete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 6.w, right: 16.w),
          itemCount: bytes.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ImageListSelectItem(
                index: index,
                height: height,
                byte: bytes[index],
                isSelected: selectIndex == index,
                onDelete: onDelete,
              )),
    );
  }
}

/// 图片选择Item
class ImageListSelectItem extends StatelessWidget {
  const ImageListSelectItem(
      {Key? key,
      required this.index,
      required this.height,
      required this.byte,
      required this.isSelected,
      this.onDelete})
      : super(key: key);

  final int index;

  final double height;

  final Uint8List byte;

  final bool isSelected;

  final ValueChanged<int>? onDelete;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 2.w)),
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: ImageItem(height: height - 8.w, imageBytes: byte),
              ))),
      Visibility(
        visible: onDelete != null,
        child: GestureDetector(
            onTap: () {
              onDelete?.call(index);
            },
            child: SvgPicture.asset('assets/images/svg/error_2_0.svg',
                width: 24.w)),
      )
    ]);
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({
    Key? key,
    required this.height,
    required this.imageBytes,
  }) : super(key: key);

  final double height;

  final Uint8List imageBytes;

  @override
  Widget build(BuildContext context) {
    return imageBytes.isEmpty
        ? Container()
        : SizedBox(
            width: height,
            height: height,
            child: ExtendedImage.memory(
              imageBytes,
              fit: BoxFit.fill,
              gaplessPlayback: true,
              shape: BoxShape.rectangle,
            ));
  }
}
