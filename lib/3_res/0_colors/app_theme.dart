import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData dark(){

    Color mainColor = const Color(0xFF00001E);
    Color subColor = const Color(0xFFFAFFFF);

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