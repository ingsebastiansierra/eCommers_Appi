import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_app_1/common/widgets/icons/t_circular_icon.dart';
import 'package:flutter_app_1/common/widgets/layouts/grid_layouts.dart';
import 'package:flutter_app_1/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:flutter_app_1/features/shop/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constans/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: Text('Wishlist',
              style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCircularIcon(
              icon: Iconsax.add,
              onPressed: () => Get.to(const HomeScreen()),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 8,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        )));
  }
}
