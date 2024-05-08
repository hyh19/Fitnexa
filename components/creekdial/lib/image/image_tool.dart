import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:actres/actres.dart';
import 'package:creekdial/byte_array/byte_array.dart';
import 'package:creekdial/compression/compression_tool.dart';
import 'package:image/image.dart' as img;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_clipper/image_clipper.dart';

import 'enum.dart';

class ImageTool {
  ImageTool._();

  /// 图片上色
  static Future<Uint8List?> colorizeImage(
      Uint8List imageData, ui.Color color) async {
    ui.Image image = await decodeImageFromList(imageData);

    ui.PictureRecorder recorder = ui.PictureRecorder();
    ui.Canvas canvas = ui.Canvas(recorder);

    final paint = ui.Paint()..isAntiAlias = true;
    paint.colorFilter = ui.ColorFilter.mode(color, ui.BlendMode.srcIn);

    final width = image.width.toDouble();
    final height = image.height.toDouble();

    canvas.drawImage(image, ui.Offset.zero, paint);
    ui.Picture picture = recorder.endRecording();
    ui.Image coloredImage =
        await picture.toImage(width.toInt(), height.toInt());

    ByteData? byteData =
        await coloredImage.toByteData(format: ui.ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  /// 生成RGB565
  static Future<List<int>?> encodeRGB565(
      String path, ImageCompressionType type) async {
    final image = await getImgImage(path);
    if (image != null) {
      final headerData = _encodeImageHeader(image, ImageFormatAppType.rgb565);
      var imageData = await _imageToRGB565(image);
      switch (type) {
        case ImageCompressionType.none:
          break;
        case ImageCompressionType.lz4:
          imageData = CompressionTool.encode(imageData);
          break;
      }
      List<int> data = headerData + imageData;
      return data;
    }
    return null;
  }

  static Future<List<int>?> encodeActResRGB565(
      String path, ImageCompressionType type) async {
    final image = await getImgImage(path);
    if (image != null) {
      final headerData = _encodeImageHeader(image, ImageFormatAppType.rgb565);
      final result = await Actres().encodeImage(path, 0);
      if (result != null) {
        final imageData = await File(result).readAsBytes();
        List<int> data = headerData + imageData;
        return data;
      }
    }
    return null;
  }

  /// 生成ARGB8888
  static Future<List<int>?> encodeARGB8888(
      String path, ImageCompressionType type) async {
    final image = await getImgImage(path);
    if (image != null) {
      final headerData = _encodeImageHeader(image, ImageFormatAppType.argb8888);
      var imageData = await _imageToARGB8888(image);
      switch (type) {
        case ImageCompressionType.none:
          break;
        case ImageCompressionType.lz4:
          imageData = CompressionTool.encode(imageData);
          break;
      }
      List<int> data = headerData + imageData;
      return data;
    }

    return null;
  }

  static Future<List<int>?> encodeActResARGB8888(
      String path, ImageCompressionType type) async {
    final image = await getImgImage(path);
    if (image != null) {
      final headerData = _encodeImageHeader(image, ImageFormatAppType.argb8888);
      final result = await Actres().encodeImage(path, 0);
      if (result != null) {
        final imageData = await File(result).readAsBytes();
        List<int> data = headerData + imageData;
        return data;
      }
    }

    return null;
  }

  /// 获取图片
  static Future<ui.Image> getUIImage(String imagePath) async {
    /// 获取文件
    final file = File(imagePath);

    /// 获取文件数据
    final fileData = await file.readAsBytes();

    /// 从文件数据解析图片
    final image = decodeImageFromList(fileData);

    return image;
  }

  /// 获取图片
  static Future<img.Image?> getImgImage(String imagePath) async {
    /// 从文件数据解析图片
    final image = await img.decodeImageFile(imagePath);

    return image;
  }

  static Future<Size> getSize(Uint8List fileData) async {
    try {
      /// 从文件数据解析图片
      final image = await decodeImageFromList(fileData);
      final width = image.width;
      final height = image.height;
      return Size(width.toDouble(), height.toDouble());
    } catch (e) {
      return Size.zero;
    }
  }

  /// 调整图片大小
  static Future<Uint8List?> resizeImage(Uint8List imageBytes, Size size,
      {bool isBmp = true}) async {
    final bytes = await ImageClipper()
        .scaleImage(imageBytes, size.width.toInt(), size.height.toInt());
    return bytes;
  }

  /// 调整图片圆角
  static Future<void> copyCrop(String path, double radiusRatio,
      {double? width, double? height, bool isBmp = true}) async {
    var imageData = await File(path).readAsBytes();
    ui.Image uiImage = await decodeImageFromList(imageData);
    if ((width == null && height == null) ||
        (uiImage.width == width && uiImage.height == height)) {
      final radius = uiImage.height * radiusRatio;
      final newPath =
          await ImageClipper().clipImage(path: path, cornerRadius: radius);
      if (isBmp && newPath != null) {
        img.Image? inputImage = await img.decodePngFile(newPath);
        if (inputImage != null) {
          // 创建24位BMP并设置黑底
          var outputImage =
              img.Image(width: inputImage.width, height: inputImage.height);

          // 转换为24位BMP
          for (var y = 0; y < inputImage.height; y++) {
            for (var x = 0; x < inputImage.width; x++) {
              final pixel = inputImage.getPixel(x, y);
              final r = pixel.r.toInt();
              final g = pixel.g.toInt();
              final b = pixel.b.toInt();
              final a = pixel.a.toInt();
              final alphaRatio = a / 255.0;
              final redRatio = r / 255.0;
              final greenRatio = g / 255.0;
              final blueRatio = b / 255.0;

              /// 背景底色
              final backgroundColor = img.ColorRgb8(0, 0, 0);

              final backgroundColorRedRatio = backgroundColor.r / 255;
              final backgroundColorGreenRatio = backgroundColor.g / 255;
              final backgroundColorBlueRatio = backgroundColor.b / 255;

              final rgbRed = ((1 - alphaRatio) * backgroundColorRedRatio +
                      alphaRatio * redRatio) *
                  255;
              final rgbGreen = ((1 - alphaRatio) * backgroundColorGreenRatio +
                      alphaRatio * greenRatio) *
                  255;
              final rgbBlue = ((1 - alphaRatio) * backgroundColorBlueRatio +
                      alphaRatio * blueRatio) *
                  255;

              outputImage.setPixel(
                  x,
                  y,
                  img.ColorRgb8(
                      rgbRed.round(), rgbGreen.round(), rgbBlue.round()));
            }
          }
          await img.encodeBmpFile(newPath, outputImage);
        }
      }
    }
  }

  /// 生成图片头部
  static Uint8List _encodeImageHeader(img.Image image, ImageFormatAppType type) {
    final headerData = Uint8List(4);
    final format = type.value;
    headerData[0] = format;
    const reserved = 0;
    final width = image.width;
    final height = image.height;
    final rwh = (height << 13) | (width << 2) | reserved;
    headerData[1] = (rwh & 0xFF);
    headerData[2] = ((rwh >> 8) & 0xFF);
    headerData[3] = rwh >> 16;
    return headerData;
  }

  /// Image转RGB565
  static Future<Uint8List> _imageToRGB565(img.Image image) async {
    Uint8List rgb565List = Uint8List(image.width * image.height * 2);
    int index = 0;
    for (int y = 0; y < image.height; y++) {
      for (int x = 0; x < image.width; x++) {
        img.Pixel pixel = image.getPixel(x, y);
        int red = pixel.getChannel(img.Channel.red).toInt();
        int green = pixel.getChannel(img.Channel.green).toInt();
        int blue = pixel.getChannel(img.Channel.blue).toInt();
        int rgb565Value =
            ((red & 0xF8) << 8) | ((green & 0xFC) << 3) | ((blue & 0xF8) >> 3);
        rgb565List[index++] = rgb565Value & 0xFF;
        rgb565List[index++] = (rgb565Value >> 8) & 0xFF;
      }
    }
    return rgb565List;
  }

  /// Image转ARGB8888
  static Future<Uint8List> _imageToARGB8888(img.Image image) async {
    List<int> bgraList = [];
    for (int y = 0; y < image.height; y++) {
      for (int x = 0; x < image.width; x++) {
        img.Pixel pixel = image.getPixel(x, y);
        int alpha = 0xFF;
        if (image.hasAlpha) {
          alpha = pixel.a.toInt();
        }
        int red = pixel.r.toInt();
        int green = pixel.g.toInt();
        int blue = pixel.b.toInt();
        bgraList.add(blue);
        bgraList.add(green);
        bgraList.add(red);
        bgraList.add(alpha);
      }
    }
    return Uint8List.fromList(bgraList);
  }

  static int hexToInt(String hex) {
    final hexDigits = hex.startsWith('#') ? hex.substring(1) : hex;
    final hexMask = hexDigits.length <= 6 ? 0xFF000000 : 0;
    final hexValue = int.parse(hexDigits, radix: 16);
    assert(hexValue >= 0 && hexValue <= 0xFFFFFFFF);
    return hexValue | hexMask;
  }
}
