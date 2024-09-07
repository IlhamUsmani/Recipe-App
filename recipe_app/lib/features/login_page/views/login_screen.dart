import 'package:flutter/material.dart';
import 'package:recipe_app/features/login_page/views/widgets/authentication_Container.dart';
import 'package:recipe_app/core/utils/color_constants.dart';
import 'package:recipe_app/core/utils/image_constants.dart';
import 'package:recipe_app/features/login_page/views/widgets/login_controller.dart';
import 'package:recipe_app/core/utils/screen_constants.dart';
import 'package:recipe_app/screen_size.dart';

//Login Screen this screen consist of 2 inputControllers that are using bloc
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  // late Animation _roundnessAnimation;
  // late Animation _widthAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    )..addListener(() {
        setState(() {});
      });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: ScreenSize.height,
          width: ScreenSize.width,
          child: const Image(
            fit: BoxFit.fill,
            image: AssetImage(backgroundImage),
          ),
        ),
        Positioned(
          top: ScreenSize.height * zeroPointZeroEight,
          left: ScreenSize.width * zeroPointTwoFive,
          child: Text(
            appName,
            style: TextStyle(
                color: amber,
                fontFamily: 'Schyler',
                fontWeight: FontWeight.bold,
                fontSize: ScreenSize.height * zeroPointZeroFourZero),
          ),
        ),
        Positioned(
          top: ScreenSize.height * zeroPointTwoTwo,
          left: ScreenSize.width * zeroPointZeroFive,
          child: Container(
            height: ScreenSize.height * zeroPointSix,
            width: ScreenSize.width * zeroPointEightNine,
            decoration: BoxDecoration(
              color: glassWhite,
              borderRadius: BorderRadius.circular(twenty),
            ),
            child: Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  height: ScreenSize.height * zeroPointTwo,
                  child: const Image(
                    image: AssetImage(chefImage),
                  ),
                ),
                const Expanded(
                    flex: 7,
                    child:
                        LoginController(inputText: name, icon: Icons.person)),
                const Spacer(
                  flex: 2,
                ),
                const Expanded(
                  flex: 7,
                  child: LoginController(
                    inputText: password,
                    icon: Icons.remove_red_eye_outlined,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: ScreenSize.width * zeroPointFour,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(
                            5,
                          ),
                          shadowColor: MaterialStatePropertyAll(grey),
                          backgroundColor:
                              const MaterialStatePropertyAll(amber)),
                      onPressed: () {},
                      child: Text(
                        login,
                        style:
                            TextStyle(color: grey, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AuthWidgets(
                        image: google,
                        color: white,
                      ),
                      SizedBox(
                        width: ScreenSize.width * zeroPointZeroFive,
                      ),
                      const AuthWidgets(
                        image: fb,
                        color: white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
