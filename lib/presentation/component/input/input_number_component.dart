import 'package:app_acomo/utils/style_utils.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/utils/color_utils.dart';

class InputNumberComponent extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;

  const InputNumberComponent(
      {super.key, required this.hintText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: black,
        ),
        hintText: hintText,
        labelStyle: const TextStyle(color: black),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(numberBorderRadius),
          borderSide: const BorderSide(color: black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(numberBorderRadius),
          borderSide: BorderSide(color: black.withOpacity(.2)),
        ),
      ),
    );
  }
}
