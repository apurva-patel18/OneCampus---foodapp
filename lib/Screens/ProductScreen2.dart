import 'package:flutter/material.dart';

import '../ProductModel.dart';


class ProductScreen2 extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  ProductScreen2(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("Burger", 50),
    ProductModel("Cheese Maggi", 40),
    ProductModel("Italian Pizza", 150),
    ProductModel("Mayo Puff", 20),
    ProductModel("Mexican Pizza", 100),
    ProductModel("Cheese Toastie", 40),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].name),
            trailing: Text("\₹${products[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
            onTap: (){
              _valueSetter(products[index]);
            },
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: products.length
    );
  }
}