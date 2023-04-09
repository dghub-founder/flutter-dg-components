// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_unity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingUnity _$SettingUnityFromJson(Map<String, dynamic> json) => SettingUnity(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingUnityChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingUnityToJson(SettingUnity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
