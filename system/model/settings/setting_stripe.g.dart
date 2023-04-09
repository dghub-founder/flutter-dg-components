// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_stripe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingStripe _$SettingStripeFromJson(Map<String, dynamic> json) =>
    SettingStripe(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingStripeChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingStripeToJson(SettingStripe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
