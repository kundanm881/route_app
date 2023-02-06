// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:route_app/res/res.dart';
import 'package:route_app/ui/pages/splash_screen/splash_pages/splash_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final PageController pageController = PageController(
    initialPage: 0,
  );

  List<SplashModel> pages = [
    SplashModel(svgIcon: AppIcons.flyingDrown, about: "dsds", title: "dsafdf"),
    SplashModel(svgIcon: AppIcons.traveling, about: "dsds", title: "dsafdf"),
    SplashModel(svgIcon: AppIcons.woman, about: "dsds", title: "dsafdf"),
  ];
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
                return SplashPage(
                  svgPic: pages[index].svgIcon!,
                );
              },
            ),
          ),
          // My custom page indictor
          SmoothPageIndicator(
            controller: pageController,
            count: pages.length,
            effect: WormEffect(
                activeDotColor: Colors.blue,
                dotHeight: 10,
                dotWidth: 10,
                strokeWidth: 1),
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class SplashModel {
  String? svgIcon;
  String? title;
  String? about;

  SplashModel({this.title, this.svgIcon, this.about});
}
