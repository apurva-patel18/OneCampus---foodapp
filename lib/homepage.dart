import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget buildCafeNames() {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print('button pressed');
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
                'Ice Berg',
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
                print('button pressed');
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
                'Danis Cafe',
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
                print('button pressed');
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
                'Krishna Foods',
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
                print('button pressed');
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
                'Nescafe',
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
                print('button pressed');
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
                'Sweet Spot',
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
                print('button pressed');
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
                'From the Streets',
                style: TextStyle(
                    color: Color(0xffFF4343),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            )
        ),
        ],
    );
  }

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
              top: 65,
              bottom: 100,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cafes",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48,
                  ),
                ),
                SizedBox(height: 20),
                buildCafeNames(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
