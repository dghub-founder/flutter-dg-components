import 'package:flutter/material.dart';

class ListItemSelectionMultiple extends StatefulWidget {
  final String label;
  final bool isSelected;
  final Function(String) result;
  const ListItemSelectionMultiple(
      {required this.label,
      required this.isSelected,
      required this.result,
      Key? key})
      : super(key: key);

  @override
  State<ListItemSelectionMultiple> createState() =>
      _ListItemSelectionMultipleState();
}

class _ListItemSelectionMultipleState extends State<ListItemSelectionMultiple> {
  String selectedText = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        setState(() {
          selectedText = widget.label;
        });
        widget.result(selectedText);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: theme.primaryColor, width: 3.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10),
          color: widget.isSelected ? theme.primaryColor : theme.cardColor,
        ),
        // height: 25,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
            child: Text(
              widget.label,
              style: TextStyle(
                  fontSize: 12,
                  color: widget.isSelected ? Colors.white : Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
