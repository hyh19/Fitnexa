class DialFileModel {
  DialFileModel({
    required this.name,
    required this.length,
    required this.data,
  });

  final String name;
  final int length;
  final List<int> data;

  factory DialFileModel.fromJson(Map<String, dynamic> json) {
    return DialFileModel(
      name: json["name"] ?? "",
      length: json["length"] ?? 0,
      data: json["data"] == null
          ? []
          : List<int>.from(json["data"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "length": length,
        "data": data.map((x) => x).toList(),
      };
}
