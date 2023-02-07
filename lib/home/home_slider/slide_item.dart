import 'package:flutter/material.dart';
import 'package:hoomy_project1/api/Api_calls.dart';
import '../../api/api_Url.dart';
import '../../slider/models/slider.dart';

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
           image:NetworkImage(ApiConstants.Domain+BackEnd.Prodects3[index].banner),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}