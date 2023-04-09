// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPassword _$SettingPasswordFromJson(Map<String, dynamic> json) =>
    SettingPassword(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingPasswordChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingPasswordToJson(SettingPassword instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
