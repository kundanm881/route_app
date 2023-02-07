// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_app/ui/pages/home/home_page.dart';
import 'package:route_app/ui/pages/splash_screen/splash_screen_page.dart';

class AppPages {
  static const String initPage = 'init_page';
  static const String splashScreen = 'splash_screen';
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
            return '/${AppPages.splashScreen}';
          } else {
            return null;
          }
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
            path: '/${AppPages.splashScreen}',
            name: AppPages.splashScreen,
            pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              child: SplashScreenPage(),
            ),
          ),
        ],
      );
}
