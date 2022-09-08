import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Either<Failure, Weather>> getWeatherByCountryName(String countryName);
  Future<Either<Failure, Weather>> getWeatherOfCurrentLocation(Position currentLocation);
}
