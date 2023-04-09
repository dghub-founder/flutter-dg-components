import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:user_app/dg-components/widgets/list_items/list_item_colum/design/list_item_colum_design1.dart';
import 'package:user_app/dg-components/widgets/list_items/list_item_colum/design/list_item_colum_design2.dart';

import '../../../constants/enums.dart';
import '../../../tools/dg-tools.dart';
import '../../../widget_tools/responsive.dart';
import '../../imageview/imageview.dart';

class ListItemColum extends StatelessWidget {
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
  final bool hide_label;
  final Function onClick;
  final String overlay_text;
  final String? overlay_image;
  final ShapeBorderType shapeBorderType;
  const ListItemColum(
      {Key? key,
      this.overlay_text = '',
      this.overlay_image,
      required this.id,
      required this.label1,
      required this.photo,
      required this.label2,
      required this.label3,
      required this.rating,
      required this.viewer,
      this.width = 170,
      this.height = 200,
      required this.radius,
      this.hide_rating = false,
      this.hide_label = false,
      this.hide_label2 = false,
      this.shadow = 0,
      this.shadow_color = Colors.grey,
      required this.onClick,
      this.shapeBorderType = ShapeBorderType.circle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (2) {
      case 1:
        return ListItemColumDesign1(
            overlay_text: overlay_text,
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
            hide_label: hide_label,
            hide_label2: hide_label2,
            shadow: shadow,
            shadow_color: shadow_color,
            onClick: onClick,
            shapeBorderType: shapeBorderType);

      case 2:
        return ListItemColumDesign2(
            overlay_image: overlay_image,
            overlay_text: overlay_text,
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
            hide_label: hide_label,
            hide_label2: hide_label2,
            shadow: shadow,
            shadow_color: shadow_color,
            onClick: onClick,
            shapeBorderType: shapeBorderType);
      default:
        return ListItemColumDesign1(
            overlay_text: overlay_text,
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
            hide_label: hide_label,
            hide_label2: hide_label2,
            shadow: shadow,
            shadow_color: shadow_color,
            onClick: onClick,
            shapeBorderType: shapeBorderType);
    }
  }
}
