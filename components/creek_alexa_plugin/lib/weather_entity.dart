import 'package:json_annotation/json_annotation.dart';

part 'weather_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class AlexaWeatherEntity {
  //类型
  String? type;
  String? token;

  //标题
  AlexaWeatherTitleEntity? title;

  //当天天气状况描述
  String? description;

  //现在气温 如 "49Â°"  显示乱码  应该是需要转utf8  而且应该是华氏度Fahrenheit  如需要 则转摄氏度Celsius
  String? currentWeather;

  //当前天气的icon图
  AlexaWeatherIconEntity? currentWeatherIcon;

  //最高温度
  AlexaWeatherTemperatureEntity? highTemperature;

  //最低温度
  AlexaWeatherTemperatureEntity? lowTemperature;

  //未来七天天气预报
  List<AlexaWeatherForecastEntity>? weatherForecast;

  AlexaWeatherEntity({
    this.type,
    this.token,
    this.title,
    this.description,
    this.currentWeather,
    this.currentWeatherIcon,
    this.highTemperature,
    this.lowTemperature,
    this.weatherForecast,
  });

  factory AlexaWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$AlexaWeatherEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlexaWeatherEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AlexaWeatherTitleEntity {
  //时间
  String? subTitle;

  //城市
  String? mainTitle;

  AlexaWeatherTitleEntity({this.subTitle, this.mainTitle});

  factory AlexaWeatherTitleEntity.fromJson(Map<String, dynamic> json) =>
      _$AlexaWeatherTitleEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlexaWeatherTitleEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AlexaWeatherIconEntity {
  //天气情况名称  如 Sunny
  String? contentDescription;

  //不同像素的天气icon 有四个等级  SMALL MEDIUM LARGE X-LARGE
  List<AlexaWeatherSourcesEntity>? sources;

  AlexaWeatherIconEntity({this.contentDescription, this.sources});

  factory AlexaWeatherIconEntity.fromJson(Map<String, dynamic> json) =>
      _$AlexaWeatherIconEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlexaWeatherIconEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AlexaWeatherSourcesEntity {
  //宽像素
  int? widthPixels;

  //高像素
  int? heightPixels;

  //暗色调下的icon url
  String? darkBackgroundUrl;

  //明色调下的icon url
  String? url;

  //icon 等级 SMALL MEDIUM LARGE X-LARGE
  String? size;

  AlexaWeatherSourcesEntity(
      {this.widthPixels,
      this.heightPixels,
      this.darkBackgroundUrl,
      this.url,
      this.size});

  factory AlexaWeatherSourcesEntity.fromJson(Map<String, dynamic> json) =>
      _$AlexaWeatherSourcesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlexaWeatherSourcesEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AlexaWeatherTemperatureEntity {
  //温度  如 "49Â°"  显示乱码  应该是需要转utf8  而且应该是华氏度Fahrenheit  如需要 则转摄氏度Celsius
  String? value;

  //气温up 或者down 的 icon
  AlexaWeatherIconEntity? arrow;

  AlexaWeatherTemperatureEntity({this.value, this.arrow});

  factory AlexaWeatherTemperatureEntity.fromJson(Map<String, dynamic> json) =>
      _$AlexaWeatherTemperatureEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlexaWeatherTemperatureEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AlexaWeatherForecastEntity {
  //最高温
  String? highTemperature;

  //最低温
  String? lowTemperature;

  //时间日期 如 "Nov 19"
  String? date;

  //天气的icon
  AlexaWeatherIconEntity? image;

  //周几
  String? day;

  AlexaWeatherForecastEntity(
      {this.highTemperature,
      this.lowTemperature,
      this.date,
      this.image,
      this.day});

  factory AlexaWeatherForecastEntity.fromJson(Map<String, dynamic> json) =>
      _$AlexaWeatherForecastEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AlexaWeatherForecastEntityToJson(this);
}
