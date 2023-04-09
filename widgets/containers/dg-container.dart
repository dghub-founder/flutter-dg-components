import 'dart:ui';
import 'package:flutter/material.dart';

class DGContainer {
  static Widget glass(
      {double? width,
      double? height,
      required Widget child,
      double radius = 0.0,
      double spreadRadius = 0.0,
      required Color startColor,
      required Color endColor,
      double border = 0.0,
      double opacity = 0.2}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              blurRadius: radius,
              spreadRadius: spreadRadius,
              color: endColor.withOpacity(opacity),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(spreadRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 40.0,
            sigmaY: 40.0,
          ),
          child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  color: startColor.withOpacity(opacity),
                  borderRadius: BorderRadius.circular(spreadRadius),
                  border: Border.all(
                    width: border,
                    color: startColor.withOpacity(opacity),
                  )),
              child: child),
        ),
      ),
    );
  }
}
