import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/color_constants.dart';
import 'package:recipe_app/core/utils/screen_constants.dart';
import 'package:recipe_app/screen_size.dart';

class LoginController extends StatelessWidget {
  const LoginController(
      {super.key, required this.inputText, required this.icon});
  final String inputText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * zeroPointZeroEight,
      width: ScreenSize.width * zeroPointEight,
      child: TextField(
        decoration: InputDecoration(
            hintText: inputText,
            suffixIcon: Icon(
              icon,
              color: white,
            ),
            hintStyle: TextStyle(
                fontSize: ScreenSize.height * zeroPointZeroOneEight,
                color: blurWhite),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: amber),
              borderRadius: BorderRadius.circular(fifty),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: black),
              borderRadius: BorderRadius.circular(fifty),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: black),
              borderRadius: BorderRadius.circular(fifty),
            )),
      ),
    );
  }
}
