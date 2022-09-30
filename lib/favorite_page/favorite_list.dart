import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/Api_calls.dart';
import '../home/prodects/model.dart';
import 'favorite_cart.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({
    Key? key,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio:MediaQuery.of(context).size.width / 550,
    ),
    itemCount: BackEnd.Prodects3.length,
    itemBuilder: (BuildContext context, index) {
      if(BackEnd.Prodects3[index].isFav == true){
        return FavCart(
          prodects: index,
        );}
      return Container(child: SizedBox.shrink());
      }));
  }
}