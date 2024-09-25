import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constans/colors.dart';
import '../../../utils/constans/enums.dart';
import '../../../utils/constans/sizes.dart';
import 't_brand_title_text.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxlines = 1,
    required this.title,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.Small,
  });

  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
              title: title,
              color: textColor,
              maxLines: maxlines,
              textAlign: textAlign,
              brandTextSize: brandTextSize),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(Iconsax.verify5,
            color: TColors.primary, size: TSizes.iconsXs),
      ],
    );
  }
}
