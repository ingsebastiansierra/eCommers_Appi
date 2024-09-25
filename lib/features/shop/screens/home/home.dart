import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:flutter_app_1/utils/helpers/helper_functions.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/layouts/grid_layouts.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/image_strings.dart';
import '../../../../utils/constans/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(children: [
                //appbar
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),
                //search bar
                TSearchContainer(text: 'Search in Store'),
                SizedBox(height: TSizes.spaceBtwSections),
                //categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      THomeCategories(),
                    ],
                  ),
                )
              ]),
            ),

            /// TODO:  Body IMAGE CAROUSEL
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// TODO: Slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
