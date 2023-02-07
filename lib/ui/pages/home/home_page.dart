import 'package:flutter/material.dart';
import 'package:route_app/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
              onTap: () {
                AppRouter.nav.currentState!.pushNamed(AppPages.splashScreen);
              },
              child: Text("home Page"))),
    );
  }
}
