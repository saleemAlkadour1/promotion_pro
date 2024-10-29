import 'package:get/get.dart';
import 'package:promotion_pro/core/constants/routes.dart';
import 'package:promotion_pro/core/middleware/middleware.dart';
import 'package:promotion_pro/view/screens/home/home.dart';
import 'package:promotion_pro/view/screens/onbording/choose_language.dart';
import 'package:promotion_pro/view/screens/onbording/onbording.dart';
import 'package:promotion_pro/view/screens/auth/login.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: '/', page: () => const Onbording(), middlewares: [
    MyMiddleWare(),
  ]),
  GetPage(name: AppRoutes.onbording, page: () => const Onbording()),
  GetPage(name: AppRoutes.chooseLanguage, page: () => const ChooseLanguage()),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.home, page: () => const Home()),
];
