import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../edittext/edit_text.dart';

bottomSheetColorPicker(
        {required BuildContext context,
        required Function(int) result,
        required int input}) =>
    showBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          TextEditingController colorTextEditingController =
              TextEditingController();
          final theme = Theme.of(context);
          return Wrap(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                color: Theme.of(context).backgroundColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Select color',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerRight,
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.grey,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                    ColorPicker(
                      pickerColor: Color(input),
                      onColorChanged: (color) {},
                      colorPickerWidth: 300,
                      pickerAreaHeightPercent: 0.7,
                      displayThumbColor: true,
                      paletteType: PaletteType.hsvWithHue,
                      enableAlpha: false,
                      labelTypes: const [],
                      pickerAreaBorderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(2)),
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
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          primary: Theme.of(context).primaryColor, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {
                          result(int.parse(
                              '0xff${colorTextEditingController.text}'));
                          context.router.pop();
                        },
                        child: const Text('Select'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
