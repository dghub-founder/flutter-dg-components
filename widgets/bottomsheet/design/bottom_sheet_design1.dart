import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
import '..../../../../../constants/extensions.dart';

import '../../../tools/dg-tools.dart';

class BottomSheetDesign1 extends StatelessWidget {
  final Widget child;
  final String title;
  final bool hideTitle;
  final bool hideCloseIcon;
  final bool hideTop;
  const BottomSheetDesign1(
      {required this.child,
      required this.hideCloseIcon,
      required this.hideTitle,
      required this.title,
      this.hideTop = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    DGTools.navBarColor(color: Theme.of(context).backgroundColor);
    return Container(
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!hideTop)
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                        child: hideTitle
                            ? SizedBox()
                            : Marquee(
                                child: Text(
                                  title,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                    if (!hideCloseIcon)
                      GestureDetector(
                          onTap: () => context.back(),
                          child: Icon(
                            Icons.close,
                            size: 20,
                          ))
                  ],
                ),
              ),
            if (!hideTop)
              Divider(height: 0.2, thickness: 0.2, color: Colors.grey),
            AnimatedPadding(
                padding:
                    EdgeInsets.only(bottom: DGTools.keyboardHeight(context)),
                duration: Duration(milliseconds: 500),
                child: child)
          ],
        ),
      ),
    );
  }
}
