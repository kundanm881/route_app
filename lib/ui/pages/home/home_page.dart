import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_app/res/app_pages.dart';
import 'package:route_app/res/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
              onTap: () {
                // AppRouter.nav.currentState!.pushNamed(AppPages.splashScreen);
                context.goNamed(AppPages.splashScreen);
              },
              child: Text("home Page"))),
    );
  }
}
