import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/styles/spacing_styles.dart';
import '../../../utils/constans/sizes.dart';
import '../../../utils/constans/text_string.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: TSpacingStyles.paddingWithAppBarHeigth * 2,
                child: Column(
                  children: [
                    //image
                    Image(
                      image: AssetImage(image),
                      width: THelperFunctions.screenWidth() * 0.6,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    //Title & Sub-Title
                    Text(title,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(subTitle,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    //Buttons
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: onPressed,
                          child: const Text(TTexts.tContinue)),
                    ),
                  ],
                ))));
  }
}
