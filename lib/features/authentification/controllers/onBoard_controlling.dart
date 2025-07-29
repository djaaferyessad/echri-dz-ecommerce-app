
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find() ;


  final pageController = PageController() ;
  int currentPageIndex = 0 ;

   void nextpage(){
    if(currentPageIndex == 2) {
      Get.offAll(const LoginPage()) ;
    }
    else {
      int page = currentPageIndex + 1 ;
      pageController.jumpToPage(page );
    }


  }

   void skippage(){
      pageController.jumpToPage(2);
  }


   void dotNavigationClick(index){
     currentPageIndex = index ;
     pageController.jumpToPage(index);
  }

  // update the page on the scroll
   void updatePageIndicator(index){
      currentPageIndex = index ;
      pageController.jumpToPage(index) ;

   }


}