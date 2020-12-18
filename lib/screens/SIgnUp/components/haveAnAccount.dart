import 'package:flutter/material.dart';

class HaveAnAccount2 extends StatelessWidget {
  final bool login;
  final Function press;
  const HaveAnAccount2({
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
          login ? "Already have an account ?" : "Don't have an Account ?",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? " Login" : "Sign Up",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
