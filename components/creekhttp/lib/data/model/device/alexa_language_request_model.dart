
class AlexaLanguageRequestModel{


  String? countryCode;
  List<int>?langIdList;


  AlexaLanguageRequestModel({this.countryCode, this.langIdList});

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    map['langIdList'] = langIdList;

    map['countryCode'] = countryCode;
    return map;
  }
}

class AlexaLanguageData{
  List<AlexaLanguageModel>? alexaList;
  AlexaLanguageModel? current;

  AlexaLanguageData.fromJson(dynamic json) {
    current = json['current'] != null ? AlexaLanguageModel.fromJson(json['current']) : null;
    if (json['alexaList'] != null) {
      alexaList = [];
      json['alexaList'].forEach((v) {
        alexaList?.add(AlexaLanguageModel.fromJson(v));
      });
    }
  }
}
class AlexaLanguageModel{
  String? alexaCode;
  String? alexaName;
  String? icon;
  int? langId;
  bool? isSelect ;

  AlexaLanguageModel({this.alexaCode, this.alexaName, this.icon,this.langId,this.isSelect});

  factory AlexaLanguageModel.fromJson(Map<String, dynamic> json) {
    return AlexaLanguageModel(
      alexaCode: json["alexaCode"],
      alexaName: json["alexaName"] ,
      icon: json["icon"],
      langId: json["langId"]

    );

  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['alexaCode'] = alexaCode;
    map['alexaName'] = alexaName;
    map['icon'] = icon;
    map['langId'] = langId;
    map['isSelect'] = isSelect;
    return map;
  }
  factory AlexaLanguageModel.fromLocalJson(Map<String, dynamic> json) {
    return AlexaLanguageModel(
        alexaCode: json["alexaCode"],
        alexaName: json["alexaName"] ,
        icon: json["icon"],
        isSelect: json["isSelect"],
        langId: json["langId"]

    );

  }

  @override
  String toString() {
    return 'AlexaLanguageModel{alexaCode: $alexaCode, alexaName: $alexaName, icon: $icon, langId: $langId, isSelect: $isSelect}';
  }
}