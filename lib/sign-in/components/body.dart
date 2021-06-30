import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trial/componenTs/no_account.dart';
import 'package:trial/componenTs/social_card.dart';
//import 'package:trial/forgot-password/forgot_password.dart';
import 'package:trial/sign-in/components/sign_form.dart';
import 'package:trial/size_config.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../home.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenHeight(20),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Welcome Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(50),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign in with your email and password \nor continue with social accounts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: getProportionateScreenWidth(28),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCards(
                      press: () {},
                    ),
                  ],
                ),
                NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
