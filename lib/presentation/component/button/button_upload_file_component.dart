import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import 'package:app_acomo/presentation/component/button/button_component.dart';

import 'package:app_acomo/utils/icons_utils.dart';
import 'package:app_acomo/utils/color_utils.dart';

class ButtonUploadFileComponent extends StatefulWidget {
  final String name;
  const ButtonUploadFileComponent({
    super.key,
    required this.name,
  });

  @override
  State<ButtonUploadFileComponent> createState() =>
      _ButtonUploadFileComponentState();
}

class _ButtonUploadFileComponentState extends State<ButtonUploadFileComponent> {
  late String name;
  Color _color = black;

  @override
  void initState() {
    name = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ButtonComponent(text: name, color: _color, onPressed: _pickFile)
        .buttonIcon(iconUtils['upload']);
  }

  void _pickFile() async {
    final file = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (file == null) {
      name = 'Partel frontal del documento';
      _color = black;
      setState(() {});
      return;
    }
    name = file.files.first.name;
    _color = green;
    setState(() {});

    // print(result?.files.first.name);
    // print(result?.files.first.size);
    // print(result.files.first.path);
  }
}
