import 'package:flutter/material.dart';
import 'package:miflutterapp/ui_params/colors.dart';
import 'package:miflutterapp/ui_params/miflutterapp_sizes.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
        horizontal: MiFlutterAppSizes.normalInputFieldPadding,
      ),
      height: MiFlutterAppSizes.normalInputFieldHeight,
      width: MiFlutterAppSizes.normalInputFieldWidth,
      decoration: BoxDecoration(
        color: MiFlutterAppColors.primaryColorLight,
        borderRadius: const BorderRadius.all(
            Radius.circular(MiFlutterAppSizes.borderRadiusInputField)),
      ),
      child: child,
    );
  }
}
