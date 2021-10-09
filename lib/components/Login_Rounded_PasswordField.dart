import '/components/Login_TextField_Container.dart';
import '/constants.dart';
import 'package:flutter/material.dart';

class LoginRoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const LoginRoundedPasswordField({
    Key? key,
    required this.hintText,
    this.icon = Icons.lock,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginTextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
