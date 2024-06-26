import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    String userID = jsonDecode(userData)['id'];
    String userOrder = await fetchUserOrders(userID);
    List<dynamic> orderList = jsonDecode(userOrder);

    double total = 0.0;

    for (var product in orderList) {
      String price = await fetchProductPrice(product);
      double productPrice = jsonDecode(price);
      total += productPrice;
    }

    return total;
  }
  catch (error) {
    return -1;
  }
}