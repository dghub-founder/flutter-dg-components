import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:switcher_button/switcher_button.dart';

import '../../../constants/enums.dart';
import '../../../system/model/widgets/switch_setting.dart';
import '../../imageview/imageview.dart';

class ListItemRowIcon extends StatelessWidget {
  final String? photo;
  final String? headLabel;
  final String id;
  final Function onClick;
  final String title;
  final double titleSize;
  final SwitchSetting? switchSetting;
  final IconData icon;
  final double iconSize;
  final Color iconBackgroundColor;
  final List<SlidableAction>? leftActionPane;
  final List<SlidableAction>? rightActionPane;
  final double leftActionPaneSize;
  final double rightActionPaneSize;
  final ShapeBorderType shapeBorderType;
  final double shadow;
  final Color shadow_color;
  final double radius;
  const ListItemRowIcon(
      {this.photo,
      this.headLabel,
      this.id = '',
      this.switchSetting,
      required this.onClick,
      required this.title,
      required this.icon,
      this.iconSize = 15,
      this.titleSize = 12,
      required this.iconBackgroundColor,
      this.leftActionPane,
      this.rightActionPane,
      this.leftActionPaneSize = 0.3,
      this.rightActionPaneSize = 0.3,
      this.shapeBorderType = ShapeBorderType.circle,
      this.shadow = 0,
      this.shadow_color = Colors.grey,
      this.radius = 0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    ShapeBorder shapeBorderTypeSet() {
      switch (shapeBorderType) {
        case ShapeBorderType.circle:
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );
        case ShapeBorderType.beveled:
          return BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );
        case ShapeBorderType.stadium:
          return StadiumBorder(
            side: BorderSide(
              color: Colors.black,
              width: radius,
            ),
          );
        default:
          return BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          );
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headLabel != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
            child: Text(headLabel!,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
          ),
        GestureDetector(
          onTap: () {
            onClick();
          },
          child: Slidable(
            useTextDirection: false,
            key: ValueKey(id),
            endActionPane: rightActionPane == null
                ? null
                : ActionPane(
                    extentRatio: rightActionPaneSize,
                    motion: const ScrollMotion(),
                    dragDismissible: false,
                    children: rightActionPane!.map((e) => e).toList(),
                  ),
            startActionPane: leftActionPane == null
                ? null
                : ActionPane(
                    extentRatio: leftActionPaneSize,
                    motion: const ScrollMotion(),
                    dragDismissible: false,
                    children: leftActionPane!.map((e) => e).toList(),
                  ),
            child: Card(
              shape: shapeBorderTypeSet(),
              color: theme.cardColor,
              elevation: shadow,
              shadowColor: shadow_color,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (photo != null)
                      ImageViewNetwork(width: 40, height: 40, url: photo!),
                    if (photo == null)
                      Card(
                          color: iconBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              icon,
                              color: Colors.white,
                              size: iconSize,
                            ),
                          )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          title,
                          style: TextStyle(fontSize: titleSize),
                        ),
                      ),
                    ),
                    if (switchSetting != null)
                      SwitcherButton(
                        size: 35,
                        value: switchSetting!.isEnabled,
                        onChange: (value) {
                          switchSetting!.onChanged(value);
                        },
                        offColor: Colors.black,
                        onColor: theme.primaryColor,
                      )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
