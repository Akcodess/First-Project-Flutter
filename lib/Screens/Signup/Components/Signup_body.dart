import 'package:firstproject/Screens/Login/Login_Screen.dart';
import 'package:firstproject/components/Already_HaveAn_AccountCheck.dart';
import 'package:firstproject/components/Login_Rounded_InputField.dart';
import 'package:firstproject/components/Login_Rounded_PasswordField.dart';
import 'package:firstproject/components/Rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/Screens/Signup/Components/Signup_background.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignupBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            LoginRoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            LoginRoundedPasswordField(
              hintText: "Password",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
