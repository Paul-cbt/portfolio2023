import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xff222831), brightness: Brightness.dark);

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xffE9ECF3), brightness: Brightness.light);
}

class CustomColors {
  BuildContext context;
  CustomColors({required this.context});

  // Brightness brightness = Theme.of(context).brightness;
  Brightness brightness() {
    return Theme.of(context).colorScheme.brightness;
  }

  Color get primaryColor => brightness() == Brightness.light
      ? const Color(0xff222831)
      : const Color(0xFFF7F7F7);

  Color get secondaryColor => brightness() == Brightness.light
      ? const Color(0xFFA8D8EA)
      : const Color(0xff222831);
  Color get shadowColor => brightness() == Brightness.light
      ? const Color(0xff082030).withOpacity(0.5)
      : Colors.black;
  Color get homePageTextColor => brightness() == Brightness.light
      ? const Color(0xFFF7F7F7)
      : const Color(0xffFF7F7F7);

  Color get deepBlue => brightness() == Brightness.light
      ? const Color(0xFF1d5e76)
      : const Color(0xFF6b7d98);

  Color get textColor => brightness() == Brightness.light
      ? const Color(0xff082030)
      : const Color(0xffFFF7F7F7);

  Color get aboutMeAccent => brightness() == Brightness.light
      ? const Color(0xffA8D8EA)
      : const Color(0xffA8D8EA);

  Color get projectTileColor => brightness() == Brightness.light
      ? const Color(0xFFF5F5F5)
      : Color(0xff25272e);
  Color get secondaryTextColor => brightness() == Brightness.light
      ? Color.fromARGB(255, 161, 163, 166)
      : Colors.white;

  Color get professionalTypeColor => brightness() == Brightness.light
      ? const Color(0xFFA8D8EA)
      : const Color(0xFFA8D8EA);

  Color get professionalTypeTextColor => brightness() == Brightness.light
      ? const Color(0xFF1d5e76)
      : const Color(0xFF1d5e76);
  Color get professionalTypeShadowColor => brightness() == Brightness.light
      ? const Color(0xFFA8D8EA)
      : const Color(0xFFA8D8EA).withOpacity(0.5);
  Color get personalTypeColor => brightness() == Brightness.light
      ? const Color(0xFF1d5e76)
      : Color(0xffAA96DA);
  Color get personalTypeTextColor =>
      brightness() == Brightness.light ? Color(0xff89b4e2) : Color(0xff4d328e);
  Color get personalTypeShadowColor => brightness() == Brightness.light
      ? const Color(0xFF1d5e76)
      : Color(0xffAA96DA).withOpacity(0.5);
}
