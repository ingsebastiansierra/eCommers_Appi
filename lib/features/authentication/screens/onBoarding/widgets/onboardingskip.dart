import 'package:flutter/material.dart';
import 'package:flutter_app_1/utils/constans/sizes.dart';
import 'package:flutter_app_1/utils/device/device_utility.dart';

import '../../../controllers/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        ));
  }
}