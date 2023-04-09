import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:marquee_widget/marquee_widget.dart';

import '../../../../constants/enums.dart';
import '../../../../tools/dg-tools.dart';
import '../../../../widget_tools/responsive.dart';
import '../../../imageview/imageview.dart';

class ListItemColumDesign1 extends StatelessWidget {
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
  final ShapeBorderType shapeBorderType;
  const ListItemColumDesign1(
      {Key? key,
      required this.overlay_text,
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
      required this.hide_label,
      required this.hide_label2,
      required this.shadow,
      required this.shadow_color,
      required this.onClick,
      required this.shapeBorderType})
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

    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Wrap(
        children: [
          SizedBox(
            width: width,
            child: Card(
              shape: shapeBorderTypeSet(),
              color: theme.cardColor,
              elevation: shadow,
              shadowColor: shadow_color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width,
                    height: height,
                    child: Stack(
                      children: [
                        ImageViewNetwork(
                            radius: radius,
                            width: width,
                            height: height,
                            url: photo),
                        if (overlay_text != '')
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                                child: Text(
                                  overlay_text,
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                )),
                          )
                      ],
                    ),
                  ),
                  Container(
                    padding: hide_label && hide_label2 && hide_rating
                        ? EdgeInsets.zero
                        : Responsive.isMobile(context)
                            ? const EdgeInsets.all(10)
                            : const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (!hide_label)
                          IgnorePointer(
                            child: Marquee(
                              child: Text(label1,

                                  //overflow: TextOverflow.fade,
                                  // maxLines: 1,
                                  // softWrap: false,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        if (!hide_label2)
                          SizedBox(
                              height: Responsive.isMobile(context) ? 10 : 15),
                        if (!hide_label2)
                          Row(
                            children: [
                              Text(
                                label2,
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize:
                                        Responsive.isMobile(context) ? 12 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        if (!hide_rating)
                          SizedBox(
                              height: Responsive.isMobile(context) ? 10 : 15),
                        if (!hide_rating)
                          Marquee(
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
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
