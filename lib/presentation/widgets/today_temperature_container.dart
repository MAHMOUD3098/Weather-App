import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class TodayTemperatureContainer extends StatelessWidget {
  const TodayTemperatureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Today\'s Temperature'),
          Text('Expect the same as yesterday'),
        ],
      ),
    );
  }
}
