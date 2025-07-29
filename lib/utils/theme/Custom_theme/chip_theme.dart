import 'package:flutter/material.dart';

class EChipTheme { 
  EChipTheme._() ; 

  static ChipThemeData lightChipTheme = ChipThemeData( 
    padding: EdgeInsets.symmetric(vertical: 12 , horizontal: 12) ,
    disabledColor: Colors.grey.withOpacity(0.4) ,
    labelStyle: TextStyle(color: Colors.black) ,
    selectedColor: Color(0xFFFF6F00)  ,
    checkmarkColor: Colors.white ,
  );

  static ChipThemeData darkChipTheme = ChipThemeData( 
    padding: EdgeInsets.symmetric(vertical: 12 , horizontal: 12) ,
    disabledColor: Colors.grey ,
    labelStyle: TextStyle(color: Colors.white) ,
    selectedColor: Color(0xFFFF6F00)  ,
    checkmarkColor: Colors.white ,
  );

}