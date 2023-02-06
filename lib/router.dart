// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_app/ui/pages/home/home_page.dart';
import 'package:route_app/ui/pages/splash_screen/splash_screen_page.dart';

class AppRouter {
  static bool _isFirstTimeStart = true;
  static GoRouter get configretion => GoRouter(
        initialLocation: '/',
        redirect: (context, state) {
          if (_isFirstTimeStart == true) {
            return '/splashScreen';
          }
          return null;
        },
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: HomePage(),
            ),
          ),
          GoRoute(
            path: '/splashScreen',
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: SplashScreenPage(),
            ),
          )
        ],
      );
}
