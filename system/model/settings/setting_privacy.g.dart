// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_privacy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPrivacy _$SettingPrivacyFromJson(Map<String, dynamic> json) =>
    SettingPrivacy(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: json['setting'] as String,
    );

Map<String, dynamic> _$SettingPrivacyToJson(SettingPrivacy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
