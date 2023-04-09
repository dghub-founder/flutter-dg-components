import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import '../constants/languages.dart';
import '../system/dg-providers/language_provider.dart';
import '../system/dg-providers/theme_change_provider.dart';
import '../system/model/theme_model.dart';
import '../widget_tools/responsive.dart';
import '../widgets/list_items/list_item_row_icon/list_item_row_icon.dart';

class ListLanguage extends StatelessWidget {
  final ScrollPhysics? physics;
  const ListLanguage({this.physics, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        physics: physics,
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        // controller: scrollController,
        itemCount: languages.length,
        crossAxisCount: Responsive.isMobile(context) ? 1 : 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) {
          final theme = Theme.of(context);
          return ListItemRowIcon(
              iconBackgroundColor: theme.primaryColor,
              onClick: () {
                context
                    .read<LanguageProvider>()
                    .change(languageCode: languages[index].languageCode);
                context.router.pop();
              },
              title: languages[index].countryCode.toString(),
              icon: Icons.language);
        });
  }
}
