import 'package:firstproject/Screens/Login/Login_Screen.dart';
import '/Screens/Signup/Signup_Screen.dart';
import 'package:firstproject/Screens/Welcome/Components/Welcome_background.dart';
import 'package:firstproject/components/Rounded_button.dart';
import 'package:firstproject/constants.dart';
import 'package:flutter/material.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sales",
              style: TextStyle(
                fontSize: 45,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.3),
            RoundedButton(
              text: "LOGIN",
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
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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
            ),
          ],
        ),
      ),
    );
  }
}
