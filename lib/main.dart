import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'signout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/signin': (BuildContext context) => new LoginPage(),
        '/signout': (BuildContext context) => new SignoutPage(),
      },
      title: 'Log In - Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
