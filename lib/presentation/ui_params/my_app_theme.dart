import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miflutterapp/presentation/ui_params/miflutterapp_sizes.dart';

import 'colors.dart';

ThemeData buildMyAppTheme() {
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: MiFlutterAppColors.primaryColor,
    secondary: MiFlutterAppColors.secondaryColor,
  );

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: MiFlutterAppColors.primaryColor,
    backgroundColor: MiFlutterAppColors.secondaryColor,
    //canvasColor: white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: colorScheme,

    ///accentColor es el color secundario.Usualmente se usa en tab activo, input text con foco, checkedboxes,etc
    accentColor: MiFlutterAppColors.secondaryColor,
    appBarTheme: _buildMyAppBarTheme(),
    //scaffoldBackgroundColor: backGroundColor,
    iconTheme: base.iconTheme.copyWith(
      color: Colors.red,
    ),
    inputDecorationTheme:
        base.inputDecorationTheme.copyWith(fillColor: Colors.red),
    textTheme: _buildMyAppTextTheme(base.textTheme),
    // Si es necesario usar otro color que el secundario para el FAB
    // floatingActionButtonTheme:
    //     FloatingActionButtonThemeData(backgroundColor: primaryColor),
  );
}

TextTheme _buildMyAppTextTheme(TextTheme base) {
  return base
      .copyWith(
        // Usada en titulo de pantalla Login
        headline6: base.headline6?.copyWith(
          fontWeight: FontWeight.bold,
          color: MiFlutterAppColors.fontColor,
        ),
        headline4: base.headline4?.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        //TextFormField, TextField
        subtitle1: base.subtitle1?.copyWith(
          fontSize: MiFlutterAppSizes.miFlutterAppHintTextSize,
          fontWeight: FontWeight.w300,
          color: MiFlutterAppColors.fontColor,
        ),

        subtitle2: base.subtitle2?.copyWith(
          //fontSize: MiFlutterAppSizes.miFlutterAppHintTextSize,
          fontWeight: FontWeight.w300,
        ),

        bodyText1: base.bodyText1?.copyWith(),
        //Text Widget
        bodyText2: base.bodyText2?.copyWith(
          fontSize: MiFlutterAppSizes.t7,
          color: MiFlutterAppColors.primaryColor,
        ),

        // Usada pantalla Login, al preguntar si no tiene cuenta
        caption: base.caption?.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: MiFlutterAppColors.fontColor,
        ),
        //ElevatedButton
        button: base.button?.copyWith(
          color: MiFlutterAppColors.secondaryColor,
          fontSize: MiFlutterAppSizes.normalButtonText,
        ),
      )
      .apply(fontFamily: 'Roboto');
}

AppBarTheme _buildMyAppBarTheme() {
  return AppBarTheme(
    elevation: 4.0,
    color: MiFlutterAppColors.primaryColor,
  );
}
