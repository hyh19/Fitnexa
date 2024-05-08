class CountryResultModel {
  CountryResultModel({
    required this.list,
    required this.total,
  });

  final List<ListElement> list;
  final int? total;

  factory CountryResultModel.fromJson(Map<String, dynamic> json){
    return CountryResultModel(
      list: json["list"] == null ? [] : List<ListElement>.from(json["list"]!.map((x) => ListElement.fromJson(x))),
      total: json["total"],
    );
  }

  Map<String, dynamic> toJson() => {
    "list": list.map((x) => x.toJson()).toList(),
    "total": total,
  };

}

class ListElement {
  ListElement({
    required this.code,
    required this.countryEn,
  });

  final String? code;
  final String? countryEn;

  factory ListElement.fromJson(Map<String, dynamic> json){
    return ListElement(
      code: json["code"],
      countryEn: json["countryEn"],
    );
  }

  Map<String, dynamic> toJson() => {
    "code": code,
    "countryEn": countryEn,
  };

}
