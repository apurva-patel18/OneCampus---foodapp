import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'homepage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      routes: {
        '/signup': (_) => signUp(),
        '/homepage': (_) => homePage(),
      },
    );
  }
}
