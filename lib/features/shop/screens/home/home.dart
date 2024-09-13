import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_app_1/utils/helpers/helper_functions.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/image_strings.dart';
import '../../../../utils/constans/sizes.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
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
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: TPromoSlider(banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3
                ])),

              
          ],
        ),
      ),
    );
  }
}
