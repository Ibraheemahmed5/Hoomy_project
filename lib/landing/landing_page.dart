import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:loading_animations/loading_animations.dart';

import '../Hoomy_main_page.dart';
import '../help/Colors.dart';
import '../Sign_in_page/sing_in_main_page.dart';
import '../Sign_up_page/Sign_up_main_page.dart';
import '../api/Api_calls.dart';
import '../help/text_style.dart';
import '../home/home_main_page.dart';
import 'button.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final RxBool delay1 = true.obs;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colorsapp.mainColor,
        animate: false);

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
                    padding: const EdgeInsets.only(top: 20),
                    child: Text('اهلاً وسهلاً ',
                        style: Text_Style.getstyle(
                            fontsize: 35,
                            ColorText: Colorsapp.mainColor,
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Button1(
                          text: 'تسجيل دخول',
                          onPressed: () {
                            print("تسجيل الدخول");
                            Get.offAll(Sign_in_main_page(),
                                transition: Transition.noTransition,
                                duration: Duration(seconds: 1));
                          },
                        ),
                        Button1(
                          text: 'انشاء حساب',
                          onPressed: () {
                            print("انشاء حساب");
                            Get.offAll(Sign_up_main_page(),
                                transition: Transition.noTransition,
                                duration: Duration(seconds: 1));
                          },
                        ),
                        if(delay1.value == true)
                          RichText(
                            text: TextSpan(
                          text: 'الدخول كزائر',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              print("هذا الدلي بل اويت${delay1.value}");

                              delay1.value=false;
                              await BackEnd.get_Categories();
                              await BackEnd.Get3();
                              Future.delayed(const Duration(seconds: 3), () {
                                Get.offAll(Hoomy_main_page(),
                                    transition: Transition.noTransition,
                                    duration: Duration(seconds: 2));
                              });
                            Future.delayed(const Duration(seconds: 3), () {
                              delay1.value = true;
                              print("هذا الدلي بل اويت${delay1.value}");


                            });
                            },
                          style: GoogleFonts.cairo(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Colorsapp.mainColor,
                                letterSpacing: 1),
                          ),
                        )),
                        Obx(
                           () {
                            return delay1.value == false
                                ? Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child:LoadingBouncingGrid.circle(
                                  size: 50,
                                  backgroundColor: Colorsapp.mainColor
                              ),
                            ):Container();
                          }
                        ),

                        //
                        // LoadingJumpingLine.square(
                        //   size: 50,
                        //   backgroundColor: Colorsapp.mainColor
                        // ),




                      ],
                    ),
                  ),
                ]),
          ),
        ));
  }
}
