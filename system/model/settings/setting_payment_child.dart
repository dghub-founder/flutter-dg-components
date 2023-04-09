import 'package:json_annotation/json_annotation.dart';

part 'setting_payment_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPaymentChild {
  int enabled_payment_slip_upload;
  int enabled_ticket;
  int enabled_buy_from_agent;
  int enabled_merchant;
  int enabled_wallet;
  int enabled_stripe;
  int enabled_paypal;

  SettingPaymentChild(
      {required this.enabled_buy_from_agent,
      required this.enabled_payment_slip_upload,
      required this.enabled_ticket,
      required this.enabled_merchant,
      required this.enabled_wallet,
      required this.enabled_stripe,
      required this.enabled_paypal
      });

  factory SettingPaymentChild.fromJson(Map<String, dynamic> json) =>
      _$SettingPaymentChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPaymentChildToJson(this);
}
