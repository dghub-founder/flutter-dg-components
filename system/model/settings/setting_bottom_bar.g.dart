// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_bottom_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingBottomBar _$SettingBottomBarFromJson(Map<String, dynamic> json) =>
    SettingBottomBar(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingBottomBarChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingBottomBarToJson(SettingBottomBar instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
