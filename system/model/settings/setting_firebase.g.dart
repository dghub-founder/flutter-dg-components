// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_firebase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingFirebase _$SettingFirebaseFromJson(Map<String, dynamic> json) =>
    SettingFirebase(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingFirebaseChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingFirebaseToJson(SettingFirebase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
