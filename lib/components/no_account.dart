import 'package:flutter/material.dart';
import 'package:trial/forgot-password/forgot_password.dart';

import '../size_config.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(22),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Sign Up ",
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.red,
              fontSize: getProportionateScreenWidth(22),
            ),
          ),
        ),
      ],
    );
  }
}
