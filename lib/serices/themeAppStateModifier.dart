import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  //

  bool isDarkMode = false;

  void updateTheme() async {
    isDarkMode = !isDarkMode;

    notifyListeners();
  }
}
