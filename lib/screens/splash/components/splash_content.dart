import 'package:flutter/material.dart';
import 'package:trial/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
    TextStyle style,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 110,
        ),
        Text(
          "ALL-MART",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(60),
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 10),
        Spacer(
          flex: 1,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(350),
          width: getProportionateScreenWidth(double.infinity),
        ),
        Text(text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(25),
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
