import 'package:flutter/material.dart';

import '../../constants/globals.dart';

class LanguageProvider with ChangeNotifier {
  LanguageProvider() {
    start();
  }
  Locale locale = Locale('en');

  start() {
    locale = Locale(storage.read('language') ?? locale.languageCode);
  }

  change({required languageCode}) {
    locale = Locale(languageCode);
    storage.write('language', languageCode);
    notifyListeners();
  }
}
