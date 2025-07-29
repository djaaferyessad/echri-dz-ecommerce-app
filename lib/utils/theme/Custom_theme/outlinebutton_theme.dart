import 'package:flutter/material.dart';

class EOutlineButtonTheme { 
  EOutlineButtonTheme._() ;

  static OutlinedButtonThemeData lightOutlineButton = OutlinedButtonThemeData( 
  style: OutlinedButton.styleFrom( 
    elevation: 0, 
    foregroundColor: Colors.black ,
    side: BorderSide(color: Color(0xFFFF6F00)), 
    textStyle: TextStyle(fontSize: 16 , color: Colors.white , fontWeight: FontWeight.w600) , 
    padding: const EdgeInsets.symmetric(vertical:16 , horizontal:20 ) ,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)) ,

  )
  );

  static OutlinedButtonThemeData blackOutlineButton = OutlinedButtonThemeData( 
  style: OutlinedButton.styleFrom( 
    elevation: 0, 
    foregroundColor: Colors.white ,
    side: BorderSide(color: Color(0xFFFF6F00)), 
    textStyle: TextStyle(fontSize: 16 , color: Colors.white , fontWeight: FontWeight.w600) , 
    padding: const EdgeInsets.symmetric(vertical:16 , horizontal:20 ) ,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)) ,

  )
  );
}