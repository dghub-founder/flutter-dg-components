// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageSlider _$ImageSliderFromJson(Map<String, dynamic> json) => ImageSlider(
      link: json['link'] as String? ?? '',
      link_enabled: json['link_enabled'] as int? ?? 0,
      photo: json['photo'] as String,
      title: json['title'] as String? ?? '',
      post_id: json['post_id'] as String? ?? '',
      id: json['id'] as String,
    );

Map<String, dynamic> _$ImageSliderToJson(ImageSlider instance) =>
    <String, dynamic>{
      'link_enabled': instance.link_enabled,
      'link': instance.link,
      'photo': instance.photo,
      'title': instance.title,
      'post_id': instance.post_id,
      'id': instance.id,
    };
