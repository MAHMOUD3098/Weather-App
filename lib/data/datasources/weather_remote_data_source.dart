import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/api/status_code.dart';
import 'package:weather_app/core/error/exceptions.dart';
import 'package:weather_app/core/network/error_message_model.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/data/models/weather_model.dart';

abstract class BaseWeatherRemoteDataSource {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
  Future<WeatherModel> getWeatherOfCurrentLocation(Position currentLocation);
}

class WeatherRemoteDataSource extends BaseWeatherRemoteDataSource {
  @override
  Future<WeatherModel> getWeatherByCountryName(String countryName) async {
    final response = await Dio().get('${AppConstants.baseUrl}?q=$countryName&appid=${AppConstants.apiKey}&units=metric');

    if (response.statusCode == StatusCode.ok) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<WeatherModel> getWeatherOfCurrentLocation(Position currentLocation) async {
    final response = await Dio()
        .get('${AppConstants.baseUrl}?lat=${currentLocation.latitude}&lon=${currentLocation.longitude}&appid=${AppConstants.apiKey}&units=metric');

    if (response.statusCode == StatusCode.ok) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
