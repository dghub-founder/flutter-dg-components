// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPrice _$SettingPriceFromJson(Map<String, dynamic> json) => SettingPrice(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingPriceChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingPriceToJson(SettingPrice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
