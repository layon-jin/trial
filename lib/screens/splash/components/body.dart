import 'package:flutter/material.dart';
import 'package:trial/componenTs/default_button.dart';
import 'package:trial/screens/splash/components/splash_content.dart';
import 'package:trial/sign-in/sign_in.dart';
import 'package:trial/size_config.dart';
import 'package:trial/constants_.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Discover new local products and earn \npoints for shopping",
      "image": "assets/images/5.png",
    },
    {
      "text": "Use our safe and easy payment  \nplatform with no worries",
      "image": "assets/images/1.png",
    },
    {
      "image": "assets/images/images.png",
      "text": "Find favorites items and get delivery \nat your door-step",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(50)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefualtButton(
                      text: "CONTINUE",
                      press: () {
                        Navigator.pushNamed(context, SignIn.routeName);
                      },
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      // duration: kAnimationDuration,
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
