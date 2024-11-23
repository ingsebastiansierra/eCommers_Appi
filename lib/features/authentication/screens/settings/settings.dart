import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_app_1/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_app_1/common/widgets/list_titles/settings_menu_title.dart';
import 'package:flutter_app_1/common/widgets/texts/section_heading.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_titles/user_profile_title.dart';
import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Todo: -- HEADER
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                TAppBar(
                  title: Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white)),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                //Todo: -- User Profile Card

                const TUserProfileTitle(),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(children: [
              //Todo: Account Settings
              const TSectionHeading(
                title: 'Account Settings',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSettingsMenuTitle(
                icon: Iconsax.safe_home,
                title: 'My Addresses',
                subTitle: 'Set shopping delivery addresses',
                onTap: () {},
              ),
              TSettingsMenuTitle(
                icon: Iconsax.shopping_cart,
                title: 'My Cart',
                subTitle: 'Add, remove products and move to checkout',
                onTap: () {},
              ),
              TSettingsMenuTitle(
                icon: Iconsax.bag_tick,
                title: 'My Orders',
                subTitle: 'In-progress and completed orders',
                onTap: () {},
              ),
              TSettingsMenuTitle(
                icon: Iconsax.bank,
                title: 'Bank Account',
                subTitle: 'Withdraw balance to registered bank account',
                onTap: () {},
              ),
              TSettingsMenuTitle(
                icon: Iconsax.discount_shape,
                title: 'My Coupons',
                subTitle: 'List of all the discounted coupons',
                onTap: () {},
              ),
              TSettingsMenuTitle(
                icon: Iconsax.notification,
                title: 'Notifications',
                subTitle: 'Set any kind of notifications messages',
                onTap: () {},
              ),
              TSettingsMenuTitle(
                icon: Iconsax.security_card,
                title: 'Account Privacy',
                subTitle: 'Manage data usage and connected accounts',
                onTap: () {},
              ),

              //Todo: -- App Settings
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSectionHeading(
                  title: 'App Settings', showActionButton: false),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSettingsMenuTitle(
                  icon: Iconsax.document_upload,
                  title: 'Load Data',
                  subTitle: 'Upload Data to your Cloud Firebase',
                  onTap: () {}),
              TSettingsMenuTitle(
                icon: Iconsax.location,
                title: 'Geolocation',
                subTitle: 'Set recommendations based on your location',
                trailing: Switch(value: true, onChanged: (value) {}),
              ),
              TSettingsMenuTitle(
                icon: Iconsax.security_user,
                title: 'Safe Mode',
                subTitle: 'Search results is safe for all ages',
                trailing: Switch(value: false, onChanged: (value) {}),
              ),
              TSettingsMenuTitle(
                icon: Iconsax.image,
                title: 'HD Image Quality',
                subTitle: 'Set image Quality to be seen',
                trailing: Switch(value: false, onChanged: (value) {}),
              ),

              //TODO: logout menu

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('Logout'))),
              const SizedBox(
                height: TSizes.spaceBtwSections * 2.5,
              ),
            ]),
          )
          //Todo: -- BODY
          //Todo: -- HEADER
        ],
      ),
    ));
  }
}
