import 'package:flutter/material.dart';
import 'package:trial/profile/components/profile_menu.dart';
import 'package:trial/profile/components/profile_pic.dart';

import '../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 40,
          width: 40,
        ),
        ProfileMenu(
          icon: "Icons.person_outline",
          press: () {},
          text: "here ad",
        ),
      ],
    );
  }
}
