// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_paypal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPaypal _$SettingPaypalFromJson(Map<String, dynamic> json) =>
    SettingPaypal(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingPaypalChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingPaypalToJson(SettingPaypal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
