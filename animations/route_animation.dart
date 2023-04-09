import 'package:flutter/material.dart';

class CustomRouteAnimation {
  static Widget zoomInTransition(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    // you get an animation object and a widget
    // make your own transition
    return ScaleTransition(scale: animation, child: child);
  }
}
