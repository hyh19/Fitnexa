class AppLogResultModel {
  AppLogResultModel({
    required this.result,
  });

  final String result;

  factory AppLogResultModel.fromJson(Map<String, dynamic> json) {
    return AppLogResultModel(
        result: json["result"] ?? '');
  }

}