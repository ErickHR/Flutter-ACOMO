import 'package:app_acomo/presentation/component/alert/alert_component.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/utils/img_utils.dart';
import 'package:app_acomo/utils/icons_utils.dart';

import 'package:app_acomo/presentation/component/appbar/back_appbar_component.dart';
import 'package:app_acomo/presentation/component/button/button_component.dart';
import 'package:app_acomo/presentation/component/input/input_string_component.dart';

class ForgotPasswordPresentation extends StatelessWidget with AlertComponent {
  const ForgotPasswordPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const BackAppBarComponent(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height - 86.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconAcomo(width: 100.0),
                  const SizedBox(
                    height: 50.0,
                  ),
                  InputStringComponent(
                    hintText: 'Ingrese su correo electrónico',
                    prefixIcon: iconUtils['email'],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ButtonComponent(
                    text: 'Enviar correo',
                    onPressed: () => super.showModalDialog(
                      context,
                      title: 'Mensaje',
                      content: 'Correo enviado',
                    ),
                  ).button(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// class ForgotPasswordPresentation extends StatelessWidget with AlertComponent {
//   const ForgotPasswordPresentation({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: const BackAppBarComponent(),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: SizedBox(
//             height: height - 86.0,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   iconAcomo(width: 100.0),
//                   const SizedBox(
//                     height: 50.0,
//                   ),
//                   InputStringComponent(
//                     hintText: 'Ingrese su correo electrónico',
//                     prefixIcon: iconUtils['email'],
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   ButtonComponent(
//                     text: 'Enviar correo',
//                     onPressed: sendEmail(context),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
 
//   }

//   sendEmail(BuildContext context) {
//     showModalDialog(context);
//   }
// }
