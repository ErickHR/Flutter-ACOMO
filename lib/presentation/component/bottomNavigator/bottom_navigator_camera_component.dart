import 'package:flutter/material.dart';

import 'package:app_acomo/domain/camera/camera_domain.dart';

import 'package:app_acomo/utils/icons_utils.dart';
import 'package:app_acomo/utils/style_utils.dart';

class BottomNavigatorCameraComponent extends StatefulWidget {
  final dynamic setStateWidgetParent ;
  const BottomNavigatorCameraComponent({super.key, required this.setStateWidgetParent });

  @override
  State<BottomNavigatorCameraComponent> createState() =>
      _BottomNavigatorCameraComponentState();
}

class _BottomNavigatorCameraComponentState
    extends State<BottomNavigatorCameraComponent> {
  int selectionBottom = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: spacing,
          ),
          IconButton(
              icon: Icon(
                iconUtils['change'],
                size: spacing * 2,
              ),
              onPressed: () {
                CameraDomain.changeCamera(widget.setStateWidgetParent);
              }),
        ],
      ),
    );
  }
}
