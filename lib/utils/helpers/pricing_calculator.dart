class EPricingCalculator {

  static double calculateTotalPrice(double productPrice, String location)
  {
    double taxfee = getTaxRateForLocation(location) ;
    double taxAmount = productPrice * taxfee ;

    double shippingcost = getShippingCostForLocation(location) ;

    double totalprice = productPrice + taxAmount + shippingcost ;

    return totalprice ;
  }

  static String calulateShippingCost(double productPrice,String location)
  {
    double shippingcost = getShippingCostForLocation(location) ;
    return shippingcost.toStringAsFixed(2) ;

  }

  static String calculateTaxAmount(double productPrice,String location)
  {
    double taxfee = getTaxRateForLocation(location) ;
    double taxAmount = productPrice * taxfee ;
    return taxAmount.toStringAsFixed(2) ;

  }

  static double getTaxRateForLocation(String location)
  {
      return 0.10 ;
  }
  static double getShippingCostForLocation(String location)
  {
    return 5.00 ;
  }

  // static double calculateCartTotal(CartModel cart)
  // {
  //   return cart.items.map((e) => e.price).fold(0, (previousValue, element) => previousValue + (element ?? 0))  ;
  // }


}