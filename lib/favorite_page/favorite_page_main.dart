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
    BackEnd.Get_Fav_List();
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        SafeArea(
          child:
          BackEnd.favList.length == 0?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'المفضلات',
                    style: Text_Style.getstyle(
                        fontsize: 28,
                        ColorText: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Image.asset("photo/Empty-bro.png"),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "لا يوجد منتجات مفضلة ",
                  style: Text_Style.getstyle(
                      fontsize: 25,
                      ColorText: Colors.black,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ):
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'المفضلات',
                  style: Text_Style.getstyle(
                      fontsize: 28,
                      ColorText: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: FavoriteList(),
                  )
              )
            ],
          ),
        ),
    );
  }
}


