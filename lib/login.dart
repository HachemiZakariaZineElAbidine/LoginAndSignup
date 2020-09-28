import 'package:flutter/material.dart';
import 'package:login/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Image.asset('images/image2.png'),
              ),
              //text
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
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
                  obscureText: true,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
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
                  "                    Facebook                    ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //google
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                color: Colors.red[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "                      Google                      ",
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
    );
  }
}
