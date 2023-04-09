import 'package:flutter/material.dart';

import '../../lists/list_theme.dart';
import 'bottom_sheet.dart';

bottomSheetThemeChange(BuildContext context) => bottomSheet(
    context: context, title: 'Theme change', child: const ListTheme());
