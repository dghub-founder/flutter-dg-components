// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_import_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingImportData _$SettingImportDataFromJson(Map<String, dynamic> json) =>
    SettingImportData(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingImportDataChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingImportDataToJson(SettingImportData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
