

class TPricingCalculator {
  //TODO: PRECIO en base the tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForlocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //CALCULATE SHIPPING COST
  static String calculateShippingCost(String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //Calculate TAX

  static String calculateTax(String location, double productPrice) {
    double taxRate = getTaxRateForlocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForlocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.0;
  }

  //static double calculateCartTotal(CartModel cart){
  //return cart.items.map((e) => e.price).fold(0,(previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  //}
}
