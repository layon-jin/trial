import 'package:flutter/material.dart';
import 'package:trial/components/roundedButton.dart';
import 'package:trial/constants.dart';
import 'package:trial/screens/login/login.dart';
// import 'package:trial/constants.dart';
import 'package:trial/screens/welcome/components/background.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: missing_required_param
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset(
              "assets/icons/login.png",
              // height: size.height * 0.6,
            ),
            SizedBox(
              height: size.height * 0.05,
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
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
