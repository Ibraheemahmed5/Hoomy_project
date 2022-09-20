import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/single_prodect/related_cart.dart';
import '../../favorite_page/favorite_cart.dart';
import '../prodects/home_cart.dart';
import '../prodects/model.dart';

class CatigoriesList extends StatelessWidget {

  CatigoriesList({Key? key, required this.text,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;
  final String text;


  @override
  Widget build(BuildContext context) {
    return
      Obx(() {
        return Expanded(
          child:  GridView.count(
              childAspectRatio: MediaQuery.of(context).size.width /
                  600,
              crossAxisCount: 2,
              children: Prodect.Prodects.where((a) =>
              a.catigory.value == text).map((e) =>
                  FavCart(prodects:e)).toList()
          )
        );
      }
      );
  }

}