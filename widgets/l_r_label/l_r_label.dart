import 'package:flutter/material.dart';

class LRLabel extends StatelessWidget {
  final String lLabel;
  final String rLabel;
  const LRLabel({required this.lLabel, required this.rLabel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              lLabel,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            rLabel,
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
