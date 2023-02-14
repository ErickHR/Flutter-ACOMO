import 'package:app_acomo/utils/color_utils.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/utils/style_utils.dart';

class InputSelectComponent extends StatelessWidget {
  final List<String> items;

  const InputSelectComponent({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: const Text('Tipo de Documento'),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: black),
          borderRadius: BorderRadius.circular(numberBorderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: black.withOpacity(.2)),
          borderRadius: BorderRadius.circular(numberBorderRadius),
        ),
      ),
      onChanged: (String? value) {},
    );
  }
}
