import 'package:ecommerseapp/features/authentification/screens/forgetpassword/forget_password.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../signup/signup.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context) ;
    return Form(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.arrow_right) ,
                  labelText: ETexts.email ,
                ),
              ),
              SizedBox(height:ESizes.spaceBtwInputFields) ,
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check) ,
                  suffixIcon: Icon(Iconsax.eye_slash) ,
                  labelText: ETexts.password ,
                ),
              ),
              SizedBox(height: ESizes.spaceBtwInputFields / 2) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true , onChanged: (value) {} ,checkColor: EColors.white, activeColor: EColors.primary) ,
                      const Text(ETexts.remenberMe) ,
                    ],
                  ),
                  TextButton(onPressed: () {Get.to(() => ForgetPassword());} , child: Text(ETexts.forgotPassword)) ,
                ],
              ),
              SizedBox(height:ESizes.spaceBtwSections) ,
              SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: (){
                Get.to(() => NavigationMenu());
              },
                style: ElevatedButton.styleFrom(backgroundColor: EColors.primary),child: Text(ETexts.signin),

              )) ,
              SizedBox(height: ESizes.spaceBtwItems,),
              SizedBox(width: double.infinity ,child: OutlinedButton(onPressed: (){ Get.to(Signupview()); },
                  style: OutlinedButton.styleFrom(side:BorderSide(color: EColors.grey)), child: Text(ETexts.createAccount) )
              ),
            ],
          ),
        ));
  }
}