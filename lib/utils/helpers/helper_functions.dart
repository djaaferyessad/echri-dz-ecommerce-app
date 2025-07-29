
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EHelperFunctions {
  static Color? getColor(String value)
  {
    if(value == 'Green')
      {
        return Colors.green ;
      }
    else if (value == 'Red') {
      return Colors.red ;
    }
    else if (value == 'Blue') {
      return Colors.blue ;
    }
    else if (value == 'Yellow') {
      return Colors.yellow ;
    }
    else if (value == 'Orange') {
      return Colors.orange ;
    }
    else if (value == 'Pink') {
      return Colors.pink ;
    }
    else if (value == 'Purple') {
      return Colors.purple ;
    }
    else if (value == 'Brown') {
      return Colors.brown ;
    }
    else if(value == 'Grey') {
      return Colors.grey ;
    }
    else if (value == 'Black') {
      return Colors.black ;
    }
    else if (value == 'White') {
      return Colors.white;
    }
    return null ;

  }

  static void showSnackBar(String message)
  {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text(message)) ) ;
  }

  static void navigateToScreen(BuildContext context , Widget screen)
  {
    Navigator.push(context , MaterialPageRoute(builder: (context) => screen)) ;
  }

  static String truncateText(String text , int length)
  {
    if(text.length <= length)
      {
        return text ;
      }
    else
      {
       return text.substring(0,length) ;
      }
  }

  static isDarkMode(BuildContext context)
  {
    return Theme.of(context).brightness == Brightness.dark ;
  }

  static Size screenSize()
  {
    return MediaQuery.of(Get.context!).size ;
  }

  static double screenHeight()
  {
    return MediaQuery.of(Get.context!).size.height ;
  }

  static double screenWidth()
  {
    return MediaQuery.of(Get.context!).size.width ;
  }

  static String getFormattedDate(DateTime date , {String format = 'dd-MM-yyyy'})
{
  return DateFormat(format).format(date) ;
}

static List<T> removeDuplicates<T>(List<T> list)
{
  return list.toSet().toList() ;
}

static List<Widget> wrapWidgets(List<Widget> widgets , int rowSize)
  {
    final wrppedList = <Widget>[] ;
    for(int i = 0 ; i < widgets.length ; i += rowSize)
      {
        final rowChildren = widgets.sublist(i , i + rowSize > widgets.length ? widgets.length : i + rowSize) ;
        wrppedList.add(Row(children: rowChildren)) ;
      }

    return wrppedList ;


}




}