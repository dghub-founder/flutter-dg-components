import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/dg-components/animations/background/background_weather_animation.dart';
import 'package:user_app/dg-components/constants/extensions.dart';
import 'package:user_app/dg-components/widgets/net_connection/net_connection.dart';

import '../../../animations/hide_and_show/scroll_to_hide/scroll_to_hide_list_container.dart';
import '../../../animations/hide_and_show/scroll_to_hide/scroll_to_hide_widget.dart';
import '../../../constants/globals.dart';
import '../../../library/background_animation/bg/weather_bg.dart';
import '../../../library/background_animation/utils/weather_type.dart';
import '../../../system/dg-providers/scroll_to_hide_provider.dart';
import '../../../system/model/widgets/bar/bar_item.dart';
import '../../../system/model/widgets/header/header_settings.dart';
import '../../../widget_tools/responsive.dart';
import '../../bottom_bar/bottom_bar.dart';
import '../../drawer/drawer_menu.dart';
import '../../header_bar/header_bar.dart';
import '../../side_bar/side_bar.dart';

class MainScreenFrameDesign1 extends StatefulWidget {
  final List<BarItem> barItems;
  final List<PageRouteInfo<dynamic>> routes;
  final HeaderSettings headersettings;
  const MainScreenFrameDesign1(
      {required this.routes,
      required this.barItems,
      required this.headersettings,
      Key? key})
      : super(key: key);

  @override
  State<MainScreenFrameDesign1> createState() => _MainScreenFrameDesign1State();
}

class _MainScreenFrameDesign1State extends State<MainScreenFrameDesign1> {
  PageController pageController = PageController();
  late HeaderSettings headersettings;
  int currentIndex = 0;

  @override
  void initState() {
    headersettings = widget.headersettings;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<ScrollToHideProvider>(builder: (context, state, child) {
      return AutoTabsRouter(
        routes: widget.routes,
        builder: (context, child, pageController) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Scaffold(
            key: globalScaffoldMessengerKey,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: HeaderBar(
                title: currentIndex == 0
                    ? context.l().app_name
                    : widget.barItems[currentIndex].label,
                headersettings: widget.headersettings,
              ),
            ),
            drawer: DrawerMenu(
                currentIndex: tabsRouter.activeIndex,
                setCurrentIndex: (index) {
                  setState(() {
                    tabsRouter.setActiveIndex(index);
                    currentIndex = index;
                  });
                },
                barItems: widget.barItems),
            body: Column(
              children: [
                SizedBox(
                  height: kToolbarHeight,
                ),
                Expanded(
                  child: Row(
                    children: [
                      if (!Responsive.isMobile(context))
                        SideBar(
                            barItems: widget.barItems,
                            currentIndex: tabsRouter.activeIndex,
                            setCurrentIndex: (index) {
                              setState(() {
                                currentIndex = index;
                                tabsRouter.setActiveIndex(index);
                              });
                            }),
                      Expanded(
                          child: Stack(
                        children: [child, BackgroundWeatherAnimation()],
                      ))
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Responsive.isMobile(context) &&
                    settings!.bottom_bar.enabled == 1
                ? BottomBar(
                    setCurrentIndex: (index) {
                      setState(() {
                        currentIndex = index;
                        tabsRouter.setActiveIndex(index);
                      });
                    },
                    currentIndex: currentIndex,
                    barItems: widget.barItems)
                : null,
            extendBody: false,
            extendBodyBehindAppBar: true,
          );
        },
      );
    }));
  }
}
