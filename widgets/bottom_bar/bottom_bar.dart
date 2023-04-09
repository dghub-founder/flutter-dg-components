import 'package:flutter/material.dart';

import '../../constants/globals.dart';
import '../../system/model/widgets/bar/bar_item.dart';
import 'bottom_bar_design1.dart';
import 'bottom_bar_design2.dart';
import 'bottom_bar_design3.dart';

class BottomBar extends StatelessWidget {
  final List<BarItem> barItems;
  final int currentIndex;
  final Function(int) setCurrentIndex;
  final int? design;
  const BottomBar(
      {required this.currentIndex,
      required this.setCurrentIndex,
      required this.barItems,
      this.design,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (design ?? settings!.bottom_bar.setting.design) {
      case 1:
        return BottomBarDesign1(
          barItems: barItems,
          currentIndex: currentIndex,
          setCurrentIndex: setCurrentIndex,
        );
      case 2:
        return BottomBarDesign2(
          barItems: barItems,
          currentIndex: currentIndex,
          setCurrentIndex: setCurrentIndex,
        );
      case 3:
        return BottomBarDesign3(
          barItems: barItems,
          currentIndex: currentIndex,
          setCurrentIndex: setCurrentIndex,
        );
      default:
        return BottomBarDesign1(
          barItems: barItems,
          currentIndex: currentIndex,
          setCurrentIndex: setCurrentIndex,
        );
    }
  }
}
