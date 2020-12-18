import 'package:flutter/material.dart';
//import 'package:trial/components/haveAnAccount.dart';
import 'package:trial/components/passwordField.dart';
import 'package:trial/components/rounded_input.dart';
import 'package:trial/screens/SIgnUp/components/haveAnAccount.dart';

import 'package:trial/screens/SIgnUp/components/roundedButton.dart';
import 'package:trial/screens/SIgnUp/components/rounded_input.dart';
import 'package:trial/screens/SignUp/components/background.dart';
import 'package:trial/screens/login/login.dart';
import 'package:trial/screens/SIgnUp/components/ordivider.dart';

import '../../../home.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Text(
            "JOIN US NOW",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          // Image.asset(
          //   "assets/images/login.png",
          //   // height: size.height * 5,
          // ),
          RoundedInputField2(
            hintText: "Username",
            onChanged: (value) {},
          ),
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
          RoundedButton2(
              text: "CREATE NOW",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              }),
          HaveAnAccount2(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(border: Border.all(), shape: BoxShape.circle),
                // child: SvgPicture.asset(
                //   "assets/icons/facebook.svg"),
              )
            ],
          )
        ]));
  }
}
