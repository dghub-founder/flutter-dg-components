import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../widget_tools/responsive.dart';

class HorizontalSliderView extends StatefulWidget {
  final EdgeInsets headerPadding;
  final EdgeInsets bodyPadding;
  final bool isLoading;
  final String label;
  final bool hide_view_all_label;
  final bool hide_view_all_icon;
  final Function headerOnClick;
  final List<Widget> body;
  final bool isEditMode;
  final Function()? onDelete;
  final Function()? onEdit;
  const HorizontalSliderView(
      {required this.body,
      this.hide_view_all_icon = false,
      this.hide_view_all_label = true,
      this.headerPadding = const EdgeInsets.fromLTRB(15, 8, 15, 8),
      this.bodyPadding = const EdgeInsets.fromLTRB(15, 0, 15, 0),
      required this.headerOnClick,
      required this.label,
      this.isLoading = false,
      this.isEditMode = false,
      this.onDelete,
      this.onEdit,
      Key? key})
      : super(key: key);

  @override
  State<HorizontalSliderView> createState() => _HorizontalSliderViewState();

  static Widget loading(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.fromLTRB(15, 0, 15, 0)
              : const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.grey.withOpacity(0.4),
                child: Shimmer.fromColors(
                  baseColor: theme.cardColor,
                  highlightColor: theme.backgroundColor,
                  child: Container(
                    color: Colors.grey.withOpacity(0.4),
                    width: 200,
                    height: 30,
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                color: Colors.grey.withOpacity(0.4),
                child: Shimmer.fromColors(
                  baseColor: theme.cardColor,
                  highlightColor: theme.backgroundColor,
                  child: Container(
                    color: Colors.grey.withOpacity(0.4),
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.grey.withOpacity(0.4),
            child: Shimmer.fromColors(
              baseColor: theme.cardColor,
              highlightColor: theme.backgroundColor,
              child: Container(
                color: Colors.grey.withOpacity(0.4),
                width: double.infinity,
                height: 200,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _HorizontalSliderViewState extends State<HorizontalSliderView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: widget.headerPadding,
          child: GestureDetector(
            onTap: () => widget.headerOnClick(),
            child: Row(
              children: [
                Expanded(
                  child:
                      Text(widget.label, style: const TextStyle(fontSize: 16)),
                ),
                if (!widget.hide_view_all_label)
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Text('View all',
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ),
                if (!widget.hide_view_all_icon)
                  if (!widget.isEditMode) Icon(Icons.arrow_forward_rounded),
                SizedBox(width: 10),
                if (widget.isEditMode)
                  GestureDetector(
                      onTap: widget.onDelete, child: Icon(Icons.delete)),
                SizedBox(width: 10),
                if (widget.isEditMode)
                  GestureDetector(
                      onTap: widget.onEdit, child: Icon(Icons.edit)),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: widget.bodyPadding,
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.body))
      ],
    );
  }
}
