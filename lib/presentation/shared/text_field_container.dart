import 'package:flutter/material.dart';
import 'package:miflutterapp/presentation/ui_params/colors.dart';
import 'package:miflutterapp/presentation/ui_params/miflutterapp_sizes.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
