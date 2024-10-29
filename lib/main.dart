import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:promotion_pro/core/localization/changelocale.dart';
import 'package:promotion_pro/core/localization/translation.dart';
import 'package:promotion_pro/core/services/services.dart';
import 'package:promotion_pro/routes/getx_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: getPages,
      locale: LocaleController.getLocalLang(),
      theme: ThemeData(
        fontFamily: 'Tajawal',
      ),
      translations: MyTranslation(),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: [
        ...myLanguages.entries.map((entry) {
          var lang = entry.key;
          return Locale(lang);
        })
      ],
    );
  }
}
