// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/presentation/cubits/home_cubit/cubit.dart';
import 'package:weather_app/presentation/cubits/home_cubit/states.dart';
import 'package:weather_app/presentation/widgets/custom_drawer.dart';
import 'package:weather_app/presentation/widgets/hourly_weather_container.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) => {},
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            gradient: AppColors.lightGradientBackgroundColor,
          ),
          child: SafeArea(
            child: Scaffold(
              key: _scaffoldKey,
              drawer: const CustomDrawer(),
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        homeCubit.openHomeDrawer(_scaffoldKey);
                      },
                      child: const Icon(
                        Icons.density_medium_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '33',
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.wb_sunny_sharp,
                          size: 70,
                          color: AppColors.sunIconColor,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'El Hay El Asher',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      '34 / 24 Feels like 34',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Sun, 2:55 pm',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const HourlyWeatherContainer()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
