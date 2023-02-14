import 'package:app_acomo/utils/img_utils.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/routes/routes.dart';

import 'package:app_acomo/utils/color_utils.dart';

class SplashPresentation extends StatelessWidget {
  const SplashPresentation({super.key});

  void initState(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        Routes.getRoutesPath('/sign-up'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    initState(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Center(
            child: logoAcomo(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 40.0),
                    child: const CircularProgressIndicator(
                      color: black,
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }

  Widget logoAcomo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconAcomo(),
          const SizedBox(
            width: 20.0,
          ),
          const Text(
            'Acomo',
            style: TextStyle(
                color: black, fontSize: 60.0, fontWeight: FontWeight.w500),
          ),
        ],
      );
}
