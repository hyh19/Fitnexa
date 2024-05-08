import 'package:creekhttp/data/model/device/city_list.dart';

class WeatherCollectRequestModel{
  WeatherCollectRequestModel({
    required this.forecastDaily,
    required this.forecastHourly,
    required this.weatherDataVOList,
    required this.lang,
    required this.units,
  });

  final String forecastDaily;
  final String forecastHourly;
  final List<CityBaseModel> weatherDataVOList;
  final String? lang;
  final String? units;


  factory WeatherCollectRequestModel.fromJson(Map<String, dynamic> json) {
    return WeatherCollectRequestModel(
      weatherDataVOList:
      json["weatherDataVOList"] == null ? [] : List<CityBaseModel>.from(json["weatherDataVOList"]!.map((x) => CityBaseModel.fromJson(x))),
      lang: json["lang"],
      units: json["units"],
      forecastDaily: json["forecastDaily"],
      forecastHourly: json["forecastHourly"],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["weatherDataVOList"]= weatherDataVOList.map((x) => x.toServiceJson()).toList();
    map["lang"]= lang;
    map["units"]= units;
    map["forecastDaily"]=forecastDaily;
    map["forecastHourly"]=forecastHourly;
    return map;
  }

}


