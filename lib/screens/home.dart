import 'package:flutter/material.dart';
import 'package:signin_signup_ui_flutter/screens/signup.dart';
import 'login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      routes: {
        '/' : (context)=> Buttonlar(),
        '/signin': (context) => SignInPage(),
        '/signup': (context) => SignUpPage(),
      },
      debugShowCheckedModeBanner: false,
    
    );
  }
}

class Buttonlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Say hello to  your new app!',
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(20),
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(44),
                side: BorderSide(color: Colors.amberAccent)),
            onPressed: () {
              Navigator.pushNamed(context, '/signin');
            },
            child: Text(
              '   Log In   ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            color: Colors.amberAccent,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(44),
                side: BorderSide(color: Colors.amberAccent)),
            child: Text(
              '  Sign Up  ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
