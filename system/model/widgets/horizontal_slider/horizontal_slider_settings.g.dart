// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontal_slider_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HorizontalSlider _$HorizontalSliderFromJson(Map<String, dynamic> json) =>
    HorizontalSlider(
      image_width: (json['image_width'] as num).toDouble(),
      image_height: (json['image_height'] as num).toDouble(),
      category: json['category'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      hide_rating: json['hide_rating'] as int,
      hide_vip: json['hide_vip'] as int,
      image_radius: (json['image_radius'] as num).toDouble(),
      image_shadow: json['image_shadow'] as int,
      hide_label: json['hide_label'] as int,
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HorizontalSliderToJson(HorizontalSlider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'image_width': instance.image_width,
      'image_height': instance.image_height,
      'image_radius': instance.image_radius,
      'image_shadow': instance.image_shadow,
      'hide_rating': instance.hide_rating,
      'hide_vip': instance.hide_vip,
      'hide_label': instance.hide_label,
      'posts': instance.posts,
    };
