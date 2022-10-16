import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hoomy_project1/help/Colors.dart';
import 'package:unicons/unicons.dart';

import '../api/Api_calls.dart';
import '../api/api_models.dart';
import '../help/text_style.dart';
import '../home/home_main_page.dart';
import '../my_cart_page/my_cart_main.dart';
import '../profile_page/blue_logo.dart';
import '../profile_page/profile_main_page.dart';
import 'NavigationBar_Container_favorit.dart';
import 'favorite_list.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hoomy_logo_blue(onPressed: () {
                Navigator.of(context).pop();
              }),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'المفضلات',
                  style: Text_Style.getstyle(
                      fontsize: 28,
                      ColorText: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              // Divider(
              //   thickness: 2, // thickness of the line
              //   indent: 20, // empty space to the leading edge of divider.
              //   endIndent: 20, // empty space to the trailing edge of the divider.
              //   color: Colorsapp.mainColor, // The color to use when painting the line.
              //   height: 20, // The divider's height extent.
              // ),

              if (BackEnd.favList.isNotEmpty)
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: FavoriteList(),
                )),
              if (BackEnd.favList.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset("photo/Empty-bro.png"),
                      Text(
                        "لا يوجد منتجات مفضلة ",
                        style: Text_Style.getstyle(
                            fontsize: 25,
                            ColorText: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
    );
  }
}
