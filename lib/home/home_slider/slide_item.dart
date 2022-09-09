import 'package:flutter/material.dart';
import '../../slider/models/slider.dart';
import 'model.dart';

class HomeSlideItem extends StatelessWidget {
  final int index;
  HomeSlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        width: 341,
        height: 177,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            image: AssetImage(homeslideList[index].imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}