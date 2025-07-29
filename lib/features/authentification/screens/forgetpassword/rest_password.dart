import 'package:ecommerseapp/utils/constants/sizes.dart';
import 'package:ecommerseapp/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){Get.back() ;}, icon: Icon(CupertinoIcons.clear)) ],
    ),
    body:  SingleChildScrollView(
      child:
      Padding(
      padding:  EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(EImages.verficationemailcompleted) ,
              width: EHelperFunctions.screenWidth() * 0.6 ,
            ) ,
            const SizedBox(height: ESizes.spaceBtwSections,) ,
            Text(ETexts.passwordrest , style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: ESizes.spaceBtwItems,) ,
            Text(ETexts.subtitlePasswrodrest , style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center) ,
            const SizedBox(height: ESizes.spaceBtwSections,) ,
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){Get.offAll(() => LoginPage());}, child: Text(ETexts.done)),) ,
            TextButton(onPressed: (){}, child: Text(ETexts.resendEmail)),
        ],
      ),
      ),
      ),
    );
  }
}
