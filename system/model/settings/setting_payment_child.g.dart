// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_payment_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPaymentChild _$SettingPaymentChildFromJson(Map<String, dynamic> json) =>
    SettingPaymentChild(
      enabled_buy_from_agent: json['enabled_buy_from_agent'] as int,
      enabled_payment_slip_upload: json['enabled_payment_slip_upload'] as int,
      enabled_ticket: json['enabled_ticket'] as int,
      enabled_merchant: json['enabled_merchant'] as int,
      enabled_wallet: json['enabled_wallet'] as int,
      enabled_stripe: json['enabled_stripe'] as int,
      enabled_paypal: json['enabled_paypal'] as int,
    );

Map<String, dynamic> _$SettingPaymentChildToJson(
        SettingPaymentChild instance) =>
    <String, dynamic>{
      'enabled_payment_slip_upload': instance.enabled_payment_slip_upload,
      'enabled_ticket': instance.enabled_ticket,
      'enabled_buy_from_agent': instance.enabled_buy_from_agent,
      'enabled_merchant': instance.enabled_merchant,
      'enabled_wallet': instance.enabled_wallet,
      'enabled_stripe': instance.enabled_stripe,
      'enabled_paypal': instance.enabled_paypal,
    };
