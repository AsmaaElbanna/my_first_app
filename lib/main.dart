import 'package:flutter/material.dart';

import 'DetailsScreen.dart';
import 'Login.dart';
import 'Signup.dart';
import 'Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:
      SplashScreen(),
      // LoginPage(),
      // SignUpPage(),
       //DetailsScreen(),

    );
  }
}