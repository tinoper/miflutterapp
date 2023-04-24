import 'package:flutter/material.dart';

import '../../../ui_params/miflutterapp_sizes.dart';

class CustomCardProfile extends StatelessWidget {
  const CustomCardProfile({
    super.key,
    required this.size,
    required this.colors,
    required this.userName,
  });

  final Size size;
  final ColorScheme colors;
  final String userName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double tempMargin = size.width * 0.098;

    return Container(
      height: size.height / 3.5,
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft:
              Radius.circular(MiFlutterAppSizes.borderRadiusProfileCard),
          bottomRight:
              Radius.circular(MiFlutterAppSizes.borderRadiusProfileCard),
        ),
      ),
      child: FittedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: tempMargin),
          child: Text(
            userName,
          ),
        ),
      ),
    );
  }
}
