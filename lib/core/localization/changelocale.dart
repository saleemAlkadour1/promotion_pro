import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promotion_pro/core/classes/shared_preferences.dart';
import 'package:promotion_pro/core/constants/assets.dart';

class LocaleController extends GetxController {
  static String languageCode = Get.deviceLocale!.languageCode;

  static changeLang(String langCode) async {
    languageCode = langCode;
    Shared.setValue("langCode", langCode);
    Locale locale = Locale(langCode);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    getLocalLang();
    super.onInit();
  }

  static Locale getLocalLang() {
    String myLangCode = Shared.getValue(
      'langCode',
      initialVAlue: Get.deviceLocale!.languageCode,
    );

    if (!myLanguages.containsKey(myLangCode)) {
      myLangCode = 'en';
    }

    return Locale(myLangCode);
  }
}

Map myLanguages = {
  'en': {
    'name': 'english',
    'dir': 'ltr',
    'image': Assets.icons.images.en,
  },
  'ar': {
    'name': 'arabic',
    'dir': 'rtl',
    'image': Assets.icons.images.ar,
  },
  'tr': {
    'name': 'turkey',
    'dir': 'ltr',
    'image': Assets.icons.images.tr,
  },
};
