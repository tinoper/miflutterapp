import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:miflutterapp/presentation/player_list/view/player_list_page.dart';

import '../presentation/error/view/error_page.dart';
import '../presentation/login/view/view.dart';
import '../presentation/signup/view/view.dart';
import '../presentation/user_profile/view/view.dart';

class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          errorBuilder: (context, state) => ErrorPage(
            errorMessage: state.error.toString(),
          ),
          initialLocation: "/login",
          routes: [
            GoRoute(
              name: LoginPage.name,
              path: "/login",
              builder: (context, state) => LoginPage(),
            ),
            GoRoute(
              name: SignUpPage.name,
              path: "/signup",
              builder: (context, state) => const SignUpPage(),
            ),
            GoRoute(
              name: PlayerListPage.name,
              path: "/player-list",
              builder: (context, state) => const PlayerListPage(),
            ),
            GoRoute(
              name: UserProfilePage.name,
              path: "/user-profile",
              builder: (context, state) => const UserProfilePage(),
            ),
          ],
        );

  GoRouter get router {
    return _router;
  }
}
