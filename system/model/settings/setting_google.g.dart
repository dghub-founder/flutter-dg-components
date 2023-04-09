// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_google.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingGoogle _$SettingGoogleFromJson(Map<String, dynamic> json) =>
    SettingGoogle(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingGoogleChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingGoogleToJson(SettingGoogle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
