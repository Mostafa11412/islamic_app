import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  bool isDark = false;

  String bg_path = "assets/images/default_bg.png";
  String headSebha = "assets/images/head_sebha_logo.png";
  String bodySebha = "assets/images/body_sebha_logo.png";

  bool isEnglish = false;
  changeTheme(bool theme) {
    isDark = theme;
    if (isDark) {
      bg_path = "assets/images/dark_bg.png";
      headSebha = "assets/images/head_sebha_dark.png";
      bodySebha = "assets/images/body_sebha_dark.png";
    } else {
      bg_path = "assets/images/default_bg.png";
      headSebha = "assets/images/head_sebha_logo.png";
      bodySebha = "assets/images/body_sebha_logo.png";
    }

    notifyListeners();
  }

  changeLanguage(bool Lang) {
    isEnglish = Lang;
    notifyListeners();
  }
}
