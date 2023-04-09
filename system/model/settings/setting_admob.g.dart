// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_admob.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingAdmob _$SettingAdmobFromJson(Map<String, dynamic> json) => SettingAdmob(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingAdmobChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingAdmobToJson(SettingAdmob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
