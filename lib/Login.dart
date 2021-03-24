
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsScreen.dart';
import 'Signup.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 60),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text("Login",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
              ),
              onPressed: (){}, // Navigate to Login Screen and change the Text color to black
            ),
            SizedBox(width: 110,),
            FlatButton(
              child: Text("Sign Up",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 24),
              ),
              onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
              }, // navigate to the SignUp Screen and set the Text color black
            ),
          ],
        ),
        SizedBox(height: 50,),
        Image.asset("images/logo.png", scale: 15,),
        Text("GoKart",
          style: TextStyle(color: Colors.deepPurple, fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        SizedBox(height: 50),
        TextField(
          decoration: InputDecoration(hintText: 'Username or Email Address'),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(hintText: 'Password', suffixIcon:Icon(Icons.visibility)),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: Text("Forgot Password?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Material(elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.check,color: Colors.blue,),
                  Text(" LOG IN",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't Have an Account? ",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
            Text("Register",
              style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 15,),
        Text("Continue With",
          style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: CircleAvatar(backgroundImage: AssetImage("images/google.jpeg"), radius: 25,),
            ),
            SizedBox(width: 10,),
            InkWell(
              child: CircleAvatar(backgroundImage: AssetImage("images/facebook.jpeg"), radius: 25,),
            )
          ],
        )
      ],
    );
  }
}