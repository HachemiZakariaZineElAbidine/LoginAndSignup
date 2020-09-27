import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          
          child: SingleChildScrollView(
            child: Column(

              children: [
                SizedBox(
                  height: 15,
                ),
                //image
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Image.asset('images/image1.png'),
                ),
                //text
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //email
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                //mot de passe
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: TextFormField(
                    obscureText:true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                // bouton
                Container(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                // facebook and gmail
                Text(
                  '- or sign in with -',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //facebook
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "                         Facebook                         ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //google
                RaisedButton(
                  onPressed: () {},
                  color: Colors.red[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "                           Google                           ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
