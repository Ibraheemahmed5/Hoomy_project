import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 10 : 10,
      width: isActive ? 25 : 10,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Color.fromRGBO(129, 129, 129, 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}