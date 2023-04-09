import 'package:flutter/material.dart';

class BarItem {
  late String label;
  late IconData selectedIcon;
  late IconData unselectedIcon;
  BarItem(
      {required this.label,
      required this.selectedIcon,
      required this.unselectedIcon});
}
