import 'package:flutter/material.dart';
import 'package:testy_app/cart/your_cart.dart';
import 'package:testy_app/screens/checkOut/checkout.dart';
import 'package:testy_app/screens/login/login.dart';
import 'package:testy_app/screens/orders/your_orders.dart';

void main() {
  runApp(TastyApp());
}
class TastyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
      home://CheckOut(),
      //YourOrders()
     YourCart()


    );
  }
}



