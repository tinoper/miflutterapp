import 'package:flutter/material.dart';
import 'package:miflutterapp/pages/login_page.dart';
import 'package:miflutterapp/routes/router.gr.dart';
import 'package:miflutterapp/ui_params/my_app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: 'MiFlutterApp',
      theme: buildMyAppTheme(),
      // Ir a página de autenticación
      //home: LoginPage(),
    );
  }
}
