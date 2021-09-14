import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miflutterapp/ui_params/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = MiFlutterAppColors.primaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          //fixedSize: _buttonDesktopScreenSize(context),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(size.width * 0.10),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }
}
