import 'package:flutter/material.dart';

import '../widget_tools/app_restart.dart';
import '../widget_tools/responsive.dart';
import 'config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

typedef M = Map<String, dynamic>;

extension Extension on BuildContext {
  AppLocalizations l() {
    return AppLocalizations.of(this)!;
  }

  void toNamed(String value, {dynamic arguments}) async {
    await Navigator.pushNamed(this, value, arguments: arguments);
  }

  void toNamedRemove(String value) async {
    await Navigator.pushNamedAndRemoveUntil(this, value, (route) => false);
  }

  void back({String? value}) {
    Navigator.pop(this, value);
  }

  getArguments() {
    return ModalRoute.of(this)!.settings.arguments;
  }

  double getPadding() {
    return Responsive.isMobile(this) ? mobilePadding : desktopPadding;
  }

  restartApp() {
    AppRestart.restart(this);
  }
}
