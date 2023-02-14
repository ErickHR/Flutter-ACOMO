import 'package:flutter/material.dart';

import 'package:app_acomo/domain/var_global/var_global.dart';

import 'package:app_acomo/routes/routes.dart';

import 'package:app_acomo/utils/img_utils.dart';
import 'package:app_acomo/utils/icons_utils.dart';
import 'package:app_acomo/utils/navigator_utils.dart';
import 'package:app_acomo/utils/theme_text/theme_text_utils.dart';

import 'package:app_acomo/presentation/view/login/sign_in/type_user_presentation.dart';

import 'package:app_acomo/presentation/component/input/input_password_component.dart';
import 'package:app_acomo/presentation/component/button/button_component.dart';
import 'package:app_acomo/presentation/component/input/input_checkbox_component.dart';
import 'package:app_acomo/presentation/component/input/input_number_component.dart';

class SignInPresentation extends StatefulWidget {
  const SignInPresentation({super.key});

  @override
  State<SignInPresentation> createState() => _SignInPresentationState();
}

class _SignInPresentationState extends State<SignInPresentation> {
  String selectUser = typeUserDefault;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconAcomo(width: 100.0),
                  const SizedBox(
                    height: 80.0,
                  ),
                  TypeUserPresentation(selectUserCallBack: selectUserFunction),
                  showAbdHideInputStandar(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InputNumberComponent(
                    hintText: 'N° de Documento',
                    prefixIcon: iconUtils['number_document'],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const InputPasswordComponent(),
                  const InputCheckBoxComponent(name: 'Recordarme'),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ButtonComponent(
                    text: 'Iniciar Sesión',
                    onPressed: NavigatorUtils.pushReplacementNamed(context,
                        routeName: '/dashboard'),
                  ).button(),
                  const SizedBox(
                    height: 40.0,
                  ),
                  forgotPassword(context),
                  const SizedBox(
                    height: 4.0,
                  ),
                  haveAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector forgotPassword(BuildContext context) {
    return GestureDetector(
      child: const Text(
        'Olvidaste tu contraseña?',
        style: textGreen500,
      ),
      onTap: () {
        Navigator.pushNamed(context, Routes.getRoutesPath('/password-forgot'),);
      },
    );
  }

  Widget showAbdHideInputStandar() {
    return selectUser == typeUserDefault
        ? Container()
        : const InputNumberComponent(
            hintText: 'N° de RUC',
            prefixIcon: Icons.business,
          );
  }

  Widget haveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Tienes una cuenta?'),
        GestureDetector(
          child: const Text(
            ' Registrate',
            style: textGreen500,
          ),
          onTap: () {
            Navigator.pushNamed(context,  Routes.getRoutesPath('/register') ,);
          },
        )
      ],
    );
  }

  selectUserFunction(selectUserValue) {
    setState(() {});
    selectUser = selectUserValue;
  }
}
