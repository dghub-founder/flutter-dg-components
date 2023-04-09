// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_more.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingMore _$SettingMoreFromJson(Map<String, dynamic> json) => SettingMore(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingMoreChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingMoreToJson(SettingMore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
