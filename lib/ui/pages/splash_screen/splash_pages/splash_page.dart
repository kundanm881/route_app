import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key, required this.svgPic});
  final String svgPic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(), SvgPicture.asset(svgPic)],
    );
  }
}
