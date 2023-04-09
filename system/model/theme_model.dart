import 'package:flutter/material.dart';

class ThemeModel {
  late String id;
  late String label;
  late Color color;
  ThemeModel({required this.id, required this.label, required this.color});
}

final List<ThemeModel> themeData = [
  ThemeModel(label: 'Theme red', color: Colors.red, id: 'red'),
  ThemeModel(label: 'Theme green', color: Colors.green, id: 'green'),
  ThemeModel(label: 'Theme blue', color: Color(0xff0643A5), id: 'blue'),
  ThemeModel(label: 'Theme popular', color: Color(0xff556ee5), id: 'popular'),
  ThemeModel(label: 'Theme cyan', color: Colors.cyan, id: 'cyan'),
  ThemeModel(label: 'Theme orange', color: Colors.orange, id: 'orange'),
  ThemeModel(label: 'Theme pink', color: Colors.pink, id: 'pink'),
  ThemeModel(label: 'Theme purple', color: Colors.purple, id: 'purple'),
];
