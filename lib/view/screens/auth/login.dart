import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promotion_pro/controller/auth/login_controller.dart';
import 'package:promotion_pro/core/localization/changelocale.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return GetBuilder<LoginControllerImp>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.green,
            backgroundColor: Colors.red,
            leading: const Icon(Icons.star),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(LocaleController.getLocalLang().languageCode),
                IconButton(
                  onPressed: () {
                    LocaleController.changeLang('en');
                  },
                  icon: const Icon(
                    Icons.language,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
