import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _firestore = FirebaseFirestore.instance;
  @override
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            key: Key('email'),
            decoration: InputDecoration(labelText: 'Email'),
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
            //validator: EmailFieldValidator.validate,
            //onSaved: (String value) => _email = value,
          ),
          TextFormField(
            key: Key('password'),
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
            //validator: PasswordFieldValidator.validate,
            //onSaved: (String value) => _password = value,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                  email: email, password: password)
                  .then((signedInuser) {
                _firestore
                    .collection('users')
                    .add({'email': email, 'pass': password}).then((value) {
                  if (signedInuser != null) {
                    Navigator.pushNamed(context, '/homepage');
                  }
                }).catchError((e) {
                  print(e);
                });
              }).catchError((e) {
                print(e);
              });
            },
            child: Text('Sign Up', style: TextStyle(fontSize: 20.0)),
          ),
        ],
      ),
    );
  }
}