import 'package:flutter/material.dart';

import 'package:app_acomo/utils/color_utils.dart';

class InputPasswordComponent extends StatefulWidget {
  const InputPasswordComponent({super.key});

  @override
  State<InputPasswordComponent> createState() => _InputPasswordComponentState();
}

class _InputPasswordComponentState extends State<InputPasswordComponent> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textAlignVertical: TextAlignVertical.center,
      obscureText: !showPassword,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        labelStyle: const TextStyle(color: black),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: black),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: black.withOpacity(.2)),
        ),
        prefixIcon: const Icon(
          Icons.lock,
          color: black,
        ),
        suffixIcon: GestureDetector(
          child: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: black,
          ),
          onTap: () => setState(() {
            showPassword = !showPassword;
          }),
        ),
      ),
    );
  }
}
