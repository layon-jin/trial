import 'package:flutter/material.dart';
import 'package:trial/components/roundedButton.dart';
import 'package:trial/home.dart';
import 'package:trial/screens/login/components/background.dart';
import 'package:trial/components/rounded_input.dart';
import 'package:trial/components/text_field_cont.dart';
import 'package:trial/components/haveAnAccount.dart';
import 'package:trial/components/passwordField.dart';
import 'package:trial/screens/SignUp/signup.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
          // Image.asset(
          //   "assets/images/login.png",
          //   // height: size.height * 5,
          // ),
          RoundedInputField(
            hintText: "Email Address",
            onChanged: (value) {},
          ),
          PasswordField(
            onChaged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              }),
          HaveAnAccount(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUp();
              }));
            },
          ),
        ]));
  }
}
