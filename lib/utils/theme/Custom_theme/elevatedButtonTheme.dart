
import 'package:flutter/material.dart';

class EelvatedButtontheme { 
  EelvatedButtontheme._() ;

  static final lightElevatedButtonTheme = ElevatedButtonThemeData( 
      style: ElevatedButton.styleFrom( 
        elevation: 0,
        foregroundColor: Colors.white ,
        backgroundColor: Color(0xFFE52F20) ,
        disabledBackgroundColor: Colors.grey ,
        disabledForegroundColor: Colors.grey ,
        side: const BorderSide(color: Color(0xFFE52F20)) ,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)) ,
        textStyle: TextStyle(fontSize: 16 , color: Colors.white , fontWeight: FontWeight.w600),
        padding: EdgeInsets.symmetric(vertical: 18),

      ) 
  );

    static final darkElevatedButtonTheme = ElevatedButtonThemeData( 
      style: ElevatedButton.styleFrom( 
        elevation: 0,
        foregroundColor: Colors.white ,
        backgroundColor: Color(0xFFE52F20) ,
        disabledBackgroundColor: Colors.grey ,
        disabledForegroundColor: Colors.grey ,
        side: const BorderSide(color: Color(0xFFE52F20)) ,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)) ,
        textStyle: TextStyle(fontSize: 16 , color: Colors.white , fontWeight: FontWeight.w600),
        padding: EdgeInsets.symmetric(vertical: 18),

      ) 
  );


}