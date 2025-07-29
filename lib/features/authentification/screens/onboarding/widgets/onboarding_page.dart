import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class onboardpageview extends StatelessWidget {
  onboardpageview({required this.image , required this.title , required this.subtitle });
  String image , title , subtitle ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: EHelperFunctions.screenWidth() * 0.8,
            height: EHelperFunctions.screenHeight() * 0.6,
            image:  AssetImage(image),
          ),
          Text(title , style: Theme.of(context).textTheme.headlineMedium , textAlign: TextAlign.center ,) ,
          const SizedBox(height: ESizes.spaceBtwItems) ,
          Text(subtitle , style: Theme.of(context).textTheme.bodyMedium , textAlign: TextAlign.center ) ,
        ],
      ),
    );
  }
}