// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_price_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPriceChild _$SettingPriceChildFromJson(Map<String, dynamic> json) =>
    SettingPriceChild(
      country: json['country'] as String,
      currency: json['currency'] as String,
      symbol: json['symbol'] as String,
      is_right: json['is_right'] as bool,
      mode: json['mode'] as String,
      fee: json['fee'] as String,
    );

Map<String, dynamic> _$SettingPriceChildToJson(SettingPriceChild instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'symbol': instance.symbol,
      'country': instance.country,
      'is_right': instance.is_right,
      'mode': instance.mode,
      'fee': instance.fee,
    };
