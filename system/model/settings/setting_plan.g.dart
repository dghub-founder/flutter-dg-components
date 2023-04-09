// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingPlan _$SettingPlanFromJson(Map<String, dynamic> json) => SettingPlan(
      id: json['id'] as String,
      enabled: json['enabled'] as int,
      title: json['title'] as String,
      setting:
          SettingPlanChild.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingPlanToJson(SettingPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'setting': instance.setting,
    };
