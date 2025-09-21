import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesi_check/ui/history/screen/history_screen.dart';
import 'package:sesi_check/ui/notification/screen/notification_screen.dart';
import 'package:sesi_check/ui/profile/screen/profile_screen.dart';

import '../ui/home/screen/home_screen.dart';
import '../ui/login/screen/login_screen.dart';
import 'routes.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Routes.login,
      builder: (BuildContext context, GoRouterState state) {
        return LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: Routes.home,
          builder: (BuildContext context, GoRouterState state) {
            return HomeScreen();
          },
        ),
        GoRoute(
          path: Routes.profile,
          builder: (BuildContext context, GoRouterState state) {
            return ProfileScreen();
          },
        ),
        GoRoute(
          path: Routes.notification,
          builder: (BuildContext context, GoRouterState state) {
            return NotificationScreen();
          },
        ),
        GoRoute(
          path: Routes.history,
          builder: (BuildContext context, GoRouterState state) {
            return HistoryScreen();
          },
        ),        
      ],
    ),
  ],
);