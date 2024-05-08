class AppUpdateModel {
  AppUpdateModel({
    this.frequency,
    this.pattern,
    this.versionIntroduction,
    this.versionText,
  });

  AppUpdateModel.fromJson(dynamic json) {
    frequency = json['frequency'];
    pattern = json['pattern'];
    versionIntroduction = json['versionIntroduction'];
    versionText = json['versionText'];
  }
  String? frequency;
  String? pattern;
  String? versionIntroduction;
  String? versionText;
  AppUpdateModel copyWith({
    String? frequency,
    String? pattern,
    String? versionIntroduction,
    String? versionText,
  }) =>
      AppUpdateModel(
        frequency: frequency ?? this.frequency,
        pattern: pattern ?? this.pattern,
        versionIntroduction: versionIntroduction ?? this.versionIntroduction,
        versionText: versionText ?? this.versionText,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['frequency'] = frequency;
    map['pattern'] = pattern;
    map['versionIntroduction'] = versionIntroduction;
    map['versionText'] = versionText;
    return map;
  }
}
