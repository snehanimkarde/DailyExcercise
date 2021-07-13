import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup/Screens/LogIn/LogIn_Screen.dart';
import 'package:welcome_login_signup/Screens/SignUp/SignUp_Screen.dart';
import 'package:welcome_login_signup/Screens/Welcome/Welcome_Screen.dart';
import 'package:welcome_login_signup/componants/roundedbutton.dart';
import 'package:welcome_login_signup/constants.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "WELCOME TO EDU",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.50,
                ),
              ),
              RoundedButton(
                text: "LOGIN",
                textColor: Colors.white,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LogInScreen();
                  }));
                },
              ),
              RoundedButton(
                text: "Sign Up",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
