import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/bg.svg",
      fit: BoxFit.fill,
    );
  }
}
