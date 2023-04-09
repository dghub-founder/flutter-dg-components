import 'package:flutter/material.dart';
import 'package:user_app/dg-components/constants/globals.dart';

class BackgroundWeatherAnimationProvider with ChangeNotifier {
  switcher() {
    if (enabledAnimation) {
      storage.write('animation', false);
      enabledAnimation = false;
    } else {
      storage.write('animation', true);
      enabledAnimation = true;
    }
    notifyListeners();
  }
}
