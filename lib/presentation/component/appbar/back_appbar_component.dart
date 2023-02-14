import 'package:app_acomo/utils/icons_utils.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/utils/color_utils.dart';

class BackAppBarComponent extends StatelessWidget with PreferredSizeWidget {
  const BackAppBarComponent({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      elevation: .0,
      backgroundColor: bgScaffold(context),
      leading: GestureDetector(
        child: Icon(iconUtils['arrow_back'], color: black),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
