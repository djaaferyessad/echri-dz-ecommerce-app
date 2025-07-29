
import 'package:ecommerseapp/utils/constants/colors.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/appbar_theme.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/buttomsheet.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/checkBox_theme.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/chip_theme.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/elevatedButtonTheme.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/outlinebutton_theme.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/text_field_theme.dart';
import 'package:ecommerseapp/utils/theme/Custom_theme/texttheme.dart';
import 'package:flutter/material.dart';

class EchriTheme { 
  EchriTheme._() ;

  static ThemeData lightTheme = ThemeData( 
      useMaterial3: true , 
      brightness: Brightness.light ,
      fontFamily: 'Poppins' ,
      primaryColor:  Color(0xFFFF6F00) ,
      scaffoldBackgroundColor: Colors.white ,
      textTheme: Etexttheme.lightTextTheme ,
      elevatedButtonTheme:  EelvatedButtontheme.lightElevatedButtonTheme,
      appBarTheme: EAppbartheme.lightAppBarTheme ,
      bottomSheetTheme: EButtomSheet.lightButtomSheet,
      checkboxTheme: ECheckBoxTheme.lightCheckBoxTheme,
      chipTheme: EChipTheme.lightChipTheme,
      outlinedButtonTheme: EOutlineButtonTheme.lightOutlineButton ,
      inputDecorationTheme: ETextfieldTheme.lightTextFieldTheme ,
  );

    static ThemeData darkTheme = ThemeData( 
      useMaterial3: true , 
      brightness: Brightness.dark ,
      fontFamily: 'Poppins' ,
      primaryColor:  Color(0xFFFF6F00) ,
      scaffoldBackgroundColor: EColors.dark ,
      textTheme: Etexttheme.darkTextTheme ,
      elevatedButtonTheme: EelvatedButtontheme.darkElevatedButtonTheme,
      appBarTheme: EAppbartheme.blackAppBarTheme ,
      bottomSheetTheme: EButtomSheet.darkButtomSheet ,
      checkboxTheme: ECheckBoxTheme.blackCheckBoxTheme,
      chipTheme: EChipTheme.darkChipTheme,
      outlinedButtonTheme: EOutlineButtonTheme.blackOutlineButton ,
      inputDecorationTheme: ETextfieldTheme.darkTextFieldTheme,

  );


}