// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_app_theme_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingAppThemeChild _$SettingAppThemeChildFromJson(
        Map<String, dynamic> json) =>
    SettingAppThemeChild(
      detail_page: json['detail_page'] as int,
      default_theme: json['default_theme'] as String,
      enabled_theme_changer: json['enabled_theme_changer'] as bool,
      logo_mode: json['logo_mode'] as String,
      splash_logo_size: (json['splash_logo_size'] as num).toDouble(),
      enabled_splash_background: json['enabled_splash_background'] as bool,
      enabled_splash_logo: json['enabled_splash_logo'] as bool,
    );

Map<String, dynamic> _$SettingAppThemeChildToJson(
        SettingAppThemeChild instance) =>
    <String, dynamic>{
      'detail_page': instance.detail_page,
      'default_theme': instance.default_theme,
      'enabled_theme_changer': instance.enabled_theme_changer,
      'logo_mode': instance.logo_mode,
      'splash_logo_size': instance.splash_logo_size,
      'enabled_splash_logo': instance.enabled_splash_logo,
      'enabled_splash_background': instance.enabled_splash_background,
    };
