import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/styles/spacing_styles.dart';
import 'package:flutter_app_1/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_app_1/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_app_1/utils/constans/text_string.dart';
import 'package:flutter_app_1/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constans/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: TSpacingStyles.paddingWithAppBarHeigth,
                child: Column(
                  children: [
                    // TODO: logo,Title & Sub-Title
                    TLoginHeader(dark: dark),
                    const TLoginForm(),
                    TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    const TSocialButtons()
                  ],
                ))));
  }
}
