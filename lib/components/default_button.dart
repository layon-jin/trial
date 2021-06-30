import 'package:flutter/material.dart';
import 'package:trial/size_config.dart';

class DefualtButton extends StatelessWidget {
  const DefualtButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(100),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.redAccent,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30), color: Colors.white),
        ),
      ),
    );
  }
}
