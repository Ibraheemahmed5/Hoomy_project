import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';

import '../landing/dashbord.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  late RxBool swich = false.obs;
  void initState() {
    super.initState();
    delay();
  }

  Future delay() async {
    await Future.delayed(const Duration(seconds: 3));

    Get.off(Dashboard(),transition: Transition.cupertinoDialog,duration: Duration(seconds: 2));


  }

  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white, animate: true);

    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset("photo/hoomy1.png"),
      nextScreen: Dashboard(),
      splashTransition: SplashTransition.fadeTransition,

      backgroundColor: Colors.white,
      splashIconSize: 150,
    );
  }
}
