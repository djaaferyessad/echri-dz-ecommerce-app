import 'package:ecommerseapp/common/styles/spacing_styles.dart';
import 'package:ecommerseapp/common/widgets/login_signup/login_divider.dart';
import 'package:ecommerseapp/features/authentification/screens/login/widgets/login_header.dart';
import 'package:ecommerseapp/features/authentification/screens/login/widgets/login_loginform.dart';
import 'package:ecommerseapp/common/widgets/login_signup/login_social.dart';
import 'package:ecommerseapp/utils/constants/sizes.dart';
import 'package:ecommerseapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/text_strings.dart';



class LoginPage extends StatelessWidget {
      const LoginPage({super.key});

      @override
      Widget build(BuildContext context) {
        final isDark = EHelperFunctions.isDarkMode(context) ;
        return Scaffold(
          body: SingleChildScrollView(
            padding: ESpacingStyle.paddingwithappbarheight,
            child: Column(
              children: [
                ELoginHeader(isDark: isDark),
                ELoginForm(),
                ELoginDivider(isDark: isDark , text: ETexts.orSignInWith,),
                SizedBox(height: ESizes.spaceBtwSections) ,
                ELoginSocial(),
              ],
            ),


          ),
        );
      }
    }








