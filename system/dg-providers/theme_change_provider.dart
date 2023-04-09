import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

import '../../constants/globals.dart';

class ThemeChangeProvider extends ChangeNotifier {
  changeDarkTheme({required BuildContext context}) {
    if (isDarkTheme) {
      return getLightTheme(context);
    } else {
      return getDarkTheme(context);
    }
  }

  void getLightTheme(BuildContext context) {
    final String getTheme = storage.read('light_theme') ?? 'light_default';
    ThemeProvider.controllerOf(context).setTheme(getTheme);
  }

  void getDarkTheme(BuildContext context) {
    final String getTheme = storage.read('dark_theme') ?? 'dark_default';
    ThemeProvider.controllerOf(context).setTheme(getTheme);
  }

  setTheme({required String themeId, required BuildContext context}) {
    String getThemeId;
    if (isDarkTheme) {
      getThemeId = 'dark_$themeId';
      if (ThemeProvider.controllerOf(context).hasTheme('dark_$themeId')) {
        storage.write('dark_theme', 'dark_$themeId');
        storage.write('light_theme', 'light_$themeId');
      }
    } else {
      getThemeId = 'light_$themeId';
      if (ThemeProvider.controllerOf(context).hasTheme('light_$themeId')) {
        storage.write('light_theme', 'light_$themeId');
        storage.write('dark_theme', 'dark_$themeId');
      }
    }

    ThemeProvider.controllerOf(context).setTheme(getThemeId);
  }
}
