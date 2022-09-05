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
          child: Column(
            children: const [
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
