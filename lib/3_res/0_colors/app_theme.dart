import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData dark(){

    Color subColor = const Color(0xFFFAFFFF);
    Color mainColor = const Color(0xFFFFB400);
    Color textColor = const Color(0xFF000000);
    Color textboxColor = const Color(0xFFFFFFC8);

    return ThemeData(
      // primaryColorBrightness: Brightness.dark,
      cardColor: mainColor,
      canvasColor: mainColor,
      backgroundColor: mainColor,
      dialogBackgroundColor: mainColor,
      brightness: Brightness.dark,
    );

  }

}