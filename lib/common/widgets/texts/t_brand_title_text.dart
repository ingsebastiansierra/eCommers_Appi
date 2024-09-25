import 'package:flutter/material.dart';
import 'package:flutter_app_1/utils/constans/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.Small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.Small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.Medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.Large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
