
import 'package:flutter/material.dart';

import 'package:app_acomo/utils/color_utils.dart';
import 'package:app_acomo/utils/style_utils.dart';
import 'package:app_acomo/utils/theme_text/theme_text_utils.dart';

class InfoAppbarComponent extends StatelessWidget with PreferredSizeWidget {
  const InfoAppbarComponent({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      elevation: 8.0,
      centerTitle: true,
      title: SizedBox(
        width: 140.0,
        child: Row(
          children: [
            changeCurrency('ACOMO COMPRA', 3.9845, context),
            SizedBox(
              width: 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 1.0,
                    height: 40.0,
                    color: black,
                  )
                ],
              ),
            ),
            changeCurrency('ACOMO VENDE', 3.9845, context),
          ],
        ),
      ),
      backgroundColor: bgScaffold(context),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget changeCurrency(String typeChange, double currency, context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(numberBorderRadius / 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            typeChange,
            style: textBlackF8,
          ),
          Text(
            '$currency',
            style: textBlackF14,
          ),
        ],
      ),
    );
  }
}
