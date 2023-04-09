import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../system/model/widgets/bar/bar_item.dart';

class SideBar extends StatelessWidget {
  final List<BarItem> barItems;
  final int currentIndex;
  final Function(int) setCurrentIndex;
  const SideBar(
      {required this.currentIndex,
      required this.setCurrentIndex,
      required this.barItems,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 70,
      child: NavigationRail(
          selectedLabelTextStyle:
              TextStyle(fontSize: 10, color: theme.primaryColor),
          //useIndicator: true,
          //indicatorColor: theme.cardColor.withOpacity(0.5),
          backgroundColor: theme.backgroundColor,
          selectedIconTheme: IconThemeData(color: theme.primaryColor),
          selectedIndex: currentIndex,
          labelType: NavigationRailLabelType.selected,
          destinations: barItems
              .map((data) => NavigationRailDestination(
                  icon: Card(
                      color: const Color(0x00000000),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(data.unselectedIcon, color: Colors.grey)),
                  label: Text(
                    data.label,
                  ),
                  selectedIcon: Card(
                      color: theme.cardColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(data.selectedIcon),
                      ))))
              .toList(),
          onDestinationSelected: (index) {
            setCurrentIndex(index);
          }),
    );
  }
}
