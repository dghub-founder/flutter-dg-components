import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../system/model/widgets/bar/bar_item.dart';
import '../../system/model/widgets/header/header_settings.dart';
import 'designs/main_screen_frame_design1.dart';

class MainScreenFrame extends StatelessWidget {
  final List<BarItem> barItems;
  final List<PageRouteInfo<dynamic>> routes;
  final HeaderSettings headersettings;
  const MainScreenFrame(
      {required this.headersettings,
      required this.routes,
      required this.barItems,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (1) {
      case 1:
        return MainScreenFrameDesign1(
          routes: routes,
          barItems: barItems,
          headersettings: headersettings,
        );
      default:
        return MainScreenFrameDesign1(
            routes: routes, barItems: barItems, headersettings: headersettings);
    }
  }
}
