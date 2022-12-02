import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  //

  bool isDarkMode = false;

  void updateTheme(bool isDarkMode) async {
    this.isDarkMode = isDarkMode;

    notifyListeners();
  }
}
