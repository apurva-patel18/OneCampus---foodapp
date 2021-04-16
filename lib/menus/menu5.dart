import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_campus/ProductModel.dart';
import 'package:one_campus/Screens/CheckoutScreen.dart';
import 'package:one_campus/Screens/ProductScreen2.dart';
import '../homepage.dart';

class CartApp5 extends StatefulWidget {
  @override
  _CartAppState5 createState() => _CartAppState5();
}

class _CartAppState5 extends State<CartApp5> {
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
              Tab(text: "Menu",),
              Tab(text: "Checkout",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductScreen2((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                sum = 0;
                cart.forEach((item){
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