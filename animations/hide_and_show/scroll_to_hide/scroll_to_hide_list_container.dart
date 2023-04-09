import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../../system/dg-providers/scroll_to_hide_provider.dart';

class ScrollToHideListContainer extends StatelessWidget {
  final Widget child;
  const ScrollToHideListContainer({required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      child: child,
      onNotification: (ScrollNotification notification) {
        final ValueNotifier<double> notifier = ValueNotifier(0);
        if (notification is UserScrollNotification) {
          if (notification.direction == ScrollDirection.forward) {
            context.read<ScrollToHideProvider>().show();
          } else if (notification.direction == ScrollDirection.reverse) {
            context.read<ScrollToHideProvider>().hide();
          }
        }
        return true;
      },
    );
  }
}
