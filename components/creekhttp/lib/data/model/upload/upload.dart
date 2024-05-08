class UploadResultModel {
  UploadResultModel({
    required this.accessUrl,
    required this.key,
  });

  final String accessUrl;
  final String key;

  factory UploadResultModel.fromJson(Map<String, dynamic> json) {
    return UploadResultModel(
        accessUrl: json["accessUrl"] ?? '', key: json["key"] ?? '');
  }
}
