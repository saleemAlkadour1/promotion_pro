import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promotion_pro/core/classes/shared_preferences.dart';
import 'package:promotion_pro/core/constants/routes.dart';
import 'package:promotion_pro/data/resource/static/onbording/pages_data.dart';

abstract class OnbordingController extends GetxController {
  onPageChanged(int page);
  next();
}

class OnbordingControllerImp extends OnbordingController {
  late PageController pageController;
  int currentPage = 0;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  onPageChanged(int page) {
    currentPage = page;
    update();
  }

  @override
  next() {
    if (currentPage < onbordingPages.length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 750),
        curve: Curves.easeIn,
      );
      update();
    } else {
      Shared.setValue('step', 1);
      Get.offAndToNamed(AppRoutes.chooseLanguage);
    }
  }
}
