import 'package:auto_route/auto_route.dart';
import 'package:miflutterapp/presentation/pages/form_page.dart';
import 'package:miflutterapp/presentation/pages/list_page.dart';
import 'package:miflutterapp/presentation/pages/login_page.dart';
import 'package:miflutterapp/presentation/pages/profile_page.dart';

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
