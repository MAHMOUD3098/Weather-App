import 'package:weather_app/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCountryName(String countryName);
}
