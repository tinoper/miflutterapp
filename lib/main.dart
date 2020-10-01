import 'package:flutter/material.dart';
import 'package:miflutterapp/pages/list_page.dart';
import 'package:miflutterapp/pages/login_page.dart';
import 'package:miflutterapp/pages/profile_page.dart';
import 'package:miflutterapp/utils/my_app_theme.dart';

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
      // Ir a página de perfil de usuario
      //home: UserProfile(),
      // Ir a Listado de jugadores con acceso a formulario de ingreso
      //home: ListPage();
    );
  }
}
