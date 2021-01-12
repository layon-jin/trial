import 'package:flutter/material.dart';
import 'package:trial/login-success/components/body.dart';

import '../size_config.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
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
