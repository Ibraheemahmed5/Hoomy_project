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
        width: MediaQuery.of(context).size.width/1.05,
        height: MediaQuery.of(context).size.height/5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
           image:NetworkImage(ApiConstants.Domain+BackEnd.Prodects3[index].banner),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}