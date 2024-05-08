class DialJsonHeadModel {
  DialJsonHeadModel({
    required this.frameVersion,
    required this.dialVersion,
    required this.name,
    required this.preview,
    required this.screedPreview,
    required this.dialType,
    required this.resolutionRatio,
    required this.platform,
    required this.size,
    required this.describeName,
    this.previewImagePath,
    this.appPreviewImagePath,
  });

  final int frameVersion;
  final int dialVersion;
  final String name;
  final String preview;
  final String screedPreview;
  final int dialType;
  final String resolutionRatio;
  final String platform;
  final int size;
  final String describeName;
  String? previewImagePath;
  String? appPreviewImagePath;

  factory DialJsonHeadModel.fromJson(Map<String, dynamic> json) {
    return DialJsonHeadModel(
      frameVersion: json["frame_version"] ?? 0,
      dialVersion: json["dial_version"] ?? 0,
      name: json["name"] ?? "",
      preview: json["preview"] ?? "",
      screedPreview: json["screed_preview"] ?? "",
      dialType: json["dial_type"] ?? 0,
      resolutionRatio: json["resolution_ratio"] ?? "",
      platform: json["platform"] ?? "",
      size: json["size"] ?? 0,
      describeName: json["describe_name"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> dic = {
      "frame_version": frameVersion,
      "dial_version": dialVersion,
      "name": name,
      "dial_type": dialType,
      "resolution_ratio": resolutionRatio,
      "platform": platform,
      "size": size,
      "describe_name": describeName,
    };
    if (preview.isNotEmpty) {
      dic["preview"] = preview;
    }
    if (screedPreview.isNotEmpty) {
      dic["screed_preview"] = screedPreview;
    }
    return dic;
  }
}
