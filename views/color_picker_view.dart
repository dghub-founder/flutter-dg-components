import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../widgets/edittext/edit_text.dart';

class ColorPickerView extends StatefulWidget {
  final int input;
  final Function(int) result;
  const ColorPickerView({required this.input, required this.result, Key? key})
      : super(key: key);

  @override
  State<ColorPickerView> createState() => _ColorPickerViewState();
}

class _ColorPickerViewState extends State<ColorPickerView> {
  TextEditingController colorTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      children: [
        Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              ColorPicker(
                pickerColor: Color(widget.input),
                onColorChanged: (color) {
                  widget.result(
                      int.parse('0xff${colorTextEditingController.text}'));
                },
                colorPickerWidth: 200,
                pickerAreaHeightPercent: 0.7,
                displayThumbColor: true,
                paletteType: PaletteType.hsvWithHue,
                enableAlpha: false,
                labelTypes: const [],
                pickerAreaBorderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(2), topRight: Radius.circular(2)),
                hexInputController: colorTextEditingController,
                portraitOnly: true,
              ),
              EditText(
                  max_length: 8,
                  icon_left: Icons.tag,
                  controller: colorTextEditingController,
                  hint: '#000000',
                  label: 'Color',
                  icon: Icons.paste),
            ],
          ),
        ),
      ],
    );
  }
}
