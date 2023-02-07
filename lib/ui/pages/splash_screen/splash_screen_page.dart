// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:route_app/res/res.dart';
import 'package:route_app/ui/pages/splash_screen/splash_pages/splash_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'model/splash_model.dart';
import 'splash_pages/skip_btn.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final PageController pageController = PageController(initialPage: 0);

  List<SplashModel> pages = [
    SplashModel(
        svgIcon: AppIcons.flyingDrown,
        about:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        title: "What is Lorem Ipsum"),
    SplashModel(
        svgIcon: AppIcons.traveling,
        about:
            "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        title: "Why do we use it"),
    SplashModel(
        svgIcon: AppIcons.woman,
        about:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        title: "Where can I get some"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 16),
                child: SkipBtn(pageController: pageController, pages: pages),
              ),
            ),
            // Page data
            Expanded(
              child: PageView.builder(
                itemCount: pages.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  return SplashPage(
                    svgPic: pages[index].svgIcon!,
                    title: pages[index].title!,
                    description: pages[index].about!,
                  );
                },
              ),
            ),
            // Page indictor
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
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
