import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hoomy_project1/home/prodects/home_cart.dart';
import 'prodects/model.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    Key? key}) : super(key: key);


  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return  Container(
    child: GridView.count(
    crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.width /
          ((MediaQuery.of(context).size.height) - 250),
      children: Prodect.Prodects.map((e) => Cart( prodects: e,)).toList(),
    ));

  }
}



