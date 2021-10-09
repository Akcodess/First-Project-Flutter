import 'package:firstproject/Screens/Signup/Signup_Screen.dart';

import '/components/Already_HaveAn_AccountCheck.dart';
import 'package:firstproject/components/Rounded_button.dart';

import '/components/Login_Rounded_PasswordField.dart';

import '/components/Login_Rounded_InputField.dart';
import 'package:flutter_svg/svg.dart';
import '/Screens/Login/Components/Login_background.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            LoginRoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            LoginRoundedPasswordField(
              hintText: "Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
