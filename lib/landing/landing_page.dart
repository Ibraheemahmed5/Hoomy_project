import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../Sign_in_page/sing_in_main_page.dart';
import '../Sign_up_page/Sign_up_main_page.dart';
import '../home/home_main_page.dart';
import 'button.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xff45B9EE), animate: false);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset('photo/11.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('photo/hoomy2.png',
                            width: 210, height: 100),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Button1(
                      text: 'تسجيل دخول',
                      onPressed: () {
                        print("تسجيل الدخول");
                        Get.to(Sign_in_main_page(),transition: Transition.noTransition,duration: Duration(seconds: 1));
                      },
                    ),
                    Button1(
                      text: 'انشاء حساب',
                      onPressed: () {
                        print("انشاء حساب");
                        Get.to(Sign_up_main_page(),transition: Transition.noTransition,duration: Duration(seconds: 1));
                      },
                    ),
                    RichText(
                        text: TextSpan(
                      text: 'الدخول كزائر',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(HomeMainPage(),transition: Transition.noTransition,duration: Duration(seconds: 1));
                        },
                      style:
                          GoogleFonts.inter(fontSize: 20, color: Colors.black),
                    ))
                  ],
                ),
              ),
            ]),
      ),
    ));
  }
}
