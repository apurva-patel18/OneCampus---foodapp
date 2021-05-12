import 'package:flutter/material.dart';
import 'package:one_campus/homepage.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Payments"),
            ),
            body: SafeArea(
                child: Center(
              child: Radiobutton(),
            ))),
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ));
  }
}

class Radiobutton extends StatefulWidget {
  @override
  RadioButtonWidget createState() => RadioButtonWidget();
}

class RadioButtonWidget extends State {
  String radioItem = '';

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text(
            'Paytm',
            style: TextStyle(fontSize: 20.0),
          ),
          value: 'Item 1',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text(
            'Cash on Delivery',
            style: TextStyle(fontSize: 20.0),
          ),
          value: 'Item 2',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        SizedBox(
          height: 420,
        ),
        ElevatedButton(
            onPressed: () {
              showAlertDialog(context);
            },
            child: Text(
              'Place Order',
              style: TextStyle(fontSize: 20),
            ))
      ],
    );
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Order no: 23145"),
    content: Text("Your Order is placed"),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
