import 'package:flutter/material.dart';

import 'design/bottom_sheet_design1.dart';

bottomSheet({
  int design = 1,
  bool hideCloseIcon = false,
  bool hideTitle = false,
  required BuildContext context,
  required String title,
  required Widget child,
  bool hideTop = false,
  bool isDismissible = true,
  bool enableDrag = true,
}) =>
    showModalBottomSheet(
        enableDrag: enableDrag,
        isDismissible: isDismissible,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (ctx) {
          switch (design) {
            case 1:
              return BottomSheetDesign1(
                  hideTop: hideTop,
                  child: child,
                  hideCloseIcon: hideCloseIcon,
                  hideTitle: hideTitle,
                  title: title);
            default:
              return BottomSheetDesign1(
                  hideTop: hideTop,
                  child: child,
                  hideCloseIcon: hideCloseIcon,
                  hideTitle: hideTitle,
                  title: title);
          }
        });
