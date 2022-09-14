import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:hoomy_project1/home/search_bar.dart';
import 'package:unicons/unicons.dart';
import '../favorite_page/favorite_page_main.dart';
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
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SearchBar(searchController: searchController),
                  Container(
                    height: 55,
                    child: Expanded(child: CatigoryButtonsBar()),
                  ),
                  Container(
                    color: Colors.white,
                    child: Expanded(child: HomeSlider()),
                  ),
                ],
              ),
            ),
            ////
            Container(
                height: 365,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFFE1F8FF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Expanded(child: CardsList()),
                )),
            ////
          ],
        ),
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
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'cart'),
          BottomNavigationBarItem(icon: Icon(UniconsLine.user), label: 'profile')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),

      /////////////لحل هناا////////////////,
    );
  }
}
