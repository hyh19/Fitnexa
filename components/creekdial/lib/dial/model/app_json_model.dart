import '../enum.dart';
import 'clock_position_model.dart';
import 'data_model.dart';

class AppJsonModel {
  AppJsonModel({
    required this.previewRatio,
    required this.backgroundModel,
    required this.dataModel,
    required this.scaleModel,
    required this.colorModel,
    required this.fadeColorModel,
    required this.clockPositionModel,
    required this.planetModel,
    this.json,
  });

  final String? previewRatio;
  final BackgroundModel? backgroundModel;
  final DataModel? dataModel;
  final ScaleModel? scaleModel;
  final ColorModel? colorModel;
  final ColorModel? fadeColorModel;
  final ClockPositionModel? clockPositionModel;
  final PlanetModel? planetModel;
  String? appImage;
  String? appColorImage;
  Map<String, dynamic>? json;

  factory AppJsonModel.fromJson(Map<String, dynamic> json) {
    return AppJsonModel(
        previewRatio: json["preview_ratio"],
        backgroundModel: json["background"] == null
            ? null
            : BackgroundModel.fromJson(json["background"]),
        dataModel:
            json["data"] == null ? null : DataModel.fromJson(json["data"]),
        scaleModel:
            json["scale"] == null ? null : ScaleModel.fromJson(json["scale"]),
        planetModel: json["planet"] == null
            ? null
            : PlanetModel.fromJson(json["planet"]),
        colorModel:
            json["color"] == null ? null : ColorModel.fromJson(json["color"]),
        fadeColorModel: json["fade_color"] == null
            ? null
            : ColorModel.fromJson(json["fade_color"]),
        clockPositionModel: json["clock_position"] == null
            ? null
            : ClockPositionModel.fromJson(json["clock_position"]));
  }

}

class BackgroundModel {
  BackgroundModel({
    required this.widget,
    required this.serialNumber,
    this.images,
  });

  final String widget;
  final int serialNumber;
  List<String>? images;

  factory BackgroundModel.fromJson(Map<String, dynamic> json) {
    return BackgroundModel(
      widget: json["widget"] ?? "",
      serialNumber: json["serial_number"] ?? 0,
      images: json["images"] == null
          ? []
          : List<String>.from(json["images"]!.map((x) => x)),
    );
  }
}

class ColorModel {
  ColorModel({
    required this.onColorList,
    required this.widgetList,
    required this.serialNumberList,
    required this.pictureList,
    required this.pureColor,
    required this.colorPicture,
    this.currentColor,
  });

  final List<int> onColorList;
  final List<String> widgetList;
  final List<int> serialNumberList;
  final List<String> pictureList;
  final List<String> pureColor;
  final List<String> colorPicture;
  String? currentColor;

  factory ColorModel.fromJson(Map<String, dynamic> json) {
    return ColorModel(
      onColorList: json["on_color_list"] == null
          ? []
          : List<int>.from(json["on_color_list"]!.map((x) => x)),
      widgetList: json["widget_list"] == null
          ? []
          : List<String>.from(json["widget_list"]!.map((x) => x)),
      serialNumberList: json["serial_number_list"] == null
          ? []
          : List<int>.from(json["serial_number_list"]!.map((x) => x)),
      pictureList: json["picture_list"] == null
          ? []
          : List<String>.from(json["picture_list"]!.map((x) => x)),
      pureColor: json["pure_color"] == null
          ? []
          : List<String>.from(json["pure_color"]!.map((x) => x)),
      colorPicture: json["color_picture"] == null
          ? []
          : List<String>.from(json["color_picture"]!.map((x) => x)),
      currentColor: json["current_color"],
    );
  }
}

class DataModel {
  DataModel(
      {required this.widget,
      required this.serialNumberList,
      required this.positionList,
      required this.onColor,
      required this.typeList,
      required this.pictureList,
      this.positionModels,
      this.colorTypeModelsMap});

  final String widget;
  final List<int> serialNumberList;
  final List<PositionType> positionList;
  final int? onColor;
  final List<String> typeList;
  final List<String> pictureList;
  List<AppDataPositionModel>? positionModels;
  Map<String, Map<int, List<AppDataTypeModel>>>? colorTypeModelsMap;

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      widget: json["widget"] ?? "",
      serialNumberList: json["serial_number_list"] == null
          ? []
          : List<int>.from(json["serial_number_list"]!.map((x) => x)),
      positionList: json["position_list"] == null
          ? []
          : List<PositionType>.from(
              json["position_list"]!.map((x) => PositionType.getType(x))),
      onColor: json["on_color"],
      typeList: json["type_list"] == null
          ? []
          : List<String>.from(json["type_list"]!.map((x) => x)),
      pictureList: json["picture_list"] == null
          ? []
          : List<String>.from(json["picture_list"]!.map((x) => x)),
    );
  }
}

class ScaleModel {
  ScaleModel(
      {required this.widget,
      required this.serialNumber,
      required this.onColor,
      this.images});

  final String widget;
  final int serialNumber;
  final int? onColor;
  Map<String, List<String>>? images;

  factory ScaleModel.fromJson(Map<String, dynamic> json) {
    return ScaleModel(
      widget: json["widget"] ?? "",
      serialNumber: json["serial_number"] ?? 0,
      onColor: json["on_color"],
    );
  }
}

class PlanetModel {
  PlanetModel({
    required this.widget,
    required this.serialNumber,
    required this.planetSelectList,
    required this.previewSelect,
  });

  final String widget;
  final int serialNumber;
  List<int> planetSelectList;
  int previewSelect;

  List<String>? littleImages;
  List<String>? images;
  List<String>? previewImages;

  factory PlanetModel.fromJson(Map<String, dynamic> json) {
    return PlanetModel(
      widget: json["widget"] ?? "",
      serialNumber: json["serial_number"] ?? 0,
      planetSelectList: json["planet_select_List"] == null
          ? []
          : List<int>.from(json["planet_select_List"]!.map((x) => x)),
      previewSelect: json["preview_select"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "widget": widget,
      "serial_number": serialNumber,
      "planet_select_List": planetSelectList,
      "preview_select": previewSelect,
    };
  }
}

class ClockPositionModel {
  ClockPositionModel({
    required this.widgetList,
    required this.serialNumberList,
    required this.positionNumberList,
    required this.positionList,
    this.appClockPositions,
    this.images,
    this.previewImages,
  });

  final List<String> widgetList;
  final List<int> serialNumberList;
  final List<int> positionNumberList;
  final List<List<List<int>>> positionList;
  List<List<AppClockPositionModel>>? appClockPositions;
  List<String>? images;
  List<String>? previewImages;

  factory ClockPositionModel.fromJson(Map<String, dynamic> json) {
    return ClockPositionModel(
      widgetList: json["widget_list"] == null
          ? []
          : List<String>.from(json["widget_list"]!.map((x) => x)),
      serialNumberList: json["serial_number_list"] == null
          ? []
          : List<int>.from(json["serial_number_list"]!.map((x) => x)),
      positionNumberList: json["position_number_list"] == null
          ? []
          : List<int>.from(json["position_number_list"]!.map((x) => x)),
      positionList: json["position_list"] == null
          ? []
          : List<List<List<int>>>.from(json["position_list"]!.map((x) => x ==
                  null
              ? []
              : List<List<int>>.from(x!.map(
                  (x) => x == null ? [] : List<int>.from(x!.map((x) => x)))))),
    );
  }
}
