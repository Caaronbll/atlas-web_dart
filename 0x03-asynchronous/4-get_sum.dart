import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    String userID = jsonDecode(userData)['id'];
    String userOrder = await fetchUserOrders(userID);
    List<dynamic> orderList = jsonDecode(userOrder);

    double total = 0.0;

    for (String order in orderList) {
      String price = await fetchProductPrice(order);
      double productPrice = jsonDecode(price);
      total = total + productPrice;
    }

    return total;
  }
  catch (error) {
    return -1;
  }
}