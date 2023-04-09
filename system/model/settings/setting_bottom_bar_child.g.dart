// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_bottom_bar_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingBottomBarChild _$SettingBottomBarChildFromJson(
        Map<String, dynamic> json) =>
    SettingBottomBarChild(
      design: json['design'] as int,
      hide_text: json['hide_text'] as int,
      float: json['float'] as int,
      radius_bottom_left: (json['radius_bottom_left'] as num).toDouble(),
      radius_bottom_right: (json['radius_bottom_right'] as num).toDouble(),
      radius_top_left: (json['radius_top_left'] as num).toDouble(),
      radius_top_right: (json['radius_top_right'] as num).toDouble(),
      shadow: (json['shadow'] as num).toDouble(),
    );

Map<String, dynamic> _$SettingBottomBarChildToJson(
        SettingBottomBarChild instance) =>
    <String, dynamic>{
      'design': instance.design,
      'hide_text': instance.hide_text,
      'float': instance.float,
      'radius_top_left': instance.radius_top_left,
      'radius_top_right': instance.radius_top_right,
      'radius_bottom_left': instance.radius_bottom_left,
      'radius_bottom_right': instance.radius_bottom_right,
      'shadow': instance.shadow,
    };
