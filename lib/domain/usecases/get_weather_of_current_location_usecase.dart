import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repositories/base_weather_repository.dart';

class GetWeatherOfCurrentLocationUseCase {
  final BaseWeatherRepository baseWeatherRepository;

  GetWeatherOfCurrentLocationUseCase(this.baseWeatherRepository);

  Future<Either<Failure, Weather>> execute(Position currentLocation) async {
    return await baseWeatherRepository.getWeatherOfCurrentLocation(currentLocation);
  }
}
