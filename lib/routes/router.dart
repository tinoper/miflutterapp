import 'package:auto_route/auto_route.dart';
import 'package:miflutterapp/pages/form_page.dart';
import 'package:miflutterapp/pages/list_page.dart';
import 'package:miflutterapp/pages/login_page.dart';
import 'package:miflutterapp/pages/profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: LoginPage,
    ),
    AutoRoute(
      path: '/ListPage',
      page: ListPage,
    ),
    AutoRoute(
      path: '/UserProfile',
      page: UserProfile,
    ),
    AutoRoute(
      path: '/FormPlayer',
      page: FormPlayer,
    ),
  ],
)
class $AppRouter {}
