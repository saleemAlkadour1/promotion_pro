import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'arabic': "عربي",
          'english': "إنكليزي",
          'turkey': "تركي",
          'choose_language': "اختر لغتك المناسبة",
          'next': "التالي",
        },
        'en': {
          'arabic': "Arabic",
          'english': "English",
          'turkey': "Turkish",
          'choose_language': "Choose your appropriate language",
          'next': "Next",
        },
        'tr': {
          'arabic': "Arapça",
          'english': "İngilizce",
          'turkey': "Türkçe",
          'choose_language': "Uygun dilinizi seçin",
          'next': "sonraki",
        },
      };
}
