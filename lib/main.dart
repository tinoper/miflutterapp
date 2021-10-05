import 'package:flutter/material.dart';
import 'package:miflutterapp/locator.dart';
import 'package:miflutterapp/routes/router.gr.dart';
import 'package:miflutterapp/presentation/ui_params/my_app_theme.dart';

void main() {
  registerDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: locator<AppRouter>().defaultRouteParser(),
      routerDelegate: locator<AppRouter>().delegate(),
      title: 'MiFlutterApp',
      theme: buildMyAppTheme(),
    );
  }
}
