import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static final lightGradientBackgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      HexColor('#86A4E0'),
      HexColor('#5E95CD'),
    ],
  );

  static final darkGradientBackgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      HexColor('#010101'),
      HexColor('#010101'),
    ],
  );

  static final drawerBackgroundColor = HexColor('#2E3842');
  static final sunIconColor = HexColor('#FFBC09');
  static final containerColor = HexColor('#8EBCEE');
}
