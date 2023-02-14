import 'package:app_acomo/utils/color_utils.dart';
import 'package:flutter/material.dart';

class InputCheckBoxComponent extends StatefulWidget {
  final String name;
  const InputCheckBoxComponent({super.key, required this.name});

  @override
  State<InputCheckBoxComponent> createState() => _InputCheckBoxComponentState();
}

class _InputCheckBoxComponentState extends State<InputCheckBoxComponent> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          activeColor: black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          onChanged: ((value) {
            setState(() {
              isChecked = value;
            });
          }),
        ),
        Text(widget.name),
      ],
    );
  }
}
