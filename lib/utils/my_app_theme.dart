import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData buildMyAppTheme() {
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  );

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    scaffoldBackgroundColor: backGroundColor,
    iconTheme: base.iconTheme.copyWith(
      color: Colors.red,
    ),
    inputDecorationTheme:
        base.inputDecorationTheme.copyWith(fillColor: Colors.red),
    textTheme: _buildMyAppTextTheme(base.textTheme),
  );
}

TextTheme _buildMyAppTextTheme(TextTheme base) {
  return base
      .copyWith(
        // Usada en titulo de pantalla Login
        headline6: base.headline6.copyWith(
          fontWeight: FontWeight.bold,
          color: fontColor,
        ),
        headline4: base.headline6.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        subtitle1: base.subtitle1.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
        bodyText1: base.bodyText1.copyWith(),
        bodyText2: base.bodyText2.copyWith(),
        // Usada pantalla Login, al preguntar si no tiene cuenta
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
          color: fontColor,
        ),
        button: base.button.copyWith(
          color: secondaryColor,
        ),
      )
      .apply(fontFamily: 'Roboto');
}
