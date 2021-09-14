import 'package:flutter/material.dart';
import 'package:miflutterapp/ui_params/colors.dart';

import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
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
        cursorColor: primaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: primaryColor,
            //TODO icon size
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
        //Style->TextTheme.subtitle1 but Color doesn't works
      ),
    );
  }
}
