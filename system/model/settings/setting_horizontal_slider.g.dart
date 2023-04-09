// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_horizontal_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingHorizontalSlider _$SettingHorizontalSliderFromJson(
        Map<String, dynamic> json) =>
    SettingHorizontalSlider(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingHorizontalSliderChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingHorizontalSliderToJson(
        SettingHorizontalSlider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
