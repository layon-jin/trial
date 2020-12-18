import 'package:flutter/material.dart';
import 'package:trial/components/roundedButton.dart';
import 'package:trial/constants.dart';
import 'package:trial/screens/login/login.dart';
// import 'package:trial/constants.dart';
import 'package:trial/screens/welcome/components/background.dart';
import 'package:trial/screens/SignUp/signup.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    // ignore: missing_required_param
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.07,
            ),
            Image.asset(
              "assets/images/features-01.png",
              // height: size.height * 1,
              width: size.width * 10,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Welcome to Layon's Market. ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              "With a few clicks, ",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: size.height * 0.00,
            ),
            Text(
              " we can ease your stress. Don't stress! ",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.blue,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
