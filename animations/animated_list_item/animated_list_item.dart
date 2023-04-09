import 'package:flutter/material.dart';

import 'animated_list_item1.dart';

class AnimatedListItem extends StatefulWidget {
  final design;
  final int index;
  final Widget child;
  final Curve curve;

  const AnimatedListItem(
      {this.design = 1,
      required this.index,
      required this.child,
      this.curve = Curves.easeInOutQuart,
      Key? key})
      : super(key: key);

  @override
  State<AnimatedListItem> createState() => _AnimatedListItemState();
}

class _AnimatedListItemState extends State<AnimatedListItem> {
  @override
  Widget build(BuildContext context) {
    switch (widget.design) {
      case 1:
        return AnimatedListItem1(index: widget.index, child: widget.child);
      default:
        return AnimatedListItem1(index: widget.index, child: widget.child);
    }
  }
}
