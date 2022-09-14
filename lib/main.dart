
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/profile_page/profile_main_page.dart';
import 'package:hoomy_project1/single_prodect/single_prodect_main.dart';
import 'package:hoomy_project1/single_prodect/test.dart';
import 'package:hoomy_project1/splash/splash_screen.dart';
import 'package:hoomy_project1/tast2.dart';

import 'Sign_in_page/sing_in_main_page.dart';
import 'Sign_up_page/Sign_up_main_page.dart';
import 'Sign_up_page/sign_up.dart';
import 'favorite_page/favorite_page_main.dart';
import 'home/home_main_page.dart';
import 'landing/dashbord.dart';
import 'landing/landing_page.dart';
import 'my_cart_page/my_cart_main.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //statusBarColor: Colors.white,
    statusBarColor: Color(0xff45B9EE),


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
    return  GetMaterialApp(
        // home: Splash(),
        //home: Dashboard(),
        //home: Landing(),
        //home: Sign_in_main_page(),
        //home: Sign_up_main_page(),
        home: HomeMainPage(),
    //home: profile_main_page(),
    //home: MyAppw(),
    // home:MyCart(),
    //home: FavoritePage(),
    //home: test(),

    );
  }
}
