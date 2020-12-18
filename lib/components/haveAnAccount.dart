import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const HaveAnAccount({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ?" : "Already Have an account ?",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : " Sign In",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
