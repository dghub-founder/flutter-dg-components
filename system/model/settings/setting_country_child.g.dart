// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_country_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingCountryChild _$SettingCountryChildFromJson(Map<String, dynamic> json) =>
    SettingCountryChild(
      country_code: json['country_code'] as String,
      country_name: json['country_name'] as String,
    );

Map<String, dynamic> _$SettingCountryChildToJson(
        SettingCountryChild instance) =>
    <String, dynamic>{
      'country_name': instance.country_name,
      'country_code': instance.country_code,
    };
