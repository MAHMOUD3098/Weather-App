import 'package:flutter/material.dart';
import 'package:weather_app/data/datasources/weather_remote_data_source.dart';
import 'package:weather_app/data/repositories/weather_repository.dart';
import 'package:weather_app/domain/repositories/base_weather_repository.dart';
import 'package:weather_app/domain/usecases/get_weather_by_country_name_usecase.dart';

void main() {
  WeatherRemoteDataSource weatherRemoteDataSource = WeatherRemoteDataSource();
  BaseWeatherRepository baseWeatherRepository = WeatherRepository(weatherRemoteDataSource: weatherRemoteDataSource);
  GetWeatherByCountryNameUseCase(baseWeatherRepository).execute("Egypt");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
