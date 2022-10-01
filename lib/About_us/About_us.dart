import 'package:app_popup_menu/app_popup_menu.dart';import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';import '../NavigationBar/NavigationBar_defult.dart';import '../api/cart_models.dart';import '../profile_page/blue_logo.dart';class About_us extends StatelessWidget {  const About_us({Key? key}) : super(key: key);  @override  Widget build(BuildContext context) {    FlutterStatusbarcolor.setStatusBarColor(Colors.white, animate: true);    return Scaffold(      backgroundColor: Colors.white,      body: SafeArea(        child: Padding(          padding: const EdgeInsets.symmetric(horizontal: 5),          child: Column(            mainAxisAlignment: MainAxisAlignment.start,            crossAxisAlignment: CrossAxisAlignment.center,            children: [              Hoomy_logo_blue(onPressed: () {                Navigator.of(context).pop();              }),              //Image.asset("photo/hoomy1.png"),              Column(                mainAxisAlignment: MainAxisAlignment.spaceBetween,                children: [                  Padding(                    padding: const EdgeInsets.all(10.0),                    child: Container(                      margin: EdgeInsets.only(top: 30),                      width: MediaQuery.of(context).size.width-10,                      height: 250,                      decoration: BoxDecoration(                          color: Color(0x8745B9EE),                          borderRadius: BorderRadius.circular(10),                        boxShadow: [                          BoxShadow(                            color: Colors.black.withOpacity(0.2),                            spreadRadius: 4,                            blurRadius: 3,                            offset: Offset(0, 3), // changes x,y position of shadow                          ),                        ],                      ),                      child: Padding(                        padding: const EdgeInsets.all(8.0),                        child: Column(                          children: [                            Image.asset("photo/hoomy2.png",                            width: 150,                              height: 150,                            ),                            Row(                              mainAxisAlignment: MainAxisAlignment.center,                              children: [                                Text(                                    textDirection: TextDirection.rtl,                                    " 07821596404",                                  style: TextStyle(                                    height: 1.5,                                    fontSize: 18,                                    color: Colors.white,                                    fontWeight: FontWeight.w700,                                  ),                                ),                                Icon(Icons.phone,color: Colors.white,),                              ],                            ),                            Row(                              mainAxisAlignment: MainAxisAlignment.center,                              children: [                                Text(                                  textDirection: TextDirection.rtl,                                  " العراق - بغداد ",                                  style: TextStyle(                                    height: 1.5,                                    fontSize: 18,                                    color: Colors.white,                                    fontWeight: FontWeight.w700,                                  ),                                ),                                Icon(Icons.location_on,color: Colors.white,),                              ],                            ),                          ],                        ),                      ),                    ),                  ),                  Padding(                    padding: const EdgeInsets.all(10.0),                    child: Container(                      margin: EdgeInsets.only(top: 40),                      width: MediaQuery.of(context).size.width-10,                      height: 250,                      decoration: BoxDecoration(                        color: Color(0x8745B9EE),                        borderRadius: BorderRadius.circular(10),                        boxShadow: [                          BoxShadow(                            color: Colors.black.withOpacity(0.2),                            spreadRadius: 4,                            blurRadius: 3,                            offset: Offset(0, 3), // changes x,y position of shadow                          ),                        ],                      ),                      child: Padding(                        padding: const EdgeInsets.all(8.0),                        child: Column(                          crossAxisAlignment: CrossAxisAlignment.end,                          children: [                            Text(                              textDirection: TextDirection.rtl,                              "  نحن فريق  تطبيق Hoomy وهذا مشروع تخرجنا من معكسر Unicoding المقدم من شركة Computiq\n ",                              style: TextStyle(                                  height: 1.5,                                  fontSize: 21,                                  color: Colors.white,                                  fontWeight: FontWeight.w700                              ),                            ),                            Align(                              alignment: Alignment.centerLeft,                              child: Text(                                textDirection: TextDirection.rtl,                                " Sura Rafe / Front-end developer",                                style: TextStyle(                                    height: 1.5,                                    fontSize: 20,                                    color: Colors.white,                                    fontWeight: FontWeight.w700                                ),                              ),                            ),                            Align(                              alignment: Alignment.centerLeft,                              child: Text(                                textDirection: TextDirection.rtl,                                " Ibraheem Ahmed / Front-end developer",                                style: TextStyle(                                    height: 1.5,                                    fontSize: 20,                                    color: Colors.white,                                    fontWeight: FontWeight.w700                                ),                              ),                            ),                            Align(                              alignment: Alignment.centerLeft,                              child: Text(                                textDirection: TextDirection.rtl,                                " Zayn Hamza / Back-end developer",                                style: TextStyle(                                    height: 1.5,                                    fontSize: 20,                                    color: Colors.white,                                    fontWeight: FontWeight.w700                                ),                              ),                            ),                          ],                        ),                      ),                    ),                  ),                ],              ),            ],          ),        ),      ),      bottomNavigationBar: NavigationBar_defult(),    );  }}