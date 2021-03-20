import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        home: SignInPage());
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text(''),
      )),
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(5),
            child: Text(
              'Sign In:',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),
                ),
                contentPadding: EdgeInsets.all(20),
                hintText: 'Email or phone number'),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                ),
              ),
              contentPadding: EdgeInsets.all(20.0),
              hintText: 'Password',
              filled: true,
              hintStyle: new TextStyle(color: Colors.grey[800]),
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(44),
                side: BorderSide(color: Colors.amberAccent)),
            child: Text(
              '           Sign In           ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            color: Colors.amberAccent,
          ),
          SizedBox(height: 10,),
          Container(
            child: Text(
              'Or',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),
          RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(44),
                  side: BorderSide(color: Colors.amberAccent)),
              child: Text(
                '  Login With Facebook  ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              color: Colors.blue,
            ),
        ],
      ),
    );
  }
}
