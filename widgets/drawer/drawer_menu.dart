import 'package:flutter/material.dart';
import 'package:user_app/dg-components/animations/background/background_weather_animation.dart';
import 'package:user_app/dg-components/animations/season/season_top_animation.dart';
import '../../constants/extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../system/model/widgets/bar/bar_item.dart';
import '../../widget_tools/logo.dart';

class DrawerMenu extends StatelessWidget {
  final List<BarItem> barItems;
  final int currentIndex;
  final Function(int) setCurrentIndex;
  const DrawerMenu(
      {required this.currentIndex,
      required this.setCurrentIndex,
      required this.barItems,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Container(
          width: 280,
          height: double.infinity,
          color: theme.cardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Logo(size: 70)),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 15,
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: barItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setCurrentIndex(index);
                          context.back();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: currentIndex == index
                                  ? theme.primaryColor
                                  : Colors.transparent),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(
                                  barItems[index].unselectedIcon,
                                  size: 25,
                                  color: currentIndex == index
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    barItems[index].label,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: currentIndex == index
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextButton(
                    onPressed: () {
                      launchUrlString(
                        'https://dghub.in',
                        mode: LaunchMode.externalNonBrowserApplication,
                      );
                    },
                    child: Text(
                      'Developed by DGHub',
                      style: TextStyle(fontSize: 10, color: theme.primaryColor),
                    )),
              )
            ],
          ),
        ),
        BackgroundWeatherAnimation(),
        SizedBox(
          width: 280,
          child: Align(
              alignment: Alignment.topRight,
              child: SeasonTopAnimation(width: 100)),
        )
      ],
    );
  }
}
