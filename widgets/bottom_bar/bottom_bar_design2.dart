import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/update/update_provider.dart';
import '../../animations/hide_and_show/scroll_to_hide/scroll_to_hide_widget.dart';
import '../../constants/globals.dart';
import '../../system/model/widgets/bar/bar_item.dart';
import '../../tools/dg-tools.dart';

class BottomBarDesign2 extends StatelessWidget {
  final List<BarItem> barItems;
  final int currentIndex;
  final Function(int) setCurrentIndex;
  const BottomBarDesign2(
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
        : DGTools.navBarColor(color: theme.primaryColor);

    return Container(
      margin:
          settings!.bottom_bar.setting.float == 1 ? EdgeInsets.all(20) : null,
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showSelectedLabels:
              settings!.bottom_bar.setting.hide_text == 1 ? false : null,
          showUnselectedLabels:
              settings!.bottom_bar.setting.hide_text == 1 ? false : null,
          backgroundColor: theme.primaryColor,
          unselectedItemColor: theme.backgroundColor,
          selectedItemColor: theme.backgroundColor,
          items: barItems
              .map((data) => BottomNavigationBarItem(
                  backgroundColor: theme.primaryColor,
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
