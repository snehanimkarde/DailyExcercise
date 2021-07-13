import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_signup/Screens/LogIn/LogIn_Screen.dart';
import 'package:welcome_login_signup/Screens/SignUp/componants/SocialIcons.dart';
import 'package:welcome_login_signup/Screens/SignUp/componants/or_divider.dart';
import 'package:welcome_login_signup/componants/Already_Have_An_Account.dart';
import 'package:welcome_login_signup/componants/rounded_input_field.dart';
import 'package:welcome_login_signup/componants/rounded_password_field.dart';
import 'package:welcome_login_signup/componants/roundedbutton.dart';
import 'package:welcome_login_signup/constants.dart';

import 'background.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key key, @override this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.40,
              ),
              RoundedInputField(
                hintText: "Your Email",
              ),
              RoundedPasswordField(
                onChange: (value) {},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyHaveAnAccount(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LogInScreen();
                  }));
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcons(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialIcons(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocialIcons(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
