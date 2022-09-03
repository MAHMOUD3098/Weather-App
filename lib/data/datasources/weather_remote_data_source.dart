import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/error/exceptions.dart';
import 'package:weather_app/core/network/error_message_model.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/data/models/weather_model.dart';

abstract class BaseWeatherRemoteDataSource {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
}

class WeatherRemoteDataSource implements BaseWeatherRemoteDataSource {
  @override
  Future<WeatherModel> getWeatherByCountryName(String countryName) async {
    final response = await Dio().get('${AppConstants.baseUrl}?q=$countryName&appid=${AppConstants.apiKey}&units=metric');

    if (response.statusCode == 200) {
      debugPrint(response.data['weather']);
      return WeatherModel.fromJson(response.data);
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
