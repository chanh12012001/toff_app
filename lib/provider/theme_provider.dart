import 'package:flutter/material.dart';

import '../constants/theme.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;
  ThemeProvider({bool isDark = false}) {
    _selectedTheme = isDark ? darkTheme : lightTheme;
  }

  ThemeData get getTheme => _selectedTheme;

  Future<void> changeTheme() async {
    if (_selectedTheme == darkTheme) {
      _selectedTheme = lightTheme;
    } else {
      _selectedTheme = darkTheme;
    }
    //notifying all the listeners(consumers) about the change.
    notifyListeners();
  }
}
