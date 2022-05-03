import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColorsTheme {
  static Color primaryColor = const Color(0xFFFFF1E8);
  static Color accentColor = const Color(0xFFE05C70);
  static Color bgPrimary = const Color(0xFFFFF1E8);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF4D4D4D);
  static Color subtextBlack = const Color(0xFF474747);
  static Color trackColor = const Color(0xFF757575);
  static Color styleTopColor = const Color(0x70000000);
  static Color restcardcolor = const Color.fromRGBO(224, 92, 112, .7);
  static Color materialCardcolor = const Color.fromRGBO(224, 92, 112, .4);
  static Color testcolor = const Color.fromRGBO(255, 255, 255, .3);
  static Color cardColorWhite = const Color(0XFFF1F1F1);
  static Color cardColorBlack = const Color(0xFF474747);
}

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColorsTheme.white,
    textTheme:
        GoogleFonts.robotoTextTheme().apply(bodyColor: AppColorsTheme.black),
    primaryColor: AppColorsTheme.white,
    hintColor: AppColorsTheme.white,
    sliderTheme: SliderThemeData(
        thumbColor: AppColorsTheme.accentColor,
        activeTrackColor: AppColorsTheme.accentColor,
        inactiveTrackColor: AppColorsTheme.trackColor),
    colorScheme: ColorScheme.light(
            secondary: AppColorsTheme.accentColor, brightness: Brightness.light)
        .copyWith(secondary: AppColorsTheme.accentColor),
    // color for appbar in home page
    errorColor: AppColorsTheme.accentColor,
    cardColor: AppColorsTheme.cardColorWhite,
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColorsTheme.accentColor,
        foregroundColor: AppColorsTheme.white,
        titleTextStyle: TextStyle(color: AppColorsTheme.white, fontSize: 18),
        iconTheme: IconThemeData(color: AppColorsTheme.white)),
  );

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColorsTheme.black,
      textTheme:
          GoogleFonts.robotoTextTheme().apply(bodyColor: AppColorsTheme.white),
      primaryColor: AppColorsTheme.black,
      hintColor: AppColorsTheme.white,
      sliderTheme: SliderThemeData(
          thumbColor: AppColorsTheme.accentColor,
          activeTrackColor: AppColorsTheme.accentColor,
          inactiveTrackColor: AppColorsTheme.subtextBlack),
      colorScheme: ColorScheme.dark(
              secondary: AppColorsTheme.accentColor,
              brightness: Brightness.dark)
          .copyWith(secondary: AppColorsTheme.accentColor),
      // color for appbar in home page
      errorColor: AppColorsTheme.accentColor,
      cardColor: AppColorsTheme.cardColorBlack,
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: AppColorsTheme.black,
          foregroundColor: AppColorsTheme.white,
          titleTextStyle: TextStyle(color: AppColorsTheme.white, fontSize: 18),
          iconTheme: IconThemeData(color: AppColorsTheme.white))
      //THEME COMPLETE HERE
      );
}