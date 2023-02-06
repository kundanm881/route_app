import 'package:flutter/material.dart';
import 'package:route_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Home",
      routerConfig: AppRouter.configretion,
    );
  }
}

// https://kd.com
