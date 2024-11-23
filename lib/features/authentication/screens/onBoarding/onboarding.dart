import 'package:flutter/material.dart';
import 'package:flutter_app_1/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_app_1/features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:flutter_app_1/features/authentication/screens/onBoarding/widgets/onboardingnotnavigation.dart';
import 'package:flutter_app_1/features/authentication/screens/onBoarding/widgets/onboardingskip.dart';
import 'package:flutter_app_1/features/authentication/screens/onBoarding/widgets/onboardinnextButton.dart';
import 'package:flutter_app_1/utils/constans/image_strings.dart';
import 'package:flutter_app_1/utils/constans/text_string.dart';

import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(
      children: [
        //Horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            )
          ],
        ),

        //Horizontal scrollable pages
        const OnBoardingSkip(),

        const OnBoardingNotNavigation(),

        //Horizontal scrollable pages

        const OnBoardingNextButton(),
      ],
    ));
  }
}
