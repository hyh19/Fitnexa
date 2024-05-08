/// macId : ""

class UpLoadUnBindRequestMode {
  UpLoadUnBindRequestMode({
    this.macId,
  });

  UpLoadUnBindRequestMode.fromJson(dynamic json) {
    macId = json['macId'];
  }
  String? macId;
  UpLoadUnBindRequestMode copyWith({
    String? macId,
  }) =>
      UpLoadUnBindRequestMode(
        macId: macId ?? this.macId,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['macId'] = macId;
    return map;
  }
}
