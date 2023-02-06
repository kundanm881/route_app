// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final PageController pageController = PageController(
    initialPage: 0,
  );

  List<String> pages = ["kundan", "gunjan", 'jyoti'];
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: pages.length,
              controller: pageController,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(pages[index]),
                );
              },
            ),
          ),
          // My custom page indictor

          SizedBox(height: 30),
        ],
      ),
    );
  }
}
