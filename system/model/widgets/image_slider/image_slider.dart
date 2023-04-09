import 'package:json_annotation/json_annotation.dart';
part 'image_slider.g.dart';

@JsonSerializable(includeIfNull: true)
class ImageSlider {
  final int link_enabled;
  final String link;
  final String photo;
  final String title;
  final String post_id;
  final String id;

  ImageSlider(
      {this.link = '',
      this.link_enabled = 0,
      required this.photo,
      this.title = '',
      this.post_id = '',
      required this.id});

  factory ImageSlider.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderFromJson(json);
  Map<String, dynamic> toJson() => _$ImageSliderToJson(this);
}
