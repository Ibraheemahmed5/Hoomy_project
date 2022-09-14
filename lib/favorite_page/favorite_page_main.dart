import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:unicons/unicons.dart';

import '../home/home_main_page.dart';
import '../my_cart_page/my_cart_main.dart';
import '../profile_page/blue_logo.dart';
import '../profile_page/profile_main_page.dart';
import 'favorite_list.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}
final BorderRadius _borderRadius = const BorderRadius.only(
  topLeft: Radius.circular(25),
  topRight: Radius.circular(25),
);
ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(0),
    bottomLeft: Radius.circular(0),
    topRight: Radius.circular(25),
    topLeft: Radius.circular(25),
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
class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hoomy_logo_blue(onPressed: () {  },),
            Text('المفضلات',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: FavoriteList(),
            )),
          ],
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        elevation: 10,
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
        items: const [
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
    );

  }
}
