import 'package:flutter/material.dart';
import 'package:miflutterapp/ui_params/colors.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      //TODO Parametrizar para que sea mas responsive por defecto
      height: size.height * 0.06,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: primaryColorLight,
        //TODO parametrizar borderRadius en MiFlutterAppSizes
        borderRadius: const BorderRadius.all(Radius.circular(29)),
      ),
      child: child,
    );
  }
}
