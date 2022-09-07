import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(18),
        bottomRight: Radius.circular(18),
      ),
      child: Drawer(
        backgroundColor: AppColors.drawerBackgroundColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.star_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      'Favorite location',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.info_outline,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Row(
                      children: const [
                        Icon(
                          Icons.water_drop,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text(
                          'El Hay El Asher',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.sunny,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          '33',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const DottedLine(
                  dashColor: Colors.white,
                  dashGapLength: 3,
                  dashLength: 2,
                  dashRadius: 10,
                  lineThickness: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
