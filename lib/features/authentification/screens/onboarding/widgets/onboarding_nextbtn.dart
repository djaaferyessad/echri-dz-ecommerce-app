import 'package:ecommerseapp/features/authentification/controllers/onBoard_controlling.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utilities.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';
import '../../login/login.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context) ;
    return Positioned(
        bottom: EDeviceUtils.getBottomNavigationBarHeight() + 10 ,
        right: ESizes.defaultSpace,
        child: ElevatedButton(
          onPressed: (){
            OnBoardingController.instance.nextpage() ;

          },
          style: ElevatedButton.styleFrom( backgroundColor: dark ? EColors.primary : EColors.dark  ,
            side: BorderSide(color: dark ? EColors.primary : EColors.dark) , shape: const CircleBorder(),
          ),
          child: const Icon(Iconsax.arrow_right_3 ) ,

        )
    );
  }
}