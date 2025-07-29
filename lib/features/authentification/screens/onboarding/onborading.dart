

import 'package:ecommerseapp/features/authentification/controllers/onBoard_controlling.dart';
import 'package:ecommerseapp/features/authentification/screens/onboarding/widgets/onboarding_navigationdot.dart';
import 'package:ecommerseapp/features/authentification/screens/onboarding/widgets/onboarding_nextbtn.dart';
import 'package:ecommerseapp/features/authentification/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerseapp/features/authentification/screens/onboarding/widgets/onborading_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/text_strings.dart';

class OnBoardingView extends StatelessWidget {
   OnBoardingView({super.key});
  final controller = Get.put(OnBoardingController()) ; // OnBoardingController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // page View
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) => controller.updatePageIndicator(index) ,
            children:  [
              onboardpageview(image: EImages.onborading1 , title: ETexts.onBoardingTitle1 , subtitle:  ETexts.onBoardingSubTitle1),
              onboardpageview(image: EImages.onborading2 , title: ETexts.onBoardingTitle2 , subtitle:  ETexts.onBoardingSubTitle2),
              onboardpageview(image: EImages.onborading3 , title: ETexts.onBoardingTitle3 , subtitle:  ETexts.onBoardingSubTitle2),
            ],
          ),
          // skip button
          Onboardskipbutton() ,
          OnBoradingNaigationDots(),
          OnBoardingNextButton(),
        ],
      )
    );
  }
}







