import 'package:flutter/material.dart' ;
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/login_signup/textformfield.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

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
                child: ETextFormFieldLoginSignup(icon: Icon(Iconsax.user), text: ETexts.username,),
              ),
              SizedBox(width: ESizes.spaceBtwInputFields,),
              Flexible(
                child:ETextFormFieldLoginSignup(icon: Icon(Iconsax.user), text: ETexts.lastname,),
              ),
            ],
          ),
          SizedBox(height: ESizes.spaceBtwInputFields,),
           ETextFormFieldLoginSignup(icon: Icon(Iconsax.user_edit), text: ETexts.username,),
          SizedBox(height: ESizes.spaceBtwInputFields,),
          ETextFormFieldLoginSignup(icon: Icon(Iconsax.direct), text: ETexts.email,),
          SizedBox(height: ESizes.spaceBtwInputFields,),
          ETextFormFieldLoginSignup(icon: Icon(Iconsax.call), text: ETexts.phoneNo,),
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
              Expanded(
                child: Text.rich(
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
                ),
              )
            ],
          ),
          SizedBox(height: ESizes.spaceBtwItems,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: (){},
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


