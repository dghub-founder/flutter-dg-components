import 'package:json_annotation/json_annotation.dart';

part 'setting_price_child.g.dart';

@JsonSerializable(includeIfNull: true)
class SettingPriceChild {
  String currency;
  String symbol;
  String country;
  bool is_right;
  String mode;
  String fee;

  SettingPriceChild(
      {required this.country,
      required this.currency,
      required this.symbol,
      required this.is_right,
      required this.mode,
      required this.fee});

  factory SettingPriceChild.fromJson(Map<String, dynamic> json) =>
      _$SettingPriceChildFromJson(json);
  Map<String, dynamic> toJson() => _$SettingPriceChildToJson(this);
}
