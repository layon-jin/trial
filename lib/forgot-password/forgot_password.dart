import 'package:flutter/material.dart';
import 'package:trial/forgot-password/components/body.dart';

import '../size_config.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(25),
            //  fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
