import 'package:ecommerseapp/common/styles/spacing_styles.dart';
import 'package:ecommerseapp/common/widgets/login_signup/login_divider.dart';
import 'package:ecommerseapp/common/widgets/login_signup/login_social.dart';
import 'package:ecommerseapp/features/authentification/screens/signup/verifie_email.dart';
import 'package:ecommerseapp/utils/constants/colors.dart';
import 'package:ecommerseapp/utils/constants/sizes.dart';
import 'package:ecommerseapp/utils/constants/text_strings.dart';
import 'package:ecommerseapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context) ;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(ETexts.signUpTitle , style: Theme.of(context).textTheme.headlineMedium,),
            SignUpForm(isDark: isDark) ,
            ELoginDivider(isDark: isDark , text: ETexts.orSignUpWith.capitalize!,) ,
            SizedBox(height: ESizes.spaceBtwSections,),
            ELoginSocial() ,
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.isDark,
  });

  final dynamic isDark;

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user) ,
                    labelText: ETexts.firstname ,
                  ),
                  ),
              ),
              SizedBox(width: ESizes.spaceBtwInputFields,),
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user) ,
                    labelText: ETexts.lastname ,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ESizes.spaceBtwInputFields,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit) ,
              labelText: ETexts.username ,
            ),
          ),
          SizedBox(height: ESizes.spaceBtwInputFields,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct) ,
              labelText: ETexts.email ,
            ),
          ),
          SizedBox(height: ESizes.spaceBtwInputFields,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call) ,
              labelText: ETexts.phoneNo ,
              //labelStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: ESizes.spaceBtwInputFields,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check) ,
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: ETexts.password ,
            ),
          ),
          SizedBox(height: ESizes.spaceBtwItems,),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
                activeColor: EColors.primary,
              ) ,
              Text.rich(
                TextSpan(
                  children:[
                    TextSpan(text: '${ETexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall!) ,
                   TextSpan(text: '${ETexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                     color: isDark ? EColors.white : EColors.primary ,
                     decorationColor: isDark ? EColors.white : EColors.primary ,
                     decoration: TextDecoration.underline ,
                   )),
                    TextSpan(text: 'and ', style: Theme.of(context).textTheme.bodySmall!) ,
                    TextSpan(text: '${ETexts.termsofuse} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDark ? EColors.white : EColors.primary ,
                      decorationColor: isDark ? EColors.white : EColors.primary ,
                      decoration: TextDecoration.underline ,
                    )),

                  ]
                )
              )
            ],
          ),
          SizedBox(height: ESizes.spaceBtwItems,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: (){
                  Get.to(() => VerifieEmailView()) ;
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: EColors.primary,
                ),
                child:
                Text(
                  ETexts.createAccount ,
                )),
          ),
        ],
      ),
    )
    );
  }
}
