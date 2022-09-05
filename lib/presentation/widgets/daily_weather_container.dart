import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class DailyWeatherContainer extends StatelessWidget {
  const DailyWeatherContainer({super.key});

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
        itemCount: 16,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: const [
                Text('Today'),
                Icon(Icons.water_drop),
                Text('0%'),
                Icon(Icons.sunny),
                Icon(Icons.bedtime_rounded),
                Text('34'),
                Text('24'),
              ],
            ),
          );
        },
      ),
    );
  }
}
