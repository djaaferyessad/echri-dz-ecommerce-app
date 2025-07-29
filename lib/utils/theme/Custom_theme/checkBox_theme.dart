import 'package:flutter/material.dart';

class ECheckBoxTheme {
  ECheckBoxTheme._() ; 

  static final lightCheckBoxTheme = CheckboxThemeData( 
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)) ,
    checkColor: MaterialStateProperty.resolveWith((state) { 
      if(state.contains(MaterialState.selected))
      {
        return Colors.white ;
      }
      else 
      { 
        return Colors.black ;
      }
    }) ,
    fillColor: MaterialStateProperty.resolveWith((state) { 
      if(state.contains(MaterialState.selected))
      return Color(0xFFFF6F00)  ;
      else
      return Colors.transparent ;
    })
  ) ;



static final blackCheckBoxTheme = CheckboxThemeData( 
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)) ,
    checkColor: MaterialStateProperty.resolveWith((state) { 
      if(state.contains(MaterialState.selected))
      {
        return Colors.white ;
      }
      else 
      { 
        return Colors.black ;
      }
    }) ,
    fillColor: MaterialStateProperty.resolveWith((state) { 
      if(state.contains(MaterialState.selected))
      return Color(0xFFFF6F00)  ;
      else
      return Colors.transparent ;
    })
  ) ;
}