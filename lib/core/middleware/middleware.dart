import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promotion_pro/core/classes/shared_preferences.dart';
import 'package:promotion_pro/core/constants/routes.dart';
import 'package:promotion_pro/core/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    initialServices();
    int step = Shared.getValue('step', initialVAlue: 0);
    switch (step) {
      case 0:
        return null;
      case 1:
        return RouteSettings(name: AppRoutes.chooseLanguage);
      case 2:
        return RouteSettings(name: AppRoutes.login);
      case 3:
        return RouteSettings(name: AppRoutes.home);
    }
    return null;
  }
}
