import 'package:flutter/material.dart';
import 'package:trial/componenTs/default_button.dart';
import 'package:trial/home.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenWidth * 0.2,
        ),
        Image.asset("assets/images/aaa.png"),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Text(
          "Login Success",
          //  textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(50),
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.5,
          child: DefualtButton(
            text: " Back to home",
            press: () {
              Navigator.pushNamed(context, MyApp.routeName);
            },
          ),
        ),
        Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
