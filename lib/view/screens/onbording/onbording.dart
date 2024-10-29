import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:promotion_pro/controller/onbording/onbording_controller.dart';
import 'package:promotion_pro/core/constants/color.dart';
import 'package:promotion_pro/core/functions/size.dart';
import 'package:promotion_pro/data/model/onbording/page_onbording_model.dart';
import 'package:promotion_pro/data/resource/static/onbording/pages_data.dart';
import 'package:promotion_pro/view/widgets/onbording/background.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingControllerImp());
    return GetBuilder<OnbordingControllerImp>(
      builder: (controller) {
        return Scaffold(
          body: BackgroundCustom(
            center: true,
            top: true,
            body: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              primary: false,
              children: [
                SizedBox(height: height(50)),
                SizedBox(
                  height: height(450),
                  child: PageView.builder(
                    onPageChanged: controller.onPageChanged,
                    controller: controller.pageController,
                    itemCount: onbordingPages.length,
                    itemBuilder: (context, index) {
                      PageOnbordingModel page = onbordingPages[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(page.imagePath),
                          SizedBox(height: height(15)),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width(35)),
                            child: Text(
                              page.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width(18),
                              ),
                            ),
                          ),
                          SizedBox(height: height(15)),
                          Text(
                            page.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onbordingPages.length,
                      (index) {
                        bool foucs = controller.currentPage == index;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 750),
                          margin: EdgeInsets.symmetric(horizontal: width(10)),
                          width: width(foucs ? 40 : 25),
                          height: height(5),
                          decoration: BoxDecoration(
                            color: foucs ? AppColor.primary : AppColor.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: height(100)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: controller.next,
                      color: AppColor.primary,
                      textColor: AppColor.white,
                      child: Text(
                        "next".tr,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(width: width(30)),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
