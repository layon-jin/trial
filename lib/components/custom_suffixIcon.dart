import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key,
    this.suffixIcon,
  }) : super(key: key);
  final String suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenHeight(30),
      ),
      child: Icon(
        Icons.email_outlined,
        color: Colors.grey,
      ),
    );
  }
}
