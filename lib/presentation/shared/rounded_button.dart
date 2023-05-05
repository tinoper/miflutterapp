import 'package:flutter/material.dart';
import 'package:miflutterapp/presentation/ui_params/colors.dart';
import 'package:miflutterapp/presentation/ui_params/miflutterapp_sizes.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = MiFlutterAppColors.primaryColor,
    this.textColor = MiFlutterAppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MiFlutterAppSizes.normalButtonHeight,
      width: MiFlutterAppSizes.normalButtonWidth,
      child: FilledButton(
        onPressed: press,
        child: Text(
          text,
        ),
      ),
    );
  }
}
