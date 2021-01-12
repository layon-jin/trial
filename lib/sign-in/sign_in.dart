import 'package:flutter/material.dart';
import 'package:trial/sign-in/components/body.dart';
import 'package:trial/size_config.dart';

class SignIn extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
