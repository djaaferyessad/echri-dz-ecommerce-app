import 'package:ecommerseapp/features/authentification/screens/forgetpassword/forget_password.dart';
import 'package:ecommerseapp/features/authentification/screens/signup/verifie_email.dart';
import 'package:ecommerseapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/authentification/screens/onboarding/onborading.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: EchriTheme.lightTheme,
      darkTheme: EchriTheme.darkTheme,
      home:  OnBoardingView() ,
    );
  }
}