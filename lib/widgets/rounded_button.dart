import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miflutterapp/ui_params/colors.dart';
import 'package:miflutterapp/ui_params/miflutterapp_sizes.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = MiFlutterAppColors.primaryColor,
    this.textColor = MiFlutterAppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MiFlutterAppSizes.normalButtonHeight,
      width: MiFlutterAppSizes.normalButtonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: MiFlutterAppSizes.normalElevation,
          shape: new RoundedRectangleBorder(
            borderRadius:
                new BorderRadius.circular(MiFlutterAppSizes.borderRadiusButton),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: MiFlutterAppSizes.normalButtonText,
          ),
        ),
      ),
    );
  }
}
