import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:user_app/dg-components/constants/extensions.dart';
import '../../constants/config.dart';
import '../../constants/globals.dart';
import '../../system/model/widgets/header/header_settings.dart';
import '../../tools/dg-tools.dart';
import '../../widget_tools/auto_back.dart';
import '../../widget_tools/logo.dart';
import '../../widget_tools/responsive.dart';
import '../window/window_widgets.dart';

class HeaderBarBackDesign3 extends StatelessWidget {
  final HeaderSettings headersettings;
  final String title;
  const HeaderBarBackDesign3(
      {required this.title, required this.headersettings, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    DGTools.statusBarColor(color: theme.cardColor);

    return Container(
      height: AppBar().preferredSize.height,
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      color: theme.cardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                context.back();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_back,
                    size: settings!.header_bar.setting.icon_size,
                    color: Colors.grey),
              )),
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
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ))
                  .toList()),
          const WindowButtons()
        ],
      ),
    );
  }
}
