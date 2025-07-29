
import 'package:intl/intl.dart';

class EFormatter {

  EFormatter._() ;

  static String formatDate(DateTime? date)
  {
    date ??= DateTime.now() ;
    return DateFormat('dd-MM-yyyy').format(date) ;
  }

  static String formatCurrency(double amount)
  {
    return NumberFormat.currency(locale: 'en_US' , symbol: '\$').format(amount) ;
  }

  static String formatPhoneNumber(String phoneNumber) {

    if(phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    }
    else
      {
        return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';
      }
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // replace any non-digit characters
    var digitsonly  = phoneNumber.replaceAll(RegExp(r'\D'),'') ;

    // extract the country code
    String countryCode = digitsonly.substring(0,2) ;
    digitsonly = digitsonly.substring(2) ;

    //add the remaining digits
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)') ;

    int i=0 ;
    while(i < digitsonly.length) {
      int groupLength = 2 ;
      if(i == 0 && countryCode.length == '+1') {
        groupLength = 3;
      }
      int end = i + groupLength ;
      formattedNumber.write(digitsonly.substring(i,end)) ;
      if (end < digitsonly.length) {
        formattedNumber.write(' ') ;
      }
      i = end ;

      }
      return formattedNumber.toString() ;


  }
}