// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_slider_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageSliderSettings _$ImageSliderSettingsFromJson(Map<String, dynamic> json) =>
    ImageSliderSettings(
      design: json['design'] as int? ?? 1,
      animation: json['animation'] as int? ?? 1,
      animation_duration_miliseconds:
          json['animation_duration_miliseconds'] as int? ?? 500,
      auto_duration_seconds: json['auto_duration_seconds'] as int? ?? 3,
      auto_play: json['auto_play'] as int? ?? 1,
      center_page: json['center_page'] as int? ?? 1,
      enabled_label: json['enabled_label'] as int? ?? 0,
      image_radius: json['image_radius'] as int? ?? 10,
      reverse: json['reverse'] as int? ?? 1,
      shadow_frame: json['shadow_frame'] as int? ?? 0,
      enabled_infinite_scroll: json['enabled_infinite_scroll'] as int? ?? 1,
      size: json['size'] as int? ?? 400,
      enabled_indicator: json['enabled_indicator'] as int? ?? 1,
    );

Map<String, dynamic> _$ImageSliderSettingsToJson(
        ImageSliderSettings instance) =>
    <String, dynamic>{
      'design': instance.design,
      'animation': instance.animation,
      'auto_duration_seconds': instance.auto_duration_seconds,
      'animation_duration_miliseconds': instance.animation_duration_miliseconds,
      'reverse': instance.reverse,
      'auto_play': instance.auto_play,
      'center_page': instance.center_page,
      'image_radius': instance.image_radius,
      'enabled_label': instance.enabled_label,
      'shadow_frame': instance.shadow_frame,
      'enabled_infinite_scroll': instance.enabled_infinite_scroll,
      'enabled_indicator': instance.enabled_indicator,
      'size': instance.size,
    };
