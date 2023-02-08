// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_app/res/app_pages.dart';
import 'package:route_app/ui/pages/home/home_page.dart';
import 'package:route_app/ui/pages/splash_screen/splash_screen.dart';

class AppRouter {
  static final _key = GlobalKey<NavigatorState>();
  static NavigatorState? get nav => _key.currentState!;
  static BuildContext get navContext => _key.currentContext!;

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
              child: SplashScreen(),
            ),
          ),
          // GoRoute(
          //   path: '/${AppPages.splashScreen}',
          //   name: AppPages.splashScreen,
          //   pageBuilder: (context, state) => MaterialPage(
          //     key: state.pageKey,
          //     child: SplashScreenPage(),
          //   ),
          // ),
        ],
      );
}
