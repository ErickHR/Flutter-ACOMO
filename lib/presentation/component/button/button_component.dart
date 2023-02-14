import 'package:app_acomo/utils/style_utils.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/utils/color_utils.dart';

class ButtonComponent {
  final String text;
  final dynamic onPressed;
  final Color color;
  const ButtonComponent(
      {required this.text, required this.onPressed, this.color = black});

  Widget button() {
    return SizedBox(
      // height: 40.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: spacing / 2),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonIcon(IconData icon) {
    return SizedBox(
      height: 40.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
