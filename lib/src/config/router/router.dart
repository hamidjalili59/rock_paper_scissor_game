// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockie/src/core/constants/routes.dart';
import 'package:rockie/src/presentation/auth/page/auth_page.dart';
import 'package:rockie/src/presentation/home/page/home_page.dart';
import 'package:rockie/src/presentation/join_server/page/join_server_page.dart';
import 'package:rockie/src/presentation/splash/page/splash_page.dart';

/// this class used for navigating in application
class AppRouter {
  ///
  GoRouter get router => _router;

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      _route(
        name: splashRoute,
        path: splashRoute,
        duration: Durations.short1,
        pageBuilder: (state) => const SplashPage(),
      ),
      _route(
        name: joinServerRoute,
        path: joinServerRoute,
        duration: Durations.short1,
        pageBuilder: (state) => const JoinServerPage(),
      ),
      _route(
        name: homeRoute,
        path: homeRoute,
        duration: Durations.short1,
        pageBuilder: (state) => const HomePage(),
      ),
      _route(
        name: authRoute,
        path: authRoute,
        duration: Durations.short1,
        pageBuilder: (state) => const AuthPage(),
      ),
    ],
    errorBuilder: (context, state) => Container(),
  );
}

GoRoute _route({
  required String name,
  required String path,
  required Duration duration,
  required Widget Function(GoRouterState state) pageBuilder,
  List<GoRoute> routes = const [],
}) =>
    GoRoute(
      name: name,
      path: path,
      routes: routes,
      pageBuilder: (context, state) => CustomTransitionPage(
        child: pageBuilder(state),
        transitionDuration: duration,
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
