import 'package:flutter/material.dart';
import 'package:miflutterapp/locator.dart';

import 'package:miflutterapp/presentation/ui_params/my_app_theme.dart';

import 'routes/app_router.dart';

void main() {
  registerDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      //routerConfig: _router,
      routeInformationProvider: _router.router.routeInformationProvider,
      routeInformationParser: _router.router.routeInformationParser,
      routerDelegate: _router.router.routerDelegate,
      title: 'MiFlutterApp',
      theme: buildMyAppTheme(),
    );
  }
}
