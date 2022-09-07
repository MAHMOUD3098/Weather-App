import 'package:get_it/get_it.dart';
import 'package:weather_app/data/datasources/weather_remote_data_source.dart';
import 'package:weather_app/data/repositories/weather_repository.dart';
import 'package:weather_app/domain/repositories/base_weather_repository.dart';
import 'package:weather_app/domain/usecases/get_weather_by_country_name_usecase.dart';
import 'package:weather_app/presentation/cubits/app_cubit/cubit.dart';
import 'package:weather_app/presentation/cubits/home_cubit/cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  Future<void> init() async {
    //! Features
    // Blocs
    sl.registerFactory(() => WeatherAppCubit());
    sl.registerFactory(() => HomeCubit(getWeatherByCountryNameUseCase: sl()));

    //! UseCases
    sl.registerLazySingleton<GetWeatherByCountryNameUseCase>(() => GetWeatherByCountryNameUseCase(sl()));

    //! Repository
    sl.registerLazySingleton<BaseWeatherRepository>(() => WeatherRepository(baseWeatherRemoteDataSource: sl()));

    //! Data Source
    sl.registerLazySingleton<BaseWeatherRemoteDataSource>(() => WeatherRemoteDataSource());
  }
}
