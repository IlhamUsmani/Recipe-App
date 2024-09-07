import 'package:flutter/material.dart';

import 'package:recipe_app/core/utils/screen_constants.dart';
import 'package:recipe_app/screen_size.dart';

class AuthWidgets extends StatelessWidget {
  const AuthWidgets({super.key, required this.image, required this.color});
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height * zeroPointOneTwo,
      width: ScreenSize.width * zeroPointOneTwo,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(image))),
    );
  }
}
