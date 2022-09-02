// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repositories/base_weather_repository.dart';

class GetWeatherByCountryNameUseCase {
  final BaseWeatherRepository baseWeatherRepository;
  GetWeatherByCountryNameUseCase(this.baseWeatherRepository);

  Future<Weather> execute(String countryName) async {
    return await baseWeatherRepository.getWeatherByCountryName(countryName);
  }
}
