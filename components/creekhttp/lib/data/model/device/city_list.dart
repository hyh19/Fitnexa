class CityResultModel {
  CityResultModel({
    this.list,
    this.total,
  });

  CityResultModel.fromJson(dynamic json) {
    if (json['list'] != null) {
      list = [];
      json['list'].forEach((v) {
        list!.add(CityBaseModel.fromJson(v));
      });
    }
    total = json['total'];
  }

  CityResultModel.fromServiceJson(json) {
    list = [];
    if( json != null){
      json.forEach((v) {
        list?.add(CityBaseModel.fromChildJson(v));
      });
    }
    total=list?.length??0;

  }

  List<CityBaseModel>? list;
  int? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (list != null) {
      map['list'] = list!.map((v) => v.toJson()).toList();
    }
    map['total'] = total;
    return map;
  }


}

class CityBaseModel {
  CityBaseModel({
    this.cityName,
    this.countryName,
    this.lat,
    this.lon,
  });

  CityBaseModel.fromChildJson(dynamic json) {
    cityName = json['address'];
   // cityName = json['displayName'];
    //ianaTimeZone = json['ianaTimeZone'];
    lat = json['latitude'];
    lon = json['longitude'];
  }

  CityBaseModel.fromJson(dynamic json) {
    cityName = json['cityName'];
    countryName = json['countryName'];
    if(json['isLocalWeather']!=null){
      isLocalWeather = json['isLocalWeather'];
    }

    lat = json['lat'];
    lon = json['lon'];
  }
  String? cityName;
  String? countryName;
  num? lat;
  num? lon;
  num? currentTemperature;
  String? icon;
  num? maxTemperature;
  num? minTemperature;
  int? positioning = 0;
  bool isSelect = false;
  bool isLocalWeather = false;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cityName'] = cityName;
    map['countryName'] = countryName;
    map['lat'] = lat;
    map['lon'] = lon;
    map['positioning'] = positioning;
    map['isLocalWeather'] = isLocalWeather;
    return map;
  }


  Map<String, dynamic> toServiceJson() {
    final map = <String, dynamic>{};
    map['cityName'] = cityName;
    map['countryName'] = countryName;
    map['lat'] = lat;
    map['lon'] = lon;
    map['positioning'] = positioning;
    return map;
  }

  @override
  String toString() {
    return 'CityBaseModel{cityName: $cityName, countryName: $countryName, lat: $lat, lon: $lon, currentTemperature: $currentTemperature, icon: $icon, maxTemperature: $maxTemperature, minTemperature: $minTemperature, positioning: $positioning, isSelect: $isSelect, isLocalWeather: $isLocalWeather}';
  }
}
