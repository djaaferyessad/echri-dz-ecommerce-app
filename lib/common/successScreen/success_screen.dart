import 'package:ecommerseapp/common/styles/spacing_styles.dart';
import 'package:ecommerseapp/utils/constants/images.dart';
import 'package:ecommerseapp/utils/constants/sizes.dart';
import 'package:ecommerseapp/utils/constants/text_strings.dart';
import 'package:ecommerseapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart' ;

class SuccessScreen extends StatelessWidget {
  final String text , image , subtext ;
  const SuccessScreen({super.key , required this.text ,required this.subtext ,required this.image ,required this.onPressed });

 final VoidCallback onPressed ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingwithappbarheight * 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: const AssetImage(EImages.verficationemailcompleted) ,
                width: EHelperFunctions.screenWidth() * 0.6 ,
              ) ,
              const SizedBox(height: ESizes.spaceBtwSections,) ,
              Text(text , style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBtwItems,) ,
              Text(subtext , style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center) ,
              const SizedBox(height: ESizes.spaceBtwSections,) ,
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: Text(ETexts.continued)),) ,


            ],
          ),
        ),
      ),
    );
  }
}
