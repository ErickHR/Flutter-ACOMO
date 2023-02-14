import 'package:flutter/material.dart';

import 'package:app_acomo/routes/routes.dart';

import 'package:app_acomo/presentation/component/appbar/back_appbar_component.dart';
import 'package:app_acomo/presentation/component/button/button_upload_file_component.dart';
import 'package:app_acomo/presentation/component/button/button_component.dart';
// import 'package:app_acomo/presentation/component/camera/camera_component.dart';
import 'package:app_acomo/presentation/component/input/input_number_component.dart';
import 'package:app_acomo/presentation/component/input/input_select_component.dart';

import 'package:app_acomo/utils/icons_utils.dart';
import 'package:app_acomo/utils/navigator_utils.dart';
import 'package:app_acomo/utils/style_utils.dart';

import 'package:app_acomo/domain/var_global/var_global.dart';

class RegisterPresentation extends StatelessWidget {
  const RegisterPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    // CameraDomain.initializeCamera();
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const BackAppBarComponent(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(spacing),
            child: Column(
              children: [
                const InputSelectComponent(items: typeDocument),
                const SizedBox(
                  height: spacing,
                ),
                InputNumberComponent(
                  hintText: 'Número de documento',
                  prefixIcon: iconUtils['number_document'],
                ),
                const SizedBox(
                  height: spacing,
                ),
                const ButtonUploadFileComponent(
                  name: 'Parte Frontal del documento ',
                ),
                // IconButton(
                //   onPressed: NavigatorUtils.pushNamed(
                //     context,
                //     routeName: Routes.getRoutesPath('/camera'),
                //   ),
                //   icon: Icon(iconUtils['photo_camera']),
                // ),
                const SizedBox(
                  height: spacing,
                ),
                const ButtonUploadFileComponent(
                  name: 'Parte Posterior del documento',
                ),
                const SizedBox(
                  height: spacing,
                ),
                ButtonComponent(
                  text: 'Tomarse una foto con su documento de identificación',
                  onPressed: NavigatorUtils.pushNamed(
                    context,
                    routeName: Routes.getRoutesPath('/camera'),
                  ),
                ).button(),
                const SizedBox(
                  height: spacing,
                ),
                ButtonComponent(
                  text: 'Registrarse',
                  onPressed: () {},
                ).button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
