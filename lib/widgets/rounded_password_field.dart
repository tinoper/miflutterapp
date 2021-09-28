import 'package:flutter/material.dart';
import 'package:miflutterapp/ui_params/colors.dart';
import 'package:miflutterapp/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: MiFlutterAppColors.primaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: MiFlutterAppColors.primaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: MiFlutterAppColors.primaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
