import 'package:get/get.dart';
import 'package:promotion_pro/core/localization/changelocale.dart';

abstract class ChooseLanguageController extends GetxController {
  changeLangauge(entry);
}

class ChooseLanguageControllerImp extends ChooseLanguageController {
  String selectesLanguage = '';

  @override
  changeLangauge(entry) {
    selectesLanguage = entry.key;
    LocaleController.changeLang(entry.key);
    update();
  }
}
