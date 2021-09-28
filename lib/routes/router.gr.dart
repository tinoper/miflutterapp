// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/form_page.dart' as _i4;
import '../pages/list_page.dart' as _i2;
import '../pages/login_page.dart' as _i1;
import '../pages/profile_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.LoginPage());
    },
    ListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.ListPage());
    },
    UserProfile.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.UserProfile());
    },
    FormPlayer.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.FormPlayer());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginRoute.name, path: '/'),
        _i5.RouteConfig(ListRoute.name, path: '/ListPage'),
        _i5.RouteConfig(UserProfile.name, path: '/UserProfile'),
        _i5.RouteConfig(FormPlayer.name, path: '/FormPlayer')
      ];
}

/// generated route for [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for [_i2.ListPage]
class ListRoute extends _i5.PageRouteInfo<void> {
  const ListRoute() : super(name, path: '/ListPage');

  static const String name = 'ListRoute';
}

/// generated route for [_i3.UserProfile]
class UserProfile extends _i5.PageRouteInfo<void> {
  const UserProfile() : super(name, path: '/UserProfile');

  static const String name = 'UserProfile';
}

/// generated route for [_i4.FormPlayer]
class FormPlayer extends _i5.PageRouteInfo<void> {
  const FormPlayer() : super(name, path: '/FormPlayer');

  static const String name = 'FormPlayer';
}
