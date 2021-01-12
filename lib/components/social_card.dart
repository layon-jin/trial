import 'package:flutter/material.dart';

import '../size_config.dart';

class SocialCards extends StatelessWidget {
  const SocialCards({
    Key key,
    this.press,
    this.icon,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(13)),
        height: getProportionateScreenHeight(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.email_sharp,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
