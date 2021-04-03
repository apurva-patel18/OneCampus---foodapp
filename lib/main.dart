import 'package:flutter/material.dart';
import 'package:one_campus/menus/menu2.dart';
import 'login.dart';
import 'signup.dart';
import 'homepage.dart';
import 'splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:one_campus/menus/menu.dart';

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
      home: homePage(),
      routes: {
        '/login': (_) => login(),
        '/signup': (_) => signUp(),
        '/homepage': (_) => homePage(),
        '/menu':(_) => Menuitems(),
        '/menu2':(_) => Menuitems2(),
      },
    );
  }
}
