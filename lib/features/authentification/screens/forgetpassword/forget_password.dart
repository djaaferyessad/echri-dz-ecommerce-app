import 'package:ecommerseapp/features/authentification/screens/forgetpassword/rest_password.dart';
import 'package:ecommerseapp/utils/constants/sizes.dart';
import 'package:ecommerseapp/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Get.back() ;
          }, icon: Icon(CupertinoIcons.clear)) ,
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ETexts.forgotPassword , style: Theme.of(context).textTheme.headlineMedium,) ,
                SizedBox(height: ESizes.spaceBtwItems,) ,
                Text(ETexts.subtitleforForgetPassword , style: Theme.of(context).textTheme.labelMedium) ,
                SizedBox(height: ESizes.spaceBtwSections * 2,) ,
                TextFormField(
                  decoration:InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right) ,
                    labelText: ETexts.email ,
                  )
                ),
                SizedBox(height: ESizes.spaceBtwSections,) ,
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){Get.to(() => RestPassword());}, child: Text(ETexts.submit))) ,

              ]

            ),
          ),
        ),
      ),
    );
  }
}
