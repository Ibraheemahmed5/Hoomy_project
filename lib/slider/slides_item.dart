import 'package:flutter/material.dart';
import 'models/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(slideList[index].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 40,
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