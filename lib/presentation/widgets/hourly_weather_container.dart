import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class HourlyWeatherContainer extends StatelessWidget {
  const HourlyWeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      width: double.infinity,
      height: 180,
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
        itemCount: 6,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Text('3pm'),
                const Icon(Icons.sunny),
                const Text('34'),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [Icon(Icons.water_drop), Text('0%')],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
