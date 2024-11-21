import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_app_1/common/widgets/appbar/tabbar.dart';
import 'package:flutter_app_1/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_app_1/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_app_1/utils/constans/colors.dart';
import 'package:flutter_app_1/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/layouts/grid_layouts.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constans/sizes.dart';
import 'widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // 5 Tabs
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          actions: [
            TCartCounterIcon(onPressed: () {}, iconColor: Colors.black),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading:
                    false, // Eliminar el icono de flecha de regreso
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      TSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(
                            showBorder: false,
                          );
                        },
                      )
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            // Asegúrate de que haya 5 widgets para las 5 tabs
            children: [
              // Tab 1: Sports
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              
              // Tab 2: Furniture
             
            ],
          ),
        ),
      ),
    );
  }
}
