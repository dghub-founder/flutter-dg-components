// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_onboarding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingOnboarding _$SettingOnboardingFromJson(Map<String, dynamic> json) =>
    SettingOnboarding(
      enabled: json['enabled'] as int,
      id: json['id'] as String,
      title: json['title'] as String,
      setting: json['setting'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SettingOnboardingToJson(SettingOnboarding instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
