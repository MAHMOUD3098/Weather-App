import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/usecases/get_weather_by_country_name_usecase.dart';
import 'package:weather_app/presentation/cubits/home_cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final GetWeatherByCountryNameUseCase getWeatherByCountryNameUseCase;

  HomeCubit({required this.getWeatherByCountryNameUseCase}) : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  num temperature = 0;
  Future<Either<Failure, Weather>> getWeatherByCountryName(String countryName) async {
    Either<Failure, Weather> response = await getWeatherByCountryNameUseCase.execute(countryName);
    response.fold((l) => null, (r) {
      debugPrint(r.toString());
      temperature = r.temperature;
    });
    return response;
  }

  Position? currentLocation;
  Future<void> getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    currentLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  void initData() async {
    emit(HomeLoadingState());
    await getWeatherByCountryName('Egypt').then(
      (value) async {
        await getGeoLocationPosition().then(
          (value) => {
            emit(HomeLoadedState()),
          },
        );
      },
    );
  }

  void openHomeDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    scaffoldKey.currentState!.openDrawer();
    emit(OpenHomeDrawerState());
  }
}
