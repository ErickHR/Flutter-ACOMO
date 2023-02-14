import 'package:flutter/material.dart';

import 'package:app_acomo/presentation/view/dashboard/dashboard_presentation.dart';
import 'package:app_acomo/presentation/view/camera/camera_presentation.dart';
import 'package:app_acomo/presentation/view/login/password/forgot_password_presentation.dart';
import 'package:app_acomo/presentation/view/login/register/register_presentation.dart';
import 'package:app_acomo/presentation/view/login/sign_in/sign_in_presentation.dart';
import 'package:app_acomo/presentation/view/login/splash_presentation.dart';

class Routes {
  static final Map<String, String> routesPathMap = {
    '/': '/',
    '/sign-up': '/sign-up',
    '/password-forgot': '/password-forgot',
    '/register': '/register',
    '/dashboard': '/dashboard',
    '/camera': '/camera',
    // '/show-photo': '/show-photo',
  };

  static final List<String> routesPath = routesPathMap.values.toList();

  static final List<WidgetBuilder> routerWidget = [
    (BuildContext context) => const SplashPresentation(),
    (BuildContext context) => const SignInPresentation(),
    (BuildContext context) => const ForgotPasswordPresentation(),
    (BuildContext context) => const RegisterPresentation(),
    (BuildContext context) => const DashboardPresentation(),
    (BuildContext context) => const CameraPresentation(),
    // (BuildContext context) => const ShowPhotoPresentation(),
  ];

  static Map<String, WidgetBuilder> get getRoutes {
    Map<String, WidgetBuilder> routes = {};
    for (int position = 0; position < routesPath.length; position++) {
      routes.addAll({routesPath[position]: routerWidget[position]});
    }
    return routes;
  }

  static String get initialRoute {
    return Routes.routesPath[0];
  }

  static String getRoutesPath(String routeName) {
    return Routes.routesPathMap[routeName].toString();
  }
}
