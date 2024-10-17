import 'package:flutter/material.dart';
import 'package:apartments_manager_main/fetures/authentication/controllers/screen_redirector.dart';
import 'package:apartments_manager_main/utils/color_constants.dart';
import 'package:apartments_manager_main/utils/image_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenReDirector().redirectScreen(),
            ),
            (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryWhiteColor,
      body: Center(
        child: SizedBox(
            width: 150,
            height: 142,
            child: Image.asset(ImageConstants.appLogo)),
      ),
    );
  }
}
