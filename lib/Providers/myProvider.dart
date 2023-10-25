import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = 'en';
  String language = 'English';
  ThemeMode mode = ThemeMode.light;

  void changeMode(ThemeMode themeMode) {
    mode = themeMode;
    notifyListeners();
  }

  void changeLanguage(String langCode) {
    languageCode = langCode;
    if (languageCode == "en") {
      language = "Englisg";
    } else if (languageCode == "ar") {
      language = "عربي";
    }
    notifyListeners();
  }
}
