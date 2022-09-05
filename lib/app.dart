import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/config/routes/app_routes.dart';
import 'package:weather_app/core/utils/app_strings.dart';
import 'package:weather_app/presentation/cubits/app_cubit/cubit.dart';
import 'package:weather_app/presentation/cubits/home_cubit/cubit.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return WeatherAppCubit();
          },
        ),
        BlocProvider(
          create: (context) {
            return HomeCubit();
          },
        ),
      ],
      child: MaterialApp(
        title: AppString.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
