import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marquee_widget/marquee_widget.dart';

import '../../constants/config.dart';
import '../../constants/globals.dart';
import '../../system/model/widgets/header/header_settings.dart';
import '../../tools/dg-tools.dart';
import '../../widget_tools/auto_back.dart';
import '../../widget_tools/logo.dart';
import '../../widget_tools/responsive.dart';
import '../window/window_widgets.dart';

class HeaderBarDesign1 extends StatelessWidget {
  final HeaderSettings headersettings;
  final String title;
  const HeaderBarDesign1(
      {required this.title, required this.headersettings, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    DGTools.statusBarColor(color: theme.backgroundColor);

    return Container(
      height: AppBar().preferredSize.height,
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AutoBack(),
          if (Responsive.isMobile(context))
            settings!.header_bar.setting.hide_drawer_menu == 0
                ? GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child:
                          Icon(Iconsax.element_2, size: 20, color: Colors.grey),
                    ))
                : SizedBox(
                    width: 15,
                  ),
          if (!Responsive.isMobile(context)) const SizedBox(width: 10),
          if (!Responsive.isMobile(context))
            const SizedBox(
                height: headerLogoSize, child: Logo(size: headerLogoSize)),
          if (Responsive.isMobile(context))
            Marquee(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          const Expanded(child: WindowMover()),
          if (!Responsive.isMobile(context))
            Expanded(
              flex: 2,
              child: Card(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: theme.cardColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: headersettings.searchButtonClick!(),
                  child: SizedBox(
                    height: 35,
                    child: TextField(
                      enabled: false,
                      style: TextStyle(
                          fontSize: 12.0, color: theme.primaryColorLight
                          //height: 5,
                          ),
                      decoration: InputDecoration(
                        isCollapsed: true,
                        fillColor: theme.cardColor,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search',
                        hintStyle:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                        contentPadding: const EdgeInsets.only(
                            left: 15, bottom: 11, top: 13, right: 15),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          SizedBox(
            width: 10,
          ),
          Row(
              children: headersettings.headerItem
                  .map((item) => GestureDetector(
                        onTap: () {
                          item.onClick();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            item.icon,
                            size: settings!.header_bar.setting.icon_size,
                            color: Colors.grey,
                          ),
                        ),
                      ))
                  .toList()),
          if (!Responsive.isMobile(context))
            const Expanded(child: WindowMover()),
          if (settings!.header_bar.setting.hide_profile == 0)
            Container(
                margin: EdgeInsets.only(left: 10),
                child: headersettings.leftWidget),
          const WindowButtons()
        ],
      ),
    );
  }
}
