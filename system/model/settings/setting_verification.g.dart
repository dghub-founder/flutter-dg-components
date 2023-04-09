// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingVerification _$SettingVerificationFromJson(Map<String, dynamic> json) =>
    SettingVerification(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingVerificationChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingVerificationToJson(
        SettingVerification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
