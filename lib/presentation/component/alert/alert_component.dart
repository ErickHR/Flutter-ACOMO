import 'package:flutter/material.dart';

mixin AlertComponent {
  showModalDialog(BuildContext context,
      {String title = '', String content = ''}) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cerrar'),
          )
        ],
      ),
    );
  }
}
