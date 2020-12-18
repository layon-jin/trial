import 'package:flutter/material.dart';
import 'package:trial/components/text_field_cont.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChaged;
  const PasswordField({
    Key key,
    this.onChaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChaged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.red,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
