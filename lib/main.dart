import 'package:flutter/material.dart';
import 'package:one_campus/FromStreets.dart';
import 'package:one_campus/Screens/payment.dart';
import 'package:one_campus/adminhome.dart';
import 'package:one_campus/loginadmin.dart';
import 'package:one_campus/menus/menu2.dart';
import 'package:one_campus/menus/menu3.dart';
import 'package:one_campus/menus/menu4.dart';
import 'package:one_campus/menus/menu5.dart';
import 'login.dart';
import 'signup.dart';
import 'homepage.dart';
import 'Screens/splashscreen.dart';
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
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (_) => login(),
        '/loginadmin': (_) => loginadmin(),
        '/signup': (_) => signUp(),
        '/homepage': (_) => homePage(),
        '/adminhome': (_) => adminHome(),
        '/menu':(_) => CartApp(),
        '/menu2':(_) => CartApp2(),
        '/menu3':(_) => CartApp3(),
        '/menu4':(_) => CartApp4(),
        '/menu5':(_) => CartApp5(),
        '/streetfood':(_) => fromStreets(),
        '/payment':(_) => Payment(),

      },
    );
  }
}
