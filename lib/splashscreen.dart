import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
              child: Text(
                'One Campus',
                style: GoogleFonts.laBelleAurore(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 70),
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(EdgeInsets.all(15)),
              ),
              onPressed: () {},
              child: Text(
                'Admin',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                ),
                onPressed: () {

                },
                child: Text(
                  'Student',
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ],
      ),
    );
  }
}
