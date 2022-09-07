import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class HourlyWeatherContainer extends StatelessWidget {
  const HourlyWeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '3 pm',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.sunny,
                  color: AppColors.sunIconColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '34',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.water_drop,
                      size: 14,
                      color: Colors.white,
                    ),
                    Text(
                      '0%',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
