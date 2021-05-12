import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_campus/ProductModel.dart';
import 'package:one_campus/Screens/ProductScreen.dart';
import 'package:one_campus/Screens/CheckoutScreen.dart';
import '../homepage.dart';

class CartApp extends StatefulWidget {
  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("One Campus"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Menu",
              ),
              Tab(
                text: "Checkout",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductScreen((selectedProduct) {
              setState(() {
                cart.add(selectedProduct); //update
                sum = 0;
                cart.forEach((item) {
                  sum = sum + item.price;
                });
              });
            }),
            CheckoutScreen(cart, sum),
          ],
        ),
      ),
    );
  }
}
