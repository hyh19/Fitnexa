// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlexaWeatherEntity _$AlexaWeatherEntityFromJson(Map<String, dynamic> json) =>
    AlexaWeatherEntity(
      type: json['type'] as String?,
      token: json['token'] as String?,
      title: json['title'] == null
          ? null
          : AlexaWeatherTitleEntity.fromJson(
              json['title'] as Map<String, dynamic>),
      description: json['description'] as String?,
      currentWeather: json['currentWeather'] as String?,
      currentWeatherIcon: json['currentWeatherIcon'] == null
          ? null
          : AlexaWeatherIconEntity.fromJson(
              json['currentWeatherIcon'] as Map<String, dynamic>),
      highTemperature: json['highTemperature'] == null
          ? null
          : AlexaWeatherTemperatureEntity.fromJson(
              json['highTemperature'] as Map<String, dynamic>),
      lowTemperature: json['lowTemperature'] == null
          ? null
          : AlexaWeatherTemperatureEntity.fromJson(
              json['lowTemperature'] as Map<String, dynamic>),
      weatherForecast: (json['weatherForecast'] as List<dynamic>?)
          ?.map((e) =>
              AlexaWeatherForecastEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlexaWeatherEntityToJson(AlexaWeatherEntity instance) =>
    <String, dynamic>{
      'type': instance.type,
      'token': instance.token,
      'title': instance.title?.toJson(),
      'description': instance.description,
      'currentWeather': instance.currentWeather,
      'currentWeatherIcon': instance.currentWeatherIcon?.toJson(),
      'highTemperature': instance.highTemperature?.toJson(),
      'lowTemperature': instance.lowTemperature?.toJson(),
      'weatherForecast':
          instance.weatherForecast?.map((e) => e.toJson()).toList(),
    };

AlexaWeatherTitleEntity _$AlexaWeatherTitleEntityFromJson(
        Map<String, dynamic> json) =>
    AlexaWeatherTitleEntity(
      subTitle: json['subTitle'] as String?,
      mainTitle: json['mainTitle'] as String?,
    );

Map<String, dynamic> _$AlexaWeatherTitleEntityToJson(
        AlexaWeatherTitleEntity instance) =>
    <String, dynamic>{
      'subTitle': instance.subTitle,
      'mainTitle': instance.mainTitle,
    };

AlexaWeatherIconEntity _$AlexaWeatherIconEntityFromJson(
        Map<String, dynamic> json) =>
    AlexaWeatherIconEntity(
      contentDescription: json['contentDescription'] as String?,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) =>
              AlexaWeatherSourcesEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlexaWeatherIconEntityToJson(
        AlexaWeatherIconEntity instance) =>
    <String, dynamic>{
      'contentDescription': instance.contentDescription,
      'sources': instance.sources?.map((e) => e.toJson()).toList(),
    };

AlexaWeatherSourcesEntity _$AlexaWeatherSourcesEntityFromJson(
        Map<String, dynamic> json) =>
    AlexaWeatherSourcesEntity(
      widthPixels: json['widthPixels'] as int?,
      heightPixels: json['heightPixels'] as int?,
      darkBackgroundUrl: json['darkBackgroundUrl'] as String?,
      url: json['url'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$AlexaWeatherSourcesEntityToJson(
        AlexaWeatherSourcesEntity instance) =>
    <String, dynamic>{
      'widthPixels': instance.widthPixels,
      'heightPixels': instance.heightPixels,
      'darkBackgroundUrl': instance.darkBackgroundUrl,
      'url': instance.url,
      'size': instance.size,
    };

AlexaWeatherTemperatureEntity _$AlexaWeatherTemperatureEntityFromJson(
        Map<String, dynamic> json) =>
    AlexaWeatherTemperatureEntity(
      value: json['value'] as String?,
      arrow: json['arrow'] == null
          ? null
          : AlexaWeatherIconEntity.fromJson(
              json['arrow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlexaWeatherTemperatureEntityToJson(
        AlexaWeatherTemperatureEntity instance) =>
    <String, dynamic>{
      'value': instance.value,
      'arrow': instance.arrow?.toJson(),
    };

AlexaWeatherForecastEntity _$AlexaWeatherForecastEntityFromJson(
        Map<String, dynamic> json) =>
    AlexaWeatherForecastEntity(
      highTemperature: json['highTemperature'] as String?,
      lowTemperature: json['lowTemperature'] as String?,
      date: json['date'] as String?,
      image: json['image'] == null
          ? null
          : AlexaWeatherIconEntity.fromJson(
              json['image'] as Map<String, dynamic>),
      day: json['day'] as String?,
    );

Map<String, dynamic> _$AlexaWeatherForecastEntityToJson(
        AlexaWeatherForecastEntity instance) =>
    <String, dynamic>{
      'highTemperature': instance.highTemperature,
      'lowTemperature': instance.lowTemperature,
      'date': instance.date,
      'image': instance.image?.toJson(),
      'day': instance.day,
    };
