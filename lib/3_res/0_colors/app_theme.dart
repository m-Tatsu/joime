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
      primarySwatch: _orange,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: textColor,
        )
      )
    );

  }
  static const int _orangePrimaryValue = 0xFFE6B422;
  static const MaterialColor _orange = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      50: Color(0xFFFCF6E8),
      100: Color(0xFFFAF0D5),
      200: Color(0xFFF4E0A8),
      300: Color(0xFFEFD07A),
      400: Color(0xFFEAC04C),
      500: Color(_orangePrimaryValue),
      600: Color(0xFFD1A018),
      700: Color(0xFFBB8F15),
      800: Color(0xFF8D6C10),
      900: Color(0xFF765A0D),
    },
  );
}