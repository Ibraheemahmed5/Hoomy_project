import 'package:app_popup_menu/app_popup_menu.dart';import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';import 'package:google_fonts/google_fonts.dart';import 'package:hoomy_project1/help/Colors.dart';import '../NavigationBar/NavigationBar_defult.dart';import '../api/cart_models.dart';import '../help/text_style.dart';import '../profile_page/blue_logo.dart';class About_us extends StatelessWidget {  const About_us({Key? key}) : super(key: key);  @override  Widget build(BuildContext context) {    FlutterStatusbarcolor.setStatusBarColor(Colors.white, animate: true);    return Scaffold(      backgroundColor: Colors.white,      body: SafeArea(        child: Column(          mainAxisAlignment: MainAxisAlignment.start,          crossAxisAlignment: CrossAxisAlignment.center,          children: [            Hoomy_logo_blue(onPressed: () {              //Navigator.of(context).pop();              print(MediaQuery.of(context).size.height);            }),            Expanded(              child: ListView(                children: [                  Padding(                    padding: const EdgeInsets.all(15.0),                    child: Container(                      width: MediaQuery.of(context).size.width - 10,                      height: 200,                      decoration: BoxDecoration(                        color: Colorsapp.mainColor,                        borderRadius: BorderRadius.circular(10),                        boxShadow: [                          BoxShadow(                            color: Colors.black.withOpacity(0.2),                            spreadRadius: 4,                            blurRadius: 3,                            offset: Offset(0, 3), // changes x,y position of shadow                          ),                        ],                      ),                      child: Column(                        children: [                          Image.asset(                            "photo/hoomy2.png",                            width: 150,                            height: 120,                          ),                          Row(                            mainAxisAlignment: MainAxisAlignment.center,                            children: [                              Text(                                textDirection: TextDirection.rtl,                                " 07821596404",                                style: Text_Style.getstyle(                                    fontsize: 20,                                    ColorText: Colors.white,                                    fontWeight: FontWeight.w500),                              ),                              Icon(                                Icons.phone,                                color: Colors.white,                              ),                            ],                          ),                          Row(                            mainAxisAlignment: MainAxisAlignment.center,                            children: [                              Text(                                textDirection: TextDirection.rtl,                                " العراق - بغداد ",                                style: Text_Style.getstyle(                                    fontsize: 20,                                    ColorText: Colors.white,                                    fontWeight: FontWeight.w500),                              ),                              Icon(                                Icons.location_on,                                color: Colors.white,                              ),                            ],                          ),                        ],                      ),                    ),                  ),                  Padding(                    padding: const EdgeInsets.all(15.0),                    child: Container(                      width: MediaQuery.of(context).size.width - 10,                      height: 200,                      decoration: BoxDecoration(                        color: Colorsapp.mainColor,                        borderRadius: BorderRadius.circular(10),                        boxShadow: [                          BoxShadow(                            color: Colors.black.withOpacity(0.2),                            spreadRadius: 4,                            blurRadius: 3,                            offset: Offset(0, 3), // changes x,y position of shadow                          ),                        ],                      ),                      child: Padding(                        padding: const EdgeInsets.all(10.0),                        child: Column(                          crossAxisAlignment: CrossAxisAlignment.end,                          children: [                            Text(                                textDirection: TextDirection.rtl,                                "نحن فريق  تطبيق Hoomy وهذا المشروع هوة مشروع تخرج معسكر Unicoding المقدم من شركة Computiq ",                                style: GoogleFonts.tajawal(                                  textStyle: TextStyle(                                      height: 1.6,                                      fontSize: 20,                                      color: Colors.white,                                      letterSpacing: 1.5,                                      fontWeight: FontWeight.w700),                                )                            ),                          ],                        ),                      ),                    ),                  ),                  Column(                    children: [                      Image.asset("photo/Team work-amico.png",width: 300,height: 300,),                                            Text("Founders",                      style: Text_Style.getstyle(fontsize: 20, ColorText: Colors.black, fontWeight: FontWeight.w700),                      )                                                                ],                  ),                  Padding(                    padding: const EdgeInsets.all(15.0),                    child: Container(                      width: MediaQuery.of(context).size.width - 10,                      height: 200,                      decoration: BoxDecoration(                        color: Colorsapp.mainColor,                        borderRadius: BorderRadius.circular(10),                        boxShadow: [                          BoxShadow(                            color: Colors.black.withOpacity(0.2),                            spreadRadius: 4,                            blurRadius: 3,                            offset: Offset(0, 3), // changes x,y position of shadow                          ),                        ],                      ),                      child: Padding(                        padding: const EdgeInsets.all(10.0),                        child: Column(                          crossAxisAlignment: CrossAxisAlignment.end,                          children: [                            SizedBox(height: 5,),                            Align(                              alignment: Alignment.center,                              child: Text(                                textDirection: TextDirection.rtl,                                "Sura Rafe / Front-end developer",                                style: Text_Style.getstyle(                                    fontsize: 18,                                    ColorText: Colors.white,                                    fontWeight: FontWeight.w700),                              ),                            ),                            SizedBox(height: 5,),                            Align(                              alignment: Alignment.center,                              child: Text(                                textDirection: TextDirection.rtl,                                "Ibraheem Ahmed / Front-end developer",                                style: Text_Style.getstyle(                                    fontsize: 18,                                    ColorText: Colors.white,                                    fontWeight: FontWeight.w700),                              ),                            ),                            SizedBox(height: 5,),                            Align(                              alignment: Alignment.center,                              child: Text(                                textDirection: TextDirection.rtl,                                "Zayn Hamza / Back-end developer",                                style: Text_Style.getstyle(                                    fontsize: 18,                                    ColorText: Colors.white,                                    fontWeight: FontWeight.w700),                              ),                            ),                          ],                        ),                      ),                    ),                  ),                ],              ),            )          ],        ),      ),      bottomNavigationBar: NavigationBar_defult(),    );  }}