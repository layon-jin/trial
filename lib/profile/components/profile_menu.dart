//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
   @required this.text,
   @required this.press,
   @required this.icon,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        //Text("My Account"),
        // textColor: Colors.black,

        color: Color(0xFFF5F6F9),
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset(""),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Text(
                "My Profile",
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
