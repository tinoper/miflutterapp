import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/login/view/view.dart';
import '../presentation/signup/view/view.dart';

class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          // TODO: add error page
          // errorBuilder: (context, state) => ErrorPage(
          //   errormsg: state.error.toString(),
          // ),
          initialLocation: "/login",
          routes: [
            GoRoute(
              name: "login",
              path: "/login",
              builder: (context, state) => LoginPage(),
            ),
            // GoRoute(
            //   name: "home",
            //   path: "/",
            //   builder: (context, state) => const ServerListPage(),
            // ),
            GoRoute(
              name: "signup",
              path: "/signup",
              builder: (context, state) => const SignUpPage(),
            ),
            // GoRoute(
            //   name: "user_profile",
            //   path: "/user_profile",
            //   builder: (context, state) => const UserProfilePage(),
            // ),
            // GoRoute(
            //   name: "server_details",
            //   path: "/server_details/:fqdn",
            //   builder: (context, state) => ServerDetailsPage(
            //     fqdn: state.params["fqdn"]!,
            //   ),
            // ),
          ],
        );

  GoRouter get router {
    return _router;
  }
}
