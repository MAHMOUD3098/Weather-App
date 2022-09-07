import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/core/services/services_locator.dart';
import 'package:weather_app/core/utils/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServicesLocator().init();
  Bloc.observer = AppBlocObserver();
  runApp(const WeatherApp());
}
