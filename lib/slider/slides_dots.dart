import 'package:flutter/material.dart';

import '../help/Colors.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 50),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 10 : 10,
      width: isActive ? 25 : 10,
      decoration: BoxDecoration(
        color: isActive ? Colorsapp.mainColor : Color.fromRGBO(129, 129, 129, 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}