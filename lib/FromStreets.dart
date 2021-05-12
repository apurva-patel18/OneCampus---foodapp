import 'package:flutter/material.dart';
import 'homepage.dart';

class fromStreets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 411,
        height: 731,
        child: Material(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 31,
              right: 30,
              top: 70,
              bottom: 100,
            ),
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "From the Streets",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 44,
                    ),
                  ),
                  SizedBox(height: 20),
                  buildNames(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget buildNames() {
  return Column(
    children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
              backgroundColor: MaterialStateProperty.all(Color(0xffE5EFFF)),
              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            ),
            child: Text(
              'Kapildev Fastfood',
              style: TextStyle(
                  color: Color(0xff5961F9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
      ),
      Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {

            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
              backgroundColor: MaterialStateProperty.all(Color(0xffE5EFFF)),
              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            ),
            child: Text(
              'Hot and Spicy',
              style: TextStyle(
                  color: Color(0xff5961F9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
      ),
      Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {

            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
              backgroundColor: MaterialStateProperty.all(Color(0xffE5EFFF)),
              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            ),
            child: Text(
              'Dilip Ghugra wala',
              style: TextStyle(
                  color: Color(0xff5961F9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
      ),
      Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {

            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
              backgroundColor: MaterialStateProperty.all(Color(0xffE5EFFF)),
              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            ),
            child: Text(
              'Sev Usad',
              style: TextStyle(
                  color: Color(0xff5961F9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
      ),
    ],
  );
}
