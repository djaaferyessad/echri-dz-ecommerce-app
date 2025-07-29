import 'package:ecommerseapp/common/successScreen/success_screen.dart';
import 'package:ecommerseapp/features/authentification/screens/login/login.dart';
import 'package:ecommerseapp/utils/constants/images.dart';
import 'package:ecommerseapp/utils/constants/sizes.dart';
import 'package:ecommerseapp/utils/constants/text_strings.dart';
import 'package:ecommerseapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerifieEmailView extends StatelessWidget {

  String text = 'djaaferyessad@gmail.com' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: IconButton(onPressed: () => Get.offAll(LoginPage()),  icon: Icon(CupertinoIcons.clear)) ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage(EImages.emailsent) ,
                  width: EHelperFunctions.screenWidth() * 0.6,
                ) ,
                Text(ETexts.verfieemail , style: Theme.of(context).textTheme.headlineMedium,) ,
                SizedBox(height: ESizes.spaceBtwItems,) ,
                Text(text , style: Theme.of(context).textTheme.labelLarge,) ,
                SizedBox(height: ESizes.spaceBtwItems,) ,
                Text(
                  ETexts.verifieemailsubtitle , style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ) ,
                SizedBox(height: ESizes.spaceBtwSections,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){
                  Get.to(SuccessScreen(text: ETexts.accountcreatedsuccessfully, subtext: ETexts.subtitleofaccountcreatedsuccefully, image: EImages.verficationemailcompleted, onPressed: (){Get.offAll(() => LoginPage());} ));
                } , child: Text(ETexts.continued))) ,
                SizedBox(height: ESizes.spaceBtwItems,),
                TextButton(onPressed: (){}, child: Text(ETexts.resendEmail)),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
