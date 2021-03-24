
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill
            (child: Container(
            color: Colors.blueAccent,
          ),
          ),
          Positioned.fill(
            child: Container(
              child: Column(
                children: [
                  Spacer(flex: 30),
                  CircleAvatar(backgroundImage: AssetImage("images/logo.png"), radius: 50,),
                  Text(
                    "Go Kart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                  Spacer(flex: 50),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.yellowAccent,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Flutter Ecommerce",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "UI Template",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(flex: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}