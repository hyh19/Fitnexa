import 'dart:typed_data';

import 'package:creekdial/dial/enum.dart';

class AppDataPositionModel {
  AppDataPositionModel({
    required this.widget,
    required this.serialNumber,
    required this.position,
  });

  final String widget;
  final int serialNumber;
  final PositionType position;
  AppDataTypeModel? typeModel;
  Uint8List? iconBytes;
}

class AppDataTypeModel {
  AppDataTypeModel({
    required this.type,
    required this.picture,
    required this.image,
  });

  final String type;
  final String picture;
  final String image;
  int? x;
  int? y;
  String? color;
}
