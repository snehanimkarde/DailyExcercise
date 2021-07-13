import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup/Screens/LogIn/componants/background.dart';
import 'package:welcome_login_signup/Screens/SignUp/SignUp_Screen.dart';
import 'package:welcome_login_signup/componants/Already_Have_An_Account.dart';
import 'package:welcome_login_signup/componants/rounded_input_field.dart';
import 'package:welcome_login_signup/componants/rounded_password_field.dart';
import 'package:welcome_login_signup/componants/roundedbutton.dart';
import 'package:welcome_login_signup/componants/text_field_container.dart';

import '../../../constants.dart';
import '../LogIn_Screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.50,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChange: (value) {},
            ),
            RoundedPasswordField(
              onChange: (Value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccount(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
