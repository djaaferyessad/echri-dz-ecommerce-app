import 'package:ecommerseapp/features/authentification/controllers/onBoard_controlling.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utilities.dart';

class Onboardskipbutton extends StatelessWidget {
  const Onboardskipbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceUtils.getAppBarHeight() ,
        right: ESizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skippage() ;
          },
          child: Text("skip" , style: TextStyle(fontSize: ESizes.fontSizemd),) ,


        )
    );
  }
}