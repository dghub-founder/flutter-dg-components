// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_login_required.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingLoginRequired _$SettingLoginRequiredFromJson(
        Map<String, dynamic> json) =>
    SettingLoginRequired(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingLoginRequiredChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingLoginRequiredToJson(
        SettingLoginRequired instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
