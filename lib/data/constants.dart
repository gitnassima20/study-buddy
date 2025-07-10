import 'package:flutter/material.dart';

class KTextStyle {
  static const TextStyle titleTealText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.teal,
  );

  static const TextStyle descriptionText = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
    color: Colors.teal,
  );
}

class AppColors {
  static const Color tealGreen = Color(0xFF2C8C82);
  static const Color navyBlue = Color(0xFF3E5A9A);
  static const Color warmPeach = Color(0xFFF8CDA0);
  static const Color sageGreen = Color(0xFF5FA38B);
  static const Color skyBlue = Color(0xFFA8C8E5);
  static const Color cloudWhite = Color(0xFFF0F2F5);
}

class SharedPrefConsts {
  static const String themeModeKey = 'themeModeKey';
}
