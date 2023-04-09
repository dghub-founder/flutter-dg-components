class SwitchSetting {
  bool isEnabled;
  Function(bool) onChanged;

  SwitchSetting({required this.isEnabled, required this.onChanged});
}
