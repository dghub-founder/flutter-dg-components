import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import '../system/dg-providers/theme_change_provider.dart';
import '../system/model/theme_model.dart';
import '../widget_tools/responsive.dart';
import '../widgets/list_items/list_item_row_icon/list_item_row_icon.dart';

class ListTheme extends StatelessWidget {
  final ScrollPhysics? physics;
  const ListTheme({this.physics, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        physics: physics,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        // controller: scrollController,
        itemCount: themeData.length,
        crossAxisCount: Responsive.isMobile(context) ? 1 : 4,
        mainAxisSpacing: 2.5,
        crossAxisSpacing: 2.5,
        itemBuilder: (context, index) {
          return ListItemRowIcon(
              iconBackgroundColor: themeData[index].color,
              onClick: () {
                context
                    .read<ThemeChangeProvider>()
                    .setTheme(themeId: themeData[index].id, context: context);
                context.router.pop();
              },
              title: themeData[index].label,
              icon: Icons.color_lens);
        });
  }
}
