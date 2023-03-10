// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_app/res/app_pages.dart';
import 'package:route_app/res/router.dart';

import '../model/splash_model.dart';

class SkipBtn extends StatelessWidget {
  const SkipBtn({
    super.key,
    required this.pageController,
    required this.pages,
  });

  final PageController pageController;
  final List<SplashModel> pages;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          return GestureDetector(
            onTap: () {
              if (pageController.hasClients == false ||
                  pageController.page != pages.length - 1) {
                pageController.animateToPage(pages.length - 1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              } else {
                AppRouter.isFirstTimeStart = false;
                AppRouter.navContext.goNamed(AppPages.initPage);
                // AppRouter.nav!.pushReplacementNamed(AppPages.initPage);
              }
            },
            child: Text(
              (pageController.hasClients == false)
                  ? "Skip"
                  : (pageController.page != pages.length - 1)
                      ? "Skip"
                      : "Done",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        });
  }
}
