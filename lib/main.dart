
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hoomy_project1/test.dart';
import 'splash/splash_screen.dart';
import 'landing/landing_page.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
