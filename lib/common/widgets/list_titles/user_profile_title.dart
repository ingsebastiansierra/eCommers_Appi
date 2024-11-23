import 'package:flutter/material.dart';
import 'package:flutter_app_1/common/widgets/images/t_circular_image.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constans/colors.dart';
import '../../../utils/constans/image_strings.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImagen(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Johann Sierra',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'Vegasebastian073@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}
