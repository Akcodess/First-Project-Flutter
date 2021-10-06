import 'package:firstproject/Screens/welcome/components/background.dart';
import 'package:firstproject/constants.dart';
import 'package:flutter/material.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
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
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: kPrimaryColor,
          onPressed: press(),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
