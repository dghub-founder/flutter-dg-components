// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_firebase_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingFirebaseChild _$SettingFirebaseChildFromJson(
        Map<String, dynamic> json) =>
    SettingFirebaseChild(
      api_key: json['api_key'] as String,
      app_id: json['app_id'] as String,
      measurement_id: json['measurement_id'] as String,
      messaging_sender_id: json['messaging_sender_id'] as String,
      auth_domain: json['auth_domain'] as String,
      project_id: json['project_id'] as String,
      storage_bucket: json['storage_bucket'] as String,
    );

Map<String, dynamic> _$SettingFirebaseChildToJson(
        SettingFirebaseChild instance) =>
    <String, dynamic>{
      'api_key': instance.api_key,
      'app_id': instance.app_id,
      'messaging_sender_id': instance.messaging_sender_id,
      'project_id': instance.project_id,
      'auth_domain': instance.auth_domain,
      'storage_bucket': instance.storage_bucket,
      'measurement_id': instance.measurement_id,
    };
