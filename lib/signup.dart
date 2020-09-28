import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //images
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Image.asset('images/image1.png'),
              ),
              //text
              Text(
                'Join Us',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // nom
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
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
              // confirmation mot de passe
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm your password',
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
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // facebook and gmail
              Text(
                '- or sign up with -',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //facebook
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //google
                    SizedBox(
                      width: 10,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.red[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      child: Text(
                        " Google ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
