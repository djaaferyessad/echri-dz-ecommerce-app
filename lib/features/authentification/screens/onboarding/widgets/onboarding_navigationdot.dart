import 'package:ecommerseapp/features/authentification/controllers/onBoard_controlling.dart';
import 'package:flutter/material.dart' ;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utilities.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoradingNaigationDots extends StatelessWidget {
  const OnBoradingNaigationDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context) ;
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ESizes.defaultSpace ,
      child:
      SmoothPageIndicator(
        controller: controller.pageController,
        count: 3 ,
        effect: ExpandingDotsEffect(activeDotColor: dark ? EColors.light : EColors.dark  , dotHeight: 6),

      ),
    );
  }
}