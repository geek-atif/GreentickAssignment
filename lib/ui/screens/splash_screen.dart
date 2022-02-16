import 'package:get/get.dart';
import '../../ui/routers/my_router.dart';
import '../../ui/styles/my_app_theme.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../styles/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startTime();
  }

  _startTime() async {
    var _duration = const Duration(seconds: 4);
    return Timer(_duration, navigationToWelcomeScreen);
  }

  void navigationToWelcomeScreen() {
    Get.toNamed(MyRouter.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyAppTheme.lightGreen,
        body: Container(
          alignment: Alignment.center,
          child: Image.asset(
            Images.logo,
          ),
        ),
      ),
    );
  }
}
