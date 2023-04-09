// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_verification_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingVerificationChild _$SettingVerificationChildFromJson(
        Map<String, dynamic> json) =>
    SettingVerificationChild(
      email_dismissible: json['email_dismissible'] as int,
      otp_dismissible: json['otp_dismissible'] as int,
      email_enabled: json['email_enabled'] as int,
      otp_enabled: json['otp_enabled'] as int,
    );

Map<String, dynamic> _$SettingVerificationChildToJson(
        SettingVerificationChild instance) =>
    <String, dynamic>{
      'email_dismissible': instance.email_dismissible,
      'otp_dismissible': instance.otp_dismissible,
      'otp_enabled': instance.otp_enabled,
      'email_enabled': instance.email_enabled,
    };
