import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_app_1/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_app_1/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:get/get.dart';
import '../../../../utils/constans/sizes.dart';
import '../../../../utils/constans/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TTexts.signupTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSignupForm(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //TODO: DIVIDER
                  TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //Todo: Social Buttons
                  const TSocialButtons(),
                ],
              ))),
    );
  }
}
