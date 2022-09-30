import 'package:flutter/cupertino.dart';
import 'package:hoomy_project1/home/home_slider/slide_item.dart';
import 'package:hoomy_project1/home/prodects/model.dart';
import 'package:hoomy_project1/single_prodect/colors/prodect_colors.dart';

import '../../api/Api_calls.dart';


class SliderList extends StatelessWidget {
  const SliderList({Key? key, required this.prodect}) : super(key: key);
  final int prodect;
  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:BackEnd.Prodects3.length,
        itemBuilder: (BuildContext context, int index) {
          if(BackEnd.Prodects3[index].isFeatured == true){
          return HomeSlideItem(index);
          }
          else return SizedBox(height: 0,);
        },
      );
  }
}
