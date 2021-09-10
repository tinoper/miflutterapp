import 'package:flutter/material.dart';
import 'package:miflutterapp/pages/login_page.dart';
import 'package:miflutterapp/ui_params/my_app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildMyAppTheme(),
      // Ir a página de autenticación
      home: LoginPage(),
    );
  }
}
