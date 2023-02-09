import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hoomy_project1/slider/slides_dots.dart';
import 'package:hoomy_project1/slider/slides_item.dart';
import 'package:loading_animations/loading_animations.dart';

import '../help/Colors.dart';
import '../slider/models/slider.dart';
import 'landing_page.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final RxBool delay1 = true.obs;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white, animate: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/5.5),
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                for (int i = 0; i < slideList.length; i++)
                                  if (i == _currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),




              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colorsapp.mainColor,
                      fixedSize: const Size(65, 65),
                      shape: const CircleBorder(),
                    ),
                    onPressed: () async {
                      delay1.value = false;

                      Future.delayed(const Duration(seconds: 3), () {
                        Get.offAll(Landing(),
                            transition: Transition.noTransition,
                            duration: Duration(seconds: 2));
                        setState(() {});
                      });
                      Future.delayed(const Duration(seconds: 3), () {
                        delay1.value = true;
                        print("هذا الدلي بل اويت${delay1.value}");
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
              ),
              Obx(() {
                return delay1.value == false
                    ? Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: LoadingBouncingGrid.circle(
                            size: 50, backgroundColor: Colorsapp.mainColor),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Container(
                          width: 50,
                          height: 50,
                        ),
                      );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
