// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPayment _$SettingPaymentFromJson(Map<String, dynamic> json) =>
    SettingPayment(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingPaymentChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingPaymentToJson(SettingPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
