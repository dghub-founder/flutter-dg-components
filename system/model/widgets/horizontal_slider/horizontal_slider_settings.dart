import 'package:json_annotation/json_annotation.dart';

import '../../../../../models/post.dart';
part 'horizontal_slider_settings.g.dart';

@JsonSerializable(includeIfNull: true)
class HorizontalSlider {
  late String id;
  late String title;
  late String category;
  late double image_width;
  late double image_height;
  late double image_radius;
  late int image_shadow;
  late int hide_rating;
  late int hide_vip;
  late int hide_label;
  late List<Post> posts;

  HorizontalSlider({
    required this.image_width,
    required this.image_height,
    required this.category,
    required this.id,
    required this.title,
    required this.hide_rating,
    required this.hide_vip,
    required this.image_radius,
    required this.image_shadow,
    required this.hide_label,
    required this.posts,
  });

  factory HorizontalSlider.fromJson(Map<String, dynamic> json) =>
      _$HorizontalSliderFromJson(json);
  // Map<String, dynamic> toJson() => _$PostToJson(this);
}
