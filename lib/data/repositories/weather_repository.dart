// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather_app/data/datasources/weather_remote_data_source.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repositories/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepository({
    required this.weatherRemoteDataSource,
  });

  @override
  Future<Weather> getWeatherByCountryName(String countryName) async {
    return await weatherRemoteDataSource.getWeatherByCountryName(countryName);
  }
}
