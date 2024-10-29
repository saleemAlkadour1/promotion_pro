import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promotion_pro/controller/onbording/choose_language_controller.dart';
import 'package:promotion_pro/core/constants/color.dart';
import 'package:promotion_pro/core/functions/size.dart';
import 'package:promotion_pro/core/localization/changelocale.dart';
import 'package:promotion_pro/view/widgets/onbording/background.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChooseLanguageControllerImp());
    return GetBuilder<ChooseLanguageControllerImp>(
      builder: (controller) {
        return Scaffold(
          body: BackgroundCustom(
            top: true,
            bottom: true,
            body: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height(60),
                      child: Text(
                        "choose_language".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width(24),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height(500),
                      child: ListView(
                        children: [
                          ...myLanguages.entries.map((entry) {
                            var lang = entry.value;

                            bool selectesLang =
                                controller.selectesLanguage == entry.key;
                            return Container(
                              margin: EdgeInsets.symmetric(
                                vertical: height(5),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  controller.changeLangauge(entry);
                                },
                                padding: EdgeInsets.zero,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: selectesLang
                                          ? AppColor.third
                                          : AppColor.grey2,
                                    ),
                                    borderRadius: BorderRadius.circular(13),
                                    color: selectesLang
                                        ? AppColor.third
                                        : AppColor.white,
                                  ),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          blurRadius: 5,
                                          spreadRadius: 0.5,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                      border: Border.all(
                                        color: selectesLang
                                            ? AppColor.third
                                            : AppColor.grey2,
                                      ),
                                      borderRadius: BorderRadius.circular(9),
                                      color: selectesLang
                                          ? AppColor.primary
                                          : AppColor.white,
                                    ),
                                    child: ListTile(
                                      tileColor: selectesLang
                                          ? AppColor.primary
                                          : AppColor.white,
                                      shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      leading: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset(
                                          lang['image'],
                                          height: 40,
                                        ),
                                      ),
                                      title: Text(
                                        "${lang['name']}".tr,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: selectesLang
                                              ? AppColor.white
                                              : AppColor.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                    Container(
                      width: getWidth() * 0.8,
                      height: height(50),
                      margin: EdgeInsets.symmetric(horizontal: width(20)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        color: AppColor.primary,
                        textColor: AppColor.white,
                        child: Text(
                          "next".tr,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
