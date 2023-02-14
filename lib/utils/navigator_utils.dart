import 'package:app_acomo/routes/routes.dart';
import 'package:flutter/material.dart';

class NavigatorUtils {
  static pushReplacementNamed(BuildContext context,
      {required String routeName}) {
    return () {
      Navigator.of(context)
          .pushReplacementNamed(Routes.routesPathMap[routeName].toString());
    };
  }

  static pushNamed(BuildContext context, {String routeName = ''}) {
    return () {
      Navigator.of(context).pushNamed(Routes.getRoutesPath(routeName));
    };
  }

  static pushNamedWithArguments(BuildContext context,
      {required String routeName,
      required Map<String, dynamic> routeArguments}) {
    return () {
      Navigator.of(context).pushNamed(
        Routes.getRoutesPath(routeName),
        arguments: routeArguments,
      );
    };
  }

  static pop(
    BuildContext context,
  ) {
    return () {
      Navigator.of(context).pop();
    };
  }

  static popName(
    BuildContext context,
  ) {
    return () {
      Navigator.of(context).pop();
    };
  }
}
