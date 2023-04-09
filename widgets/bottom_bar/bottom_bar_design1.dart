import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/update/update_provider.dart';
import '../../animations/hide_and_show/scroll_to_hide/scroll_to_hide_widget.dart';
import '../../constants/globals.dart';
import '../../system/model/widgets/bar/bar_item.dart';
import '../../tools/dg-tools.dart';

class BottomBarDesign1 extends StatelessWidget {
  final List<BarItem> barItems;
  final int currentIndex;
  final Function(int) setCurrentIndex;
  const BottomBarDesign1(
      {required this.currentIndex,
      required this.setCurrentIndex,
      required this.barItems,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    settings!.bottom_bar.setting.float == 1
        ? DGTools.navBarColor(color: theme.backgroundColor)
        : DGTools.navBarColor(color: theme.cardColor);

    return Container(
      margin:
          settings!.bottom_bar.setting.float == 1 ? EdgeInsets.all(20) : null,
      child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels:
              settings!.bottom_bar.setting.hide_text == 1 ? false : null,
          showUnselectedLabels:
              settings!.bottom_bar.setting.hide_text == 1 ? false : null,
          backgroundColor: theme.backgroundColor,
          unselectedItemColor: Colors.grey,
          selectedItemColor: theme.primaryColor,
          items: barItems
              .map((data) => BottomNavigationBarItem(
                  label: data.label,
                  icon: Icon(data.unselectedIcon),
                  activeIcon: Icon(data.selectedIcon)))
              .toList(),
          currentIndex: currentIndex,
          onTap: ((index) {
            context.read<UpdateProvider>().start(context);
            setCurrentIndex(index);
          })),
    );
  }
}
