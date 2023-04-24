import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepOrange,
        textTheme: GoogleFonts.latoTextTheme(ThemeData().textTheme),
      );
}
