import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/layouts/grid_layouts.dart';
import 'package:flutter_app_1/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:flutter_app_1/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constans/image_strings.dart';
import '../../../../../utils/constans/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TBrandShowCase(
                    images: [
                      TImages.productImage1,
                      TImages.productImage11,
                      TImages.productImage12
                    ],
                  ),
                  const TBrandShowCase(
                    images: [
                      TImages.productImage1,
                      TImages.productImage14,
                      TImages.productImage15
                    ],
                  ),
                  TSectionHeading(title: 'You might like', onPressed: () {}),
                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                  const SizedBox(height: TSizes.spaceBtwItems)
                ],
              ),
            ),
          ),
        ]);
  }
}
