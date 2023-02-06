import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:flutter/services.dart';import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';import 'package:get/get.dart';import 'package:google_fonts/google_fonts.dart';import 'package:hoomy_project1/favorite_page/favorite_page_main.dart';import 'package:hoomy_project1/profile_page/profile_button.dart';import 'package:image_picker/image_picker.dart';import 'package:unicons/unicons.dart';import '../About_us/About_us.dart';import '../Hoomy_main_page.dart';import '../Sign_up_page/Sign_up_main_page.dart';import '../api/Api_calls.dart';import '../api/auth_service/auth.dart';import '../api/local_database/shared_preferences.dart';import '../landing/landing_page.dart';import '../my_cart_page/my_cart_main.dart';import 'NavigationBar_profile.dart';import 'blue_logo.dart';import 'image_name.dart';import 'dart:io';class profile_main_page extends StatefulWidget {  profile_main_page({Key? key  }) : super(key: key);  @override  State<profile_main_page> createState() => _profile_main_pageState();}class _profile_main_pageState extends State<profile_main_page> {  File? image;  @override  Widget build(BuildContext context) {    FlutterStatusbarcolor.setStatusBarColor(Colors.white, animate: true);    return Scaffold(      backgroundColor: Colors.white,      body: SafeArea(        child: Column(            crossAxisAlignment: CrossAxisAlignment.center,            children: [              if(Database2.box.read("first_name") != null && Database2.box.read("last_name")!= null)              image_name_profile(                name: "${Database2.box.read("first_name") +"  "+ Database2.box.read("last_name")} ",              ),              if(Database2.box.read("first_name") == null && Database2.box.read("last_name")== null)                image_name_profile(                  name: "Ghost",                ),                Flexible(                  child: ListView(                children: [                  Padding(                    padding:                        const EdgeInsets.only(left: 25, right: 25, top: 30),                    child: Column(                      mainAxisAlignment: MainAxisAlignment.start,                      crossAxisAlignment: CrossAxisAlignment.center,                      children: [                        profile_button(                          title: 'المضلات',                          icon_left: Icon(                            Icons.favorite,                            color: Color(0xff45B9EE),                            size: 24,                          ),                          onPressed: () {                            Get.offAll(Hoomy_main_page(index1: 1,),transition: Transition.noTransition,duration: Duration(seconds: 2));                          },                        ),                        profile_button(                          title: 'السلة',                          icon_left: Icon(                            Icons.shopping_cart,                            color: Color(0xff45B9EE),                            size: 24,                          ),                          onPressed: () {                            BackEnd.Get_cart();                              //  BackEnd.Get_cart();                              Get.offAll(Hoomy_main_page(index1: 2,),transition: Transition.noTransition,duration: Duration(seconds: 2));                           },                        ),                        profile_button(                          title: 'من نحن؟',                          icon_left: Icon(                            Icons.info_outline_rounded,                            color: Color(0xff45B9EE),                            size: 24,                          ),                          onPressed: () {                            print("About us");                            Get.to(About_us(),transition: Transition.noTransition,duration: Duration(seconds: 2));                          },                        ),                        profile_button(                          title: 'تسجيل خروج',                          icon_left: Icon(                            Icons.exit_to_app,                            color: Color(0xff45B9EE),                            size: 24,                          ),                          onPressed: () {                            print("Loge out");                            AuthService.signOut();                            Future.delayed(const Duration(seconds: 3), () {                              Get.to(Landing(),transition: Transition.noTransition,duration: Duration(seconds: 1));                            });                          },                        ),                      ],                    ),                  )                ],              ))            ]),      ),    );  }}