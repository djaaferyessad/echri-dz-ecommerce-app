import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';

class ELoginSocial extends StatelessWidget {
  const ELoginSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         containerIcon(EImages.google),
        SizedBox(width: ESizes.spaceBtwItems) ,
         containerIcon(EImages.facebook),
      ],
    );
  }

  Container containerIcon(String image) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: EColors.grey),
        ),
        child: IconButton(onPressed: (){},
            icon: Image(
              height: ESizes.iconmd,
              width: ESizes.iconmd,
              image: AssetImage(image) ,
            )
        ),
      );
  }
}