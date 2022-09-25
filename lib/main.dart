import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hoomy_project1/profile_page/profile_main_page.dart';
import 'package:hoomy_project1/splash/splash_screen.dart';
import 'package:hoomy_project1/test.dart';

import 'package:hoomy_project1/whatsapp/whatsapp_main_page.dart';

import 'Search_page_/search_page.dart';
import 'Sign_in_page/sing_in_main_page.dart';
import 'Sign_up_page/Sign_up_main_page.dart';
import 'Sign_up_page/sign_up.dart';
import 'api/test7.dart';
import 'home/home_main_page.dart';
import 'landing/dashbord.dart';
import 'landing/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Splash(),
      // home: Dashboard(),
      home: Landing(),
      //home: Sign_in_main_page(),
      //home: Sign_up_main_page(),
      //home: HomeMainPage(),
      //home: profile_main_page(),
      //home: Search_page(),
      //home: whatsapp_main_page(),
      //home: MyApp1(),
      //home: MyCart(),
      // home: FavoritePage(),
      //home: whatsapp_main_page(),
      //home: search()
      // home: test8(),
    );
  }
}
