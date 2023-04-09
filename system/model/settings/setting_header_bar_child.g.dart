// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_header_bar_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingHeaderBarChild _$SettingHeaderBarChildFromJson(
        Map<String, dynamic> json) =>
    SettingHeaderBarChild(
      enabled_scroll_to_hide: json['enabled_scroll_to_hide'] as int? ?? 1,
      icon_size: (json['icon_size'] as num?)?.toDouble(),
      design: json['design'] as int,
      hide_drawer_menu: json['hide_drawer_menu'] as int,
      hide_profile: json['hide_profile'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$SettingHeaderBarChildToJson(
        SettingHeaderBarChild instance) =>
    <String, dynamic>{
      'design': instance.design,
      'title': instance.title,
      'hide_drawer_menu': instance.hide_drawer_menu,
      'hide_profile': instance.hide_profile,
      'icon_size': instance.icon_size,
      'enabled_scroll_to_hide': instance.enabled_scroll_to_hide,
    };
