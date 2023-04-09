import 'package:json_annotation/json_annotation.dart';
part 'setting_paypal_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPaypalChild {
  String client_id;

  SettingPaypalChild({required this.client_id});

  factory SettingPaypalChild.fromJson(Map<String, dynamic> json) =>
      _$SettingPaypalChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPaypalChildToJson(this);
}
