import 'package:flutter/material.dart';


class EButtomSheet { 
  EButtomSheet._() ;

  static final lightButtomSheet = BottomSheetThemeData(
    elevation: 0 , 
    backgroundColor: Colors.white ,
    modalBackgroundColor: Colors.white ,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(16)) , 
    constraints: const BoxConstraints(minWidth: double.infinity)
  );

  static final darkButtomSheet = BottomSheetThemeData(
    elevation: 0 , 
    backgroundColor: Colors.black ,
    modalBackgroundColor: Colors.black ,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(16)) , 
    constraints: const BoxConstraints(minWidth: double.infinity)
);
}