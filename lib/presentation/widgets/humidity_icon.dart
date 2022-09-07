import 'package:flutter/material.dart';

class HumidityIcon extends StatelessWidget {
  final num humidityPercentage;

  const HumidityIcon({super.key, required this.humidityPercentage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.water_drop,
          size: 14,
          color: Colors.white,
        ),
        Text(
          '$humidityPercentage%',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
