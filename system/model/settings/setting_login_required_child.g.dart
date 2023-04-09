// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_login_required_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingLoginRequiredChild _$SettingLoginRequiredChildFromJson(
        Map<String, dynamic> json) =>
    SettingLoginRequiredChild(
      enabled_facebook: json['enabled_facebook'] as int,
      enabled_form: json['enabled_form'] as int,
      enabled_google: json['enabled_google'] as int,
      enabled_phone: json['enabled_phone'] as int,
    );

Map<String, dynamic> _$SettingLoginRequiredChildToJson(
        SettingLoginRequiredChild instance) =>
    <String, dynamic>{
      'enabled_google': instance.enabled_google,
      'enabled_facebook': instance.enabled_facebook,
      'enabled_form': instance.enabled_form,
      'enabled_phone': instance.enabled_phone,
    };
