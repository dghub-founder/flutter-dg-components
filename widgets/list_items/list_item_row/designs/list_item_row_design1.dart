import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:marquee_widget/marquee_widget.dart';

import '../../../../constants/enums.dart';
import '../../../../tools/dg-tools.dart';
import '../../../../widget_tools/responsive.dart';
import '../../../imageview/imageview.dart';

class ListItemRowDesign1 extends StatelessWidget {
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
  final Widget? rightWidget;
  final Widget? centerWidget;

  const ListItemRowDesign1(
      {Key? key,
      required this.id,
      required this.label1,
      required this.photo,
      required this.label2,
      required this.label3,
      required this.rating,
      required this.viewer,
      required this.width,
      required this.height,
      required this.radius,
      required this.hide_rating,
      required this.hide_label1,
      required this.hide_label2,
      required this.shadow,
      required this.shadow_color,
      required this.onClick,
      required this.shapeBorderType,
      required this.leftActionPane,
      required this.rightActionPane,
      required this.leftActionPaneSize,
      required this.rightActionPaneSize,
      required this.rightWidget,
      required this.centerWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    ShapeBorder shapeBorderTypeSet() {
      switch (shapeBorderType) {
        case ShapeBorderType.circle:
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );
        case ShapeBorderType.beveled:
          return BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );
        case ShapeBorderType.stadium:
          return StadiumBorder(
            side: BorderSide(
              color: Colors.black,
              width: radius,
            ),
          );
        default:
          return BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );
      }
    }

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onClick();
          },
          child: Card(
            shape: shapeBorderTypeSet(),
            color: theme.cardColor,
            elevation: shadow,
            shadowColor: shadow_color,
            child: Slidable(
              useTextDirection: false,
              key: ValueKey(id),
              endActionPane: rightActionPane == null
                  ? null
                  : ActionPane(
                      extentRatio: rightActionPaneSize,
                      motion: const ScrollMotion(),
                      dragDismissible: false,
                      children: rightActionPane!.map((e) => e).toList(),
                    ),
              startActionPane: leftActionPane == null
                  ? null
                  : ActionPane(
                      extentRatio: leftActionPaneSize,
                      motion: const ScrollMotion(),
                      dragDismissible: false,
                      children: leftActionPane!.map((e) => e).toList(),
                    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageViewNetwork(width: width, height: height, url: photo),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!hide_label1)
                          Padding(
                            padding: Responsive.isMobile(context)
                                ? const EdgeInsets.fromLTRB(10, 10, 10, 10)
                                : const EdgeInsets.fromLTRB(15, 15, 15, 15),
                            child: Marquee(
                              child: Text(label1,
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        if (!hide_label2)
                          Padding(
                            padding: Responsive.isMobile(context)
                                ? const EdgeInsets.fromLTRB(10, 0, 10, 10)
                                : const EdgeInsets.fromLTRB(15, 0, 15, 15),
                            child: Row(
                              children: [
                                Text(
                                  label2,
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: Responsive.isMobile(context)
                                          ? 10
                                          : 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        if (!hide_rating)
                          Padding(
                            padding: Responsive.isMobile(context)
                                ? const EdgeInsets.fromLTRB(10, 0, 10, 10)
                                : const EdgeInsets.fromLTRB(15, 0, 15, 15),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  unratedColor: Colors.grey,
                                  ignoreGestures: true,
                                  itemSize:
                                      Responsive.isMobile(context) ? 10 : 15,
                                  initialRating: rating,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  updateOnDrag: false,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                SizedBox(
                                    width:
                                        Responsive.isMobile(context) ? 4 : 8),
                                Text(
                                  DGTools.numberToReadable(viewer.toString()),
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        Container(child: centerWidget)
                      ],
                    ),
                  ),
                  Container(
                    child: rightWidget,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
