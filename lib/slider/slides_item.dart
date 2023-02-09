import 'package:flutter/material.dart';
import '../help/Colors.dart';
import '../help/text_style.dart';
import 'models/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(slideList[index].imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Text(
              slideList[index].text,
              style: Text_Style.getstyle(fontsize: 30, ColorText: Colorsapp.mainColor, fontWeight: FontWeight.w500)
            ),
          ),
        ],
      ),
    );
  }
}