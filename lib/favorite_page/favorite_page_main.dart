import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:unicons/unicons.dart';

import '../api/api_models.dart';
import '../home/home_main_page.dart';
import '../my_cart_page/my_cart_main.dart';
import '../profile_page/blue_logo.dart';
import '../profile_page/profile_main_page.dart';
import 'NavigationBar_Container_favorit.dart';
import 'favorite_list.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key,}) : super(key: key);

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
              Text(
                'المفضلات',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: FavoriteList(),
              )),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar_favorite());
  }
}


