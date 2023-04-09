import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageViewNetwork extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double radius_top_left;
  final double radius_top_right;
  final double radius_bottom_left;
  final double radius_bottom_right;
  final double radius;
  const ImageViewNetwork(
      {this.fit = BoxFit.cover,
      required this.url,
      this.width,
      this.height,
      this.radius_top_left = 0,
      this.radius_top_right = 0,
      this.radius_bottom_left = 0,
      this.radius_bottom_right = 0,
      this.radius = 0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: radius == 0
          ? BorderRadius.only(
              topLeft: Radius.circular(radius_top_left),
              topRight: Radius.circular(radius_top_right),
              bottomLeft: Radius.circular(radius_bottom_left),
              bottomRight: Radius.circular(radius_bottom_right))
          : BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        fit: fit,
        placeholder: (context, url) {
          return ClipRRect(
            borderRadius: radius == 0
                ? BorderRadius.only(
                    topLeft: Radius.circular(radius_top_left),
                    topRight: Radius.circular(radius_top_right),
                    bottomLeft: Radius.circular(radius_bottom_left),
                    bottomRight: Radius.circular(radius_bottom_right))
                : BorderRadius.circular(radius),
            child: Shimmer.fromColors(
              baseColor: theme.cardColor,
              highlightColor: theme.backgroundColor,
              child: Container(
                color: Colors.grey.withOpacity(0.4),
                width: width,
                height: height,
              ),
            ),
          );
        },
        errorWidget: (context, url, error) {
          return ClipRRect(
              borderRadius: radius == 0
                  ? BorderRadius.only(
                      topLeft: Radius.circular(radius_top_left),
                      topRight: Radius.circular(radius_top_right),
                      bottomLeft: Radius.circular(radius_bottom_left),
                      bottomRight: Radius.circular(radius_bottom_right))
                  : BorderRadius.circular(radius),
              child: Container(
                color: theme.backgroundColor.withOpacity(0.5),
                width: width,
                height: height,
                child: Center(
                  child: Icon(
                    Icons.warning_amber_outlined,
                    size: 35,
                  ),
                ),
              ));
        },
      ),
    );
  }
}
