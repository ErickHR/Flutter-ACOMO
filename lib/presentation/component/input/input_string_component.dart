import 'package:flutter/material.dart';

import 'package:app_acomo/utils/color_utils.dart';

class InputStringComponent extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;

  const InputStringComponent(
      {super.key, required this.hintText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: black,
          ),
          hintText: hintText,
          labelStyle: const TextStyle(color: black),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: black),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: black.withOpacity(.2)),
          ),
        ));
  }
}
