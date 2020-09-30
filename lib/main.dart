import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/signup.dart';
import 'package:login/login.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
            SizedBox(
              height: 75,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Image.asset('images/image3.png'),
            ),
            Text(
              'Welcome To Our App',
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 33,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //Sign up
            RaisedButton(
              padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              color: Colors.grey[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Login
            RaisedButton(
              padding: EdgeInsets.fromLTRB(67, 10, 67, 10),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              color: Colors.grey[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
