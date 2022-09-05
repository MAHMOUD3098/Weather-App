// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:weather_app/core/error/exceptions.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/data/datasources/weather_remote_data_source.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/repositories/base_weather_repository.dart';

class WeatherRepository extends BaseWeatherRepository {
  final BaseWeatherRemoteDataSource baseWeatherRemoteDataSource;

  WeatherRepository({
    required this.baseWeatherRemoteDataSource,
  });

  @override
  Future<Either<Failure, Weather>> getWeatherByCountryName(String countryName) async {
    final result = await baseWeatherRemoteDataSource.getWeatherByCountryName(countryName);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.message));
    }
  }
}
