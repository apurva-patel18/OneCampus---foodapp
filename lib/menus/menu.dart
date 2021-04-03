import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../homepage.dart';

class Menuitems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(builder: (context, constraints) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: GestureDetector(
                  child: Stack(
                children: <Widget>[
                  Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 120),
                          child: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Menu',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                buildMenu(),
                              ],
                            ),
                          )))
                ],
              ))
              // ignore: missing_return
              );
        }));
  }
}

Widget buildMenu() {
  return Column(
    children: <Widget>[
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0x88E5EFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(4, 8))
            ]),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              'Italian Pizza',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 110,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.purpleAccent,
            iconSize: 30.0,
          )
        ]),
      ),
      SizedBox(height: 22,),
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0x88E5EFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(4, 8))
            ]),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              'Maggi',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 165,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.purpleAccent,
            iconSize: 30.0,
          )
        ]),
      ),
      SizedBox(height: 22,),
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0x88E5EFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(4, 8))
            ]),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              'Cheese Maggi',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 90,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.purpleAccent,
            iconSize: 30.0,
          )
        ]),
      ),
      SizedBox(height: 22,),
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0x88E5EFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(4, 8))
            ]),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              'Mexican Pizza',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 90,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.purpleAccent,
            iconSize: 30.0,
          )
        ]),
      ),
      SizedBox(height: 22,),
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0x88E5EFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(4, 8))
            ]),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              'Cheese Toastie',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 85,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.purpleAccent,
            iconSize: 30.0,
          )
        ]),
      ),
      SizedBox(height: 22,),
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0x88E5EFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(4, 8))
            ]),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              'Mayo Puff',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 130,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.purpleAccent,
            iconSize: 30.0,
          )
        ]),
      ),
      SizedBox(height: 22,),
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0x88E5EFFF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 6, offset: Offset(4, 8))
            ]),
        child: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Text(
              'Schezwan Puff',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 90,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.purpleAccent,
            iconSize: 30.0,
          )
        ]),
      ),
    ],
  );
}
