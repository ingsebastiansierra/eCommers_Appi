import 'package:flutter/material.dart';
import '../../../utils/constans/colors.dart';
import '../../../utils/constans/image_strings.dart';
import '../../../utils/constans/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: TColors.darkGrey),
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: const Image(
              width: TSizes.iconsMd,
              height: TSizes.iconsMd,
              image: AssetImage(TImages.google)),
        ),
      ),
      const SizedBox(width: TSizes.spaceBtwItems),
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: TColors.darkGrey),
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: const Image(
              width: TSizes.iconsMd,
              height: TSizes.iconsMd,
              image: AssetImage(TImages.facebook)),
        ),
      )
    ]);
  }
}
