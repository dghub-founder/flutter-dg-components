// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_header_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingHeaderBar _$SettingHeaderBarFromJson(Map<String, dynamic> json) =>
    SettingHeaderBar(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting: SettingHeaderBarChild.fromJson(
          json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingHeaderBarToJson(SettingHeaderBar instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
