class TimezoneResultModel {
  List<TimezoneData>? list;
  int? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (list != null) {
      map['list'] = list!.map((v) => v.toJson()).toList();
    }
    map['total'] = total;
    return map;
  }

  TimezoneResultModel.fromJson(dynamic json) {
    if (json['list'] != null) {
      list = [];
      json['list'].forEach((v) {
        list!.add(TimezoneData.fromJson(v));
      });
    }
    total = json['total'];
  }

  TimezoneResultModel();
}

class TimezoneData {
  TimezoneData({
    this.country,
    this.city,
    this.utc,
  });

  TimezoneData.fromJson(dynamic json) {
    country = json['country'];
    city = json['city'];
    utc = json['utc'];
  }
  String? country;
  String? city;
  String? utc;
  bool isSelect = false;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['city'] = city;
    map['utc'] = utc;
    return map;
  }

  @override
  String toString() {
    return 'TimeZoneData{countryEn: $country, cityEn: $city, utc: $utc, isSelect: $isSelect}';
  }
}
