import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_app_1/features/authentication/screens/login/login.dart';
import 'package:flutter_app_1/utils/constans/sizes.dart';
import 'package:flutter_app_1/utils/constans/text_string.dart';
import 'package:flutter_app_1/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import '../../../../utils/constans/image_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                Image(
                  image: const AssetImage(TImages.deliveryEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                Text(TTexts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text('vegasebastian073@gmail.com',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: TImages.staticSuccessIllustration,
                            title: TTexts.yourAccountCreatedTitle,
                            subTitle: TTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: const Text(TTexts.tContinue)),
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(TTexts.resendEmail)),
                ),
              ],
            )),
      ),
    );
  }
}
