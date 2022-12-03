import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme =
      ThemeData(scaffoldBackgroundColor: Color(0xffE9ECF3));

  static final ThemeData lightTheme =
      ThemeData(scaffoldBackgroundColor: Color(0xffE9ECF3));
}

class CustomColors {
  BuildContext context;
  CustomColors({required this.context});

  // Brightness brightness = Theme.of(context).brightness;
  Brightness brightness() {
    return Theme.of(context).colorScheme.brightness;
  }

  Color get secondaryColor => brightness() == Brightness.light
      ? const Color(0xFFA8D8EA)
      : const Color(0xff222831);
  Color get shadowColor => brightness() == Brightness.light
      ? const Color(0xff082030).withOpacity(0.5)
      : const Color(0xFFA8D8EA).withOpacity(0.2);
  Color get homePageTextColor => brightness() == Brightness.light
      ? const Color(0xFFF7F7F7)
      : const Color(0xffFFF7F7F7);

  Color get deepBlue => brightness() == Brightness.light
      ? const Color(0xFF1d5e76)
      : const Color(0xffA8D8EA);

  Color get textColor => brightness() == Brightness.light
      ? const Color(0xff082030)
      : const Color(0xffA8D8EA);

  Color get aboutMeAccent => brightness() == Brightness.light
      ? const Color(0xffA8D8EA)
      : const Color(0xffA8D8EA);

  Color get projectTileColor => brightness() == Brightness.light
      ? const Color(0xFFF5F5F5)
      : Colors.grey[700]!;
  Color get secondaryTextColor => brightness() == Brightness.light
      ? Color.fromARGB(255, 161, 163, 166)
      : Colors.white;
}
