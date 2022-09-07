import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/services/services_locator.dart';
import 'package:weather_app/core/utils/app_strings.dart';
import 'package:weather_app/presentation/cubits/home_cubit/cubit.dart';
import 'package:weather_app/presentation/screens/home_screen/home_screen.dart';

class Routes {
  static const String initialRoute = '/';
  // static const String favoriteScreenRoute = '/FavoriteScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => sl<HomeCubit>(),
            child: HomeScreen(),
          ),
        );

      // case Routes.favoriteScreen:
      //   return MaterialPageRoute(builder: ((context) => FavoriteScreen()));

      default:
        return null;
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppString.noRouteFound),
        ),
      ),
    );
  }
}
