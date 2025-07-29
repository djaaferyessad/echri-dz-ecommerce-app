import 'package:ecommerseapp/features/shop/screens/home/home.dart';
import 'package:ecommerseapp/utils/constants/colors.dart';
import 'package:ecommerseapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart' ;
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final controller  = Get.put(NavigationMenuController()) ;
    final isDark = EHelperFunctions.isDarkMode(context) ;
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            elevation: 0,
            height: 80,
            selectedIndex: controller.index.value,
            backgroundColor: isDark ? Colors.black : Colors.white,
            indicatorColor : isDark ? EColors.white.withOpacity(0.1) : EColors.black.withOpacity(0.1) ,
            onDestinationSelected: (index) => controller.index.value = index,
            destinations:
            [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(icon: Icon(Iconsax.lovely), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.profile_2user), label: 'Profile'),

            ],
        ),
      ),
      body: Obx(() => controller.screens[controller.index.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  final Rx<int> index = 0.obs ;
final screens =  [ HomeShopView()  , Container(color: Colors.blue) , Container(color: Colors.green) , Container(color: Colors.yellow) ] ;

}
