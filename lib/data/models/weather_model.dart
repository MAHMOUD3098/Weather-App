import 'package:weather_app/domain/entities/weather.dart';

class WeatherModel extends Weather {
  const WeatherModel({
    required super.country,
    required super.main,
    required super.description,
    required super.temperature,
    required super.minTemperature,
    required super.maxTemperature,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        country: json['name'],
        main: json['weather'][0]['main'],
        description: json['weather'][0]['description'],
        temperature: json['main']['temp'],
        minTemperature: json['main']['temp_min'],
        maxTemperature: json['main']['temp_max'],
      );
}
