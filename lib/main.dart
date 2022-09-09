
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Sign_in_page/sing_in_main_page.dart';
import 'Sign_up_page/Sign_up_main_page.dart';

import 'Sign_up_page/sign_up.dart';
import 'home/cart_list.dart';
import 'home/home_main_page.dart';
import 'home/home_slider/slider.dart';
import 'landing/dashbord.dart';
import 'landing/landing_page.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black87,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sign_up_main_page(),
    );
  }
}
