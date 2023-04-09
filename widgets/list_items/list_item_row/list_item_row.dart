import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../constants/enums.dart';
import 'designs/list_item_row_design1.dart';
import 'designs/list_item_row_design2.dart';

class ListItemRow extends StatelessWidget {
  final int design;
  final String id;
  final String label1;
  final String label2;
  final String label3;
  final String photo;
  final double rating;
  final String viewer;
  final double width;
  final double height;
  final double radius;
  final double shadow;
  final Color shadow_color;
  final bool hide_rating;
  final bool hide_label2;
  final bool hide_label1;
  final Function onClick;
  final ShapeBorderType shapeBorderType;
  final List<SlidableAction>? leftActionPane;
  final List<SlidableAction>? rightActionPane;
  final double leftActionPaneSize;
  final double rightActionPaneSize;
  final Color? backgroundColor;
  final Widget? rightWidget;
  final Widget? centerWidget;

  const ListItemRow(
      {Key? key,
      this.design = 1,
      required this.id,
      required this.label1,
      required this.photo,
      required this.label2,
      required this.label3,
      required this.rating,
      required this.viewer,
      this.width = 100,
      this.height = 100,
      required this.radius,
      this.hide_rating = false,
      this.hide_label1 = false,
      this.hide_label2 = false,
      this.shadow = 0,
      this.shadow_color = Colors.grey,
      required this.onClick,
      this.shapeBorderType = ShapeBorderType.circle,
      this.leftActionPane,
      this.rightActionPane,
      this.leftActionPaneSize = 0.3,
      this.rightActionPaneSize = 0.3,
      this.rightWidget,
      this.centerWidget,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (design) {
      case 1:
        return ListItemRowDesign1(
          id: id,
          label1: label1,
          photo: photo,
          label2: label2,
          label3: label3,
          rating: rating,
          viewer: viewer,
          width: width,
          height: height,
          radius: radius,
          hide_rating: hide_rating,
          hide_label1: hide_label1,
          hide_label2: hide_label2,
          shadow: shadow,
          shadow_color: shadow_color,
          onClick: onClick,
          shapeBorderType: shapeBorderType,
          leftActionPane: leftActionPane,
          rightActionPane: rightActionPane,
          leftActionPaneSize: leftActionPaneSize,
          rightActionPaneSize: rightActionPaneSize,
          rightWidget: rightWidget,
          centerWidget: centerWidget,
        );
      case 2:
        return ListItemRowDesign2(
          backgroundColor: backgroundColor,
          id: id,
          label1: label1,
          photo: photo,
          label2: label2,
          label3: label3,
          rating: rating,
          viewer: viewer,
          width: width,
          height: height,
          radius: radius,
          hide_rating: hide_rating,
          hide_label1: hide_label1,
          hide_label2: hide_label2,
          shadow: shadow,
          shadow_color: shadow_color,
          onClick: onClick,
          shapeBorderType: shapeBorderType,
          leftActionPane: leftActionPane,
          rightActionPane: rightActionPane,
          leftActionPaneSize: leftActionPaneSize,
          rightActionPaneSize: rightActionPaneSize,
          rightWidget: rightWidget,
          centerWidget: centerWidget,
        );
      default:
        return ListItemRowDesign1(
          id: id,
          label1: label1,
          photo: photo,
          label2: label2,
          label3: label3,
          rating: rating,
          viewer: viewer,
          width: width,
          height: height,
          radius: radius,
          hide_rating: hide_rating,
          hide_label1: hide_label1,
          hide_label2: hide_label2,
          shadow: shadow,
          shadow_color: shadow_color,
          onClick: onClick,
          shapeBorderType: shapeBorderType,
          leftActionPane: leftActionPane,
          rightActionPane: rightActionPane,
          leftActionPaneSize: leftActionPaneSize,
          rightActionPaneSize: rightActionPaneSize,
          rightWidget: rightWidget,
          centerWidget: centerWidget,
        );
    }
  }
}
