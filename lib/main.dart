import 'package:flutter/material.dart';
import 'config/theme/app_theme.dart';
import 'routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();

    final AppTheme appBarTheme = AppTheme();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _router.router.routeInformationProvider,
      routeInformationParser: _router.router.routeInformationParser,
      routerDelegate: _router.router.routerDelegate,
      title: 'MiFlutterApp',
      theme: appBarTheme.getTheme(),
    );
  }
}
