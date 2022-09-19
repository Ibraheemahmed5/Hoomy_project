import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/prodects/model.dart';
import 'favorite_cart.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({
    Key? key,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return
        GridView.count(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /550,

      children:
          Prodect.Prodects.where((e) => e.isFav.value).map((e) => FavCart(prodects:e)).toList(),
        );
    }
    );
  }
}