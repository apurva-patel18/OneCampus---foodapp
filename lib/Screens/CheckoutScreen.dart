import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final cart;
  final sum;

  CheckoutScreen(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(cart[index].name),
              trailing: Text(
                "\₹${cart[index].price}",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: cart.length,
          shrinkWrap: true,
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Total : \₹$sum",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(110, 30, 100, 50),
          child: ElevatedButton(
            child: Text(
              "Make Payment",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/payment');
            },
          ),
        ),
      ],
    );
  }
}
