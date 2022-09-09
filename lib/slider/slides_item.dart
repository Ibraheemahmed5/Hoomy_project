import 'package:flutter/material.dart';
import 'models/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(slideList[index].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            slideList[index].text,
            style: TextStyle(
              fontSize: 22,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}