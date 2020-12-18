import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;

    return Container(
        //height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          // Positioned(
          // top: -400,
          // child: Image.asset(
          //   "assets/images/welcome.png",
          //   height: size.height * 1,
          // width: size.width * 3,
          // ),
          // ),
          child,
        ]));
  }
}
