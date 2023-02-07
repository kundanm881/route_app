// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_app/ui/pages/home/home_page.dart';
import 'package:route_app/ui/pages/splash_screen/splash_screen_page.dart';

class AppPages {
  static const String initPage = 'initPage';
  static const String splashScreen = 'splashScreen';
}

class AppRouter {
  static final _key = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> get nav => _key;

  static bool isFirstTimeStart = true;

  static GoRouter get configretion => GoRouter(
        navigatorKey: _key,
        initialLocation: '/',
        redirect: (context, state) {
          if (isFirstTimeStart == true) {
            return '/splashScreen';
          }
          return null;
        },
        routes: [
          GoRoute(
            path: '/',
            name: AppPages.initPage,
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: HomePage(),
            ),
          ),
          GoRoute(
            path: '/splashScreen',
            name: AppPages.splashScreen,
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: SplashScreenPage(),
            ),
          )
        ],
      );
}
