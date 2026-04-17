import 'package:flutter/material.dart';

// usado para mudar os estados somente de codigos e nao do UI
class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isDarkTheme = false;

  changTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
