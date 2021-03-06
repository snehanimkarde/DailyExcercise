import 'package:flutter/material.dart';
import 'package:welcome_login_signup/componants/text_field_container.dart';
import 'package:welcome_login_signup/constants.dart';
import 'package:welcome_login_signup/Screens/LogIn/componants/body.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
