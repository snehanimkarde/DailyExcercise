import 'package:flutter/material.dart';
import 'package:welcome_login_signup/Screens/Welcome/Welcome_Screen.dart';
import 'package:welcome_login_signup/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen(),
    );
  }
}
