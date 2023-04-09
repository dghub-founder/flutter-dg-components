// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_app_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingAppTheme _$SettingAppThemeFromJson(Map<String, dynamic> json) =>
    SettingAppTheme(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingAppThemeChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingAppThemeToJson(SettingAppTheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
