import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/home/prodects/model.dart';
import 'package:hoomy_project1/home/search_bar.dart';
import 'package:hoomy_project1/Search_page_/search_page.dart';

import 'package:unicons/unicons.dart';
import '../favorite_page/favorite_page_main.dart';
import '../my_cart_page/cart.dart';
import '../my_cart_page/my_cart_main.dart';
import '../profile_page/profile_main_page.dart';
import 'cart_list.dart';
import 'catigory_buttons_bar.dart';
import 'home_slider/slider.dart';

class HomeMainPage extends StatefulWidget {
  HomeMainPage({Key? key}) : super(key: key);

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  //////////////
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(0),
      bottomLeft: Radius.circular(0),
      topRight: Radius.circular(30),
      topLeft: Radius.circular(30),
    ),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  EdgeInsets padding = const EdgeInsets.all(0);

  int _selectedItemPosition = 0;

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;

  bool showUnselectedLabels = false;

  Color selectedColor = Color(0xff45B9EE);

  Color unselectedColor = Colors.black38;

  Color? containerColor;

  List<Color> containerColors = [
    const Color(0xFFFFFFFF),
  ];

///////////////////////////////
  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController =
        TextEditingController(text: "");
    final RxBool isEmpty1 = true.obs;
    final RxString text = searchController.text.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SearchBar(
                      searchController: searchController,
                      onPressed: () {
                        Get.to(Search_page());
                      },
                      onChanged: (String text1) {
                        text.value = text1;

                        if (text.value == "") {
                          isEmpty1.value = true;
                        } else {
                          isEmpty1.value = false;
                        }
                      },
                    ),
                    if (text.value.isEmpty)
                      Container(
                        color: Colors.white30,
                        height: 55,
                        child: CatigoryButtonsBar(),
                      ),
                    if (text.value.isEmpty)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Container(
                          child: HomeSlider(),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)),
                        ),
                      ),
                  ],
                ),
              ),
              ////
              if (text.value.isEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 100,
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "الشائع",
                          style: GoogleFonts.inter(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),

              if (text.value.isEmpty)
                Flexible(
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0XFFE1F8FF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 5),
                        child: CardsList(),
                      )),
                ),

              if (text.value.isNotEmpty)
                Expanded(
                    child: Container(
                        child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      ((MediaQuery.of(context).size.height) - 250),
                  children: Prodect.Prodects
                      .where((e) => e.name
                          .toLowerCase()
                          .contains(text.value.toLowerCase()))
                      .map((e) => Cart( prodects: e))
                      .toList(),
                ))),

              ////
            ],
          );
        }),
      ),

      bottomNavigationBar: SnakeNavigationBar.color(
        height: 60,
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() {
          _selectedItemPosition = index;
          print(index);
          switch (index) {
            case 0:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeMainPage(),
                  ));
              break;
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(),
                  ));
              break;
            case 2:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyCart(),
                  ));
              break;              break;
            case 3:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile_main_page(),
                  ));
              break;
          }
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.user), label: 'profile')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),

      /////////////لحل هناا////////////////,
    );
  }
}
