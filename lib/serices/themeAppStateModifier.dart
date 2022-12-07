import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  //

  bool isDarkMode = false;

  void updateTheme(bool newTheme) async {
    isDarkMode = newTheme;

    notifyListeners();
  }
}
