class UpgradeAppDetails {
  String? versionText;
  String? versionIntroduction;
  int? pattern;
  int? frequency;

  UpgradeAppDetails(
      {this.versionText,
        this.versionIntroduction,
        this.pattern,
        this.frequency});

  UpgradeAppDetails.fromJson(Map<String, dynamic> json) {
    versionText = json['versionText'];
    versionIntroduction = json['versionIntroduction'];
    pattern = json['pattern'];
    frequency = json['frequency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['versionText'] = versionText;
    data['versionIntroduction'] = versionIntroduction;
    data['pattern'] = pattern;
    data['frequency'] = frequency;
    return data;
  }

  @override
  String toString() {
    return 'Data{versionText: $versionText, versionIntroduction: $versionIntroduction}';
  }
}

