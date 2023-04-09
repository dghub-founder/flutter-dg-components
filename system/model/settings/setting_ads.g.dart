// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_ads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingAds _$SettingAdsFromJson(Map<String, dynamic> json) => SettingAds(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: json['setting'] as String,
    );

Map<String, dynamic> _$SettingAdsToJson(SettingAds instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
