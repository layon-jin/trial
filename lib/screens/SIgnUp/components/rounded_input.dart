import 'package:flutter/material.dart';
import 'package:trial/components/text_field_cont.dart';

class RoundedInputField2 extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField2({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.red,
          ),
          hintText: "Email Address",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
