import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../../constants/enums.dart';
import '../../../system/dg-providers/scroll_to_hide_provider.dart';

class ScrollToHideWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double height;
  final bool enabled;
  final ScrollToHideAnimationType animationType;
  const ScrollToHideWidget(
      {this.animationType = ScrollToHideAnimationType.upToDown,
      this.enabled = true,
      required this.child,
      this.duration = const Duration(milliseconds: 200),
      this.height = kBottomNavigationBarHeight,
      Key? key})
      : super(key: key);

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offset;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: widget.duration);
    switch (widget.animationType) {
      case ScrollToHideAnimationType.upToDown:
        offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.0))
            .animate(controller);
        break;
      case ScrollToHideAnimationType.leftToRight:
        offset = Tween<Offset>(begin: Offset.zero, end: Offset(1.0, 0.0))
            .animate(controller);
        break;
      case ScrollToHideAnimationType.downToUp:
        offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, -1.0))
            .animate(controller);
        break;
      case ScrollToHideAnimationType.rightToLeft:
        offset = Tween<Offset>(begin: Offset.zero, end: Offset(-1.0, 0.0))
            .animate(controller);
        break;
      default:
        offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.0))
            .animate(controller);
    }
  }

  @override
  Widget build(BuildContext context) =>
      Consumer<ScrollToHideProvider>(builder: (context, state, child) {
        //  if (state.isVisible) {
        //    controller.reverse();
        //  } else {
        //   controller.forward();
        //  }
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: state.isVisible ? widget.height : 0,
          child: Wrap(
            children: [
              widget.child,
            ],
          ),
        );
        //return SlideTransition(position: offset, child: widget.child);
      });
}
