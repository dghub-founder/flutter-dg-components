import 'package:json_annotation/json_annotation.dart';

import 'setting_payment_child.dart';
part 'setting_payment.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPayment {
  String id;
  int enabled;
  String title;
  SettingPaymentChild setting;

  SettingPayment(
      {required this.id,
      required this.enabled,
      required this.title,
      required this.setting});

  factory SettingPayment.fromJson(Map<String, dynamic> json) =>
      _$SettingPaymentFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPaymentToJson(this);
}
